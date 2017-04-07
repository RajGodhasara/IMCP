/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Business;

import com.gopiraj.Model.MenuMaster;
import com.gopiraj.dispature.MyDispatureServlet;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author GOPIRAJ
 */
public class MenuMasterBusiness {

    SessionFactory sf;

    public MenuMasterBusiness() {
        try {
            sf = MyDispatureServlet.getSessionFactory();

        } catch (Exception e) {
            System.out.println("Error in Constructor:");
            e.printStackTrace();
        }
    }

    public String insert(MenuMaster menu) {
        Session s = sf.openSession();
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

    public MenuMaster getMenu(int menu_id) {
        try {
            Session s = sf.openSession();
            MenuMaster menu = (MenuMaster) s.get(MenuMaster.class, menu_id);
            return menu;
        } catch (Exception e) {
            return null;
        }
    }
}
