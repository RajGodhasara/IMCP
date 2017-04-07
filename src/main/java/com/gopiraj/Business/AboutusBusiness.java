/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Business;

import com.gopiraj.Model.Aboutus;
import com.gopiraj.Model.Activity;
import com.gopiraj.dispature.MyDispatureServlet;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author GOPIRAJ
 */
public class AboutusBusiness {

    SessionFactory sf;
    Aboutus aboutus = new Aboutus();

    Scanner sc = new Scanner(System.in);

    public AboutusBusiness() {
        try {
            sf = MyDispatureServlet.getSessionFactory();
        } catch (Exception e) {
            System.out.println("Error in Constructor:");
            e.printStackTrace();
        }
    }

    public String insert(Aboutus aboutus) {
        Session s = sf.openSession();
        Transaction tx = s.beginTransaction();
        try {
            if (search().isEmpty()) {
                if (aboutus != null) {
                    s.save(aboutus);
                    tx.commit();
                    s.close();
                    return "Inserted.";
                } else{
                    return "null";
                }
            }
            else {
                    s.merge(aboutus);
                    tx.commit();
                    s.close();
                    return "Updated.";
                }

        } catch (Exception e) {
            return "Error:" + e.getStackTrace();
        }
    }

    public List search() {
        try {
            Session s = sf.openSession();
            Transaction t = s.beginTransaction();
            List list;
            //ResultSet rs;
            list = s.createQuery("from Aboutus").list();

            t.commit();
            s.close();
            return list;
        } catch (Exception e) {
            return null;
        }
    }
}
