/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Business;

import com.gopiraj.Model.Corporates;
import com.gopiraj.Model.SliderImage;
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
public class SliderImageBusiness {

    SessionFactory sf;
    SliderImage sliderImage = new SliderImage();

    public SliderImageBusiness() {
        try {
            sf = MyDispatureServlet.getSessionFactory();
        } catch (Exception e) {
            System.out.println("Error in Constructor:");
            e.printStackTrace();
        }
    }

    public String insert(SliderImage sliderImage) {
        Session s = sf.openSession();
        Transaction tx = s.beginTransaction();
        try {

            if (sliderImage != null) {
                s.save(sliderImage);
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

    public List<SliderImage> search() {
        try {
            Session s = sf.openSession();
            Transaction t = s.beginTransaction();
            List<SliderImage> list = new ArrayList<>();
            list = s.createQuery("from SliderImage").list();
            t.commit();
            return list;
        } catch (Exception e) {
            return null;
        }
    }
}
