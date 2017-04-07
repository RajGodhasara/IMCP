/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Business;

import com.gopiraj.Model.MenuMaster;
import com.gopiraj.Model.Person;
import com.gopiraj.Model.SubmenuMaster;
import com.gopiraj.dispature.MyDispatureServlet;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author GOPIRAJ
 */
public class LoginBusiness {

    SessionFactory sf;

    public LoginBusiness() {
        try {

            sf = MyDispatureServlet.getSessionFactory();

        } catch (Exception e) {
            System.out.println("Error in Constructor:");
            e.printStackTrace();
        }
    }

    public Boolean authentication(String email, String pass) {
        try {
            String password = "";
            Session s = sf.openSession();
            String hql = "SELECT personId FROM Person P WHERE P.mailId = ?";
            int id = (int) s.createQuery(hql).setString(0, email).uniqueResult();
            OrganizationAdminBusiness business = new OrganizationAdminBusiness();
            if (business.searchById(id) != null) {

                String hql1 = "SELECT A.password FROM OrganizationAdmin A WHERE A.organizationAdmin = ?";
                try {
                    password = (String) s.createQuery(hql1).setInteger(0, id).uniqueResult();
                } catch (Exception e) {
                    System.out.println(e.getMessage());
                }
            }
            System.out.println(pass + " :" + password);
            String decPass = "";
            Crypt crypt = new Crypt();
            if (password != null) {
                decPass = crypt.decrypt(password);
                System.out.println("DEC ADMIN:" + decPass);
            }
            if (decPass.equals(pass)) {
                return true;
            } else {
                String hql2 = "SELECT E.password FROM Employee E WHERE E.employeeId = ?";
                String password2 = (String) s.createQuery(hql2).setInteger(0, id).uniqueResult();
                System.out.println(pass + " :" + password2);
                String decPass1 = crypt.decrypt(password2);
                System.out.println("DEC EMP:" + decPass1);
                return decPass1.equals(pass);
            }

        } catch (Exception e) {
            System.out.println("Error in Authentication");
            e.printStackTrace();
            return false;
        }
    }

    public Person getPerson(String email) {
        int id = 0;
        Person person = null;
        try {
            Session s = sf.openSession();
            String hql = "SELECT personId FROM Person P WHERE P.mailId = ?";
            id = (int) s.createQuery(hql).setString(0, email).uniqueResult();

            if (id != 0) {
                ActivityBusiness business = new ActivityBusiness();
                person = business.searchByPersonId(id);
            }

            if (person != null) {
                return person;
            } else {
                return null;
            }

        } catch (Exception e) {
            System.out.println("Error in Authentication of loginbusiness of getperson");
            e.printStackTrace();
            return null;
        }
    }

    public ArrayList getMenu(String ptype) {
        try {
            ArrayList<MenuMaster> listMenu = new ArrayList<MenuMaster>();

            MenuMaster menu = null;
            Session s = sf.openSession();
            String hql = "SELECT menuMaster.menuMasterId FROM MenuType m WHERE m.personType=:typep";
            Query q = s.createQuery(hql);
            q.setParameter("typep", ptype);
            ArrayList list = (ArrayList) q.list();
            System.out.println("-------studentttttttttttt-----" + list.size());
            for (int i = 0; i < list.size(); i++) {
                int menuTypeId = (Integer) list.get(i);
                MenuMasterBusiness business = new MenuMasterBusiness();

                menu = business.getMenu(menuTypeId);

                    //subMenuList = businessSubmenu.getSubMenu(menu.getMenuMasterId());
                //menu.setSubMenuTypes(subMenuList);
                System.out.println(menu + "---------");
                //System.out.println("SUBMENU SIZE:"+menu.getSubMenuTypes().size());
                listMenu.add(menu);
            }
            return listMenu;
        } catch (Exception e) {
            System.out.println("Error in fetchin data" + e.getMessage());
            e.printStackTrace();
            return null;
        }
    }

}
