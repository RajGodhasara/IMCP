/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Business;

import com.gopiraj.Model.BasicDetails;
import com.gopiraj.Model.SocialLinks;
import com.gopiraj.dispature.MyDispatureServlet;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author GOPIRAJ
 */
public class BasicDetailsBusiness {

    SessionFactory sf;
    SocialLinks social = new SocialLinks();

    public BasicDetailsBusiness() {
        try {
            sf = MyDispatureServlet.getSessionFactory();
        } catch (Exception e) {
            System.out.println("Error in Constructor:");
            e.printStackTrace();
        }
    }

    public String insert(BasicDetails details) {
        Session s = sf.openSession();
        Transaction tx = s.beginTransaction();
        try {
            if (search().isEmpty()) {
                if (details != null) {
                    s.save(details);
                    tx.commit();
                    s.close();
                    return "Inserted.";
                } else {
                    return "Null.";
                }
            } else {
                if (details != null) {
                    s.merge(details);
                    tx.commit();
                    s.close();
                    return "Updated.";
                } else {
                    return "Null.";
                }
            }

        } catch (Exception e) {
            return "Error:" + e.getStackTrace();
        }
    }

    public List<BasicDetails> search() {
        try {
            Session s = sf.openSession();
            Transaction t = s.beginTransaction();
            List<BasicDetails> list = new ArrayList<>();
            list = s.createQuery("from BasicDetails").list();
            t.commit();
            return list;
        } catch (Exception e) {
            return null;
        }
    }
}
