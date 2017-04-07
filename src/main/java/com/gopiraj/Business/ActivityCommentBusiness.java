/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Business;

import com.gopiraj.Model.ActivityComment;
import com.gopiraj.dispature.MyDispatureServlet;
import java.util.Collections;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author GOPIRAJ
 */
public class ActivityCommentBusiness {

    SessionFactory sf;

    public ActivityCommentBusiness() {
        try {
            sf = MyDispatureServlet.getSessionFactory();
        } catch (Exception e) {
            System.out.println("Error in Constructor:");
            e.printStackTrace();
        }
    }

    public String insert(ActivityComment comment) {
        Session s = sf.openSession();
        Transaction tx = s.beginTransaction();

        try {
            if (comment != null) {
                s.save(comment);
            }
            tx.commit();
            s.close();
            return "Inserted.";
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
            list = s.createQuery("from ActivityComment").list();

            t.commit();
//            s.close();
            return list;
        } catch (Exception e) {
            return null;
        }
    }
}
