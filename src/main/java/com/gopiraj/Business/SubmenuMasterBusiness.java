/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Business;

import com.gopiraj.Model.MenuMaster;
import com.gopiraj.Model.SubmenuMaster;
import com.gopiraj.dispature.MyDispatureServlet;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.classic.Session;

/**
 *
 * @author GOPIRAJ
 */
public class SubmenuMasterBusiness {

    SessionFactory sf;

    public SubmenuMasterBusiness() {
        try {
            sf = MyDispatureServlet.getSessionFactory();

        } catch (Exception e) {
            System.out.println("Error in Constructor:");
            e.printStackTrace();
        }
    }

    public String insert(SubmenuMaster menu) {
        org.hibernate.Session s = sf.openSession();
        Transaction tx = s.beginTransaction();

        try {
            if (menu != null) {
                s.save(menu);
            }
            tx.commit();
            s.close();
            //  s.flush();
            return "Inserted.";
        } catch (Exception e) {
            return "Error:" + e.getMessage();
        }
    }

    public List<SubmenuMaster> getSubMenu(int menu_id) {
        try {
            /**
             * Problem in HQL query.
             */
            List<SubmenuMaster> list = null;
            System.out.println("test1");
            Session s = sf.openSession();
            System.out.println("test2");
            String hql = "FROM SubmenuMaster m WHERE m.menuMaster.menuMasterId=:menu_id";
            System.out.println("test3");
            Query q = s.createQuery(hql);
            System.out.println("test4");
            q.setParameter("menu_id", menu_id);
            System.out.println("test5");
            list = (ArrayList) q.list();
            //ArrayList list2=(ArrayList)q.list();
            System.out.println("test6");
            System.out.println("SubMenu Size:" + list.size());
            System.out.println("test7");
            return list;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<MenuMaster> getSub(List<MenuMaster> list) {
        try {

            //MenuMaster menu = new MenuMaster();
            List<SubmenuMaster> subMenuList = null;
            List<MenuMaster> menuList = new ArrayList<MenuMaster>();
            SubmenuMasterBusiness businessSubmenu = new SubmenuMasterBusiness();
            for (int i = 0; i < list.size(); i++) {
                MenuMaster menu = list.get(i);
                System.out.println("ARG ID:" + menu.getMenuMasterId());
                subMenuList = businessSubmenu.getSubMenu(menu.getMenuMasterId());
                Set<SubmenuMaster> set = new HashSet<SubmenuMaster>(subMenuList);
                menu.setSubMenuTypes(set);
                menuList.add(menu);
            }
            return menuList;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }

}
