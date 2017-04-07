/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Business;

import com.gopiraj.Model.Activity;
import com.gopiraj.Model.Person;
import com.gopiraj.dispature.MyDispatureServlet;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author GOPIRAJ
 */
public class ActivityBusiness {

    SessionFactory sf;
    Activity activity = new Activity();

    Scanner sc = new Scanner(System.in);

    public ActivityBusiness() {
        try {
            sf = MyDispatureServlet.getSessionFactory();
        } catch (Exception e) {
            System.out.println("Error in Constructor:");
            e.printStackTrace();
        }
    }

    public String insert(Activity activity) {
        Session s = sf.openSession();
        Transaction tx = s.beginTransaction();

        try {
            if (activity != null) {
                s.save(activity);
            }
            tx.commit();
            s.close();
            return "Inserted.";
        } catch (Exception e) {
            return "Error:" + e.getStackTrace();
        }
    }

    public Activity searchById(int id) {
        try {
            Session s = sf.openSession();
            Activity act = (Activity) s.get(Activity.class, id);
            s.close();
            return act;
        } catch (Exception e) {
            return null;
        }
    }

    public Person searchByPersonId(int id) {
        try {
            Session s = sf.openSession();
            Person person = (Person) s.get(Person.class, id);

            return person;
        } catch (Exception e) {
            return null;
        }
    }

    public List search() {
        try {
            Session s = sf.openSession();
            Transaction t = s.beginTransaction();
            List list;
            //ResultSet rs;
            list = s.createQuery("from Activity").list();
            System.out.println("Reversing list");
            Collections.reverse(list);
            t.commit();
            //s.close();
            return list;
        } catch (Exception e) {
            return null;
        }
    }

    public String delete(int id) {
        Session s = sf.openSession();
        Transaction tx = s.beginTransaction();

        try {
            //pretext = pretextbusiness1.searchById(id);
            Activity activity = (Activity) s.get(Activity.class, id);
            if (activity != null) {
                s.delete(activity);
                tx.commit();
                s.close();
                return "Deleted Success.";
            } else {
                return "Could not find.";
            }
        } catch (Exception e) {
            return "Error:" + e.getStackTrace();
        }

    }

    public String update(Activity activity) {

        Session s = sf.openSession();
        Transaction tx = s.beginTransaction();

        try {
            if (activity != null) {
                s.update(activity);
            }
            tx.commit();
            s.close();
            return "Updated.";
        } catch (Exception e) {
            return "Error:" + e.getMessage();
        }
    }

}
