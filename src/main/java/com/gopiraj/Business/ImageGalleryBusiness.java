/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Business;

import com.gopiraj.Model.Aboutus;
import com.gopiraj.Model.Gallery;
import com.gopiraj.dispature.MyDispatureServlet;
import java.util.List;
import java.util.Scanner;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author GOPIRAJ
 */
public class ImageGalleryBusiness {

    SessionFactory sf;
    Gallery gallery = new Gallery();

    Scanner sc = new Scanner(System.in);

    public ImageGalleryBusiness() {
        try {
            sf = MyDispatureServlet.getSessionFactory();
        } catch (Exception e) {
            System.out.println("Error in Constructor:");
            e.printStackTrace();
        }
    }

    public String insert(Gallery gallery) {
        Session s = sf.openSession();
        Transaction tx = s.beginTransaction();
        try {

            if (gallery != null) {
                s.save(gallery);
                tx.commit();
                s.close();
                return "Inserted.";
            } else {
                return "Null.";
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
            list = s.createQuery("from Gallery").list();

            t.commit();
            //s.close();
            return list;
        } catch (Exception e) {
            return null;
        }
    }
}
