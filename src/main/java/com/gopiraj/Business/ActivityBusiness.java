/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Business;

import com.gopiraj.Model.Activity;
import com.gopiraj.Model.Person;
import com.gopiraj.dispature.MyDispatureServlet;
import java.util.Collections;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author GOPIRAJ
 */
public class ActivityBusiness {

    SessionFactory sf;
    Activity activity = new Activity();

    public ActivityBusiness() {
        try {
            sf = MyDispatureServlet.getSessionFactory();
        } catch (Exception e) {
            System.out.println("Error in ActivityBusiness Constructor:"+e.getMessage());
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
        } catch (HibernateException e) {
            return "Error in insert ActivityBusiness:" + e.getMessage();
        }
    }

    public Activity searchById(int id) {
        try {
            Session s = sf.openSession();
            Activity act = (Activity) s.get(Activity.class, id);
            s.close();
            return act;
        } catch (HibernateException e) {
            System.out.println("Error in searchById ActivityBusiness:"+e.getMessage());
            return null;
            
        }
    }

    public Person searchByPersonId(int id) {
        try {
            Session s = sf.openSession();
            Person person = (Person) s.get(Person.class, id);
            return person;
        } catch (HibernateException e) {
            System.out.println("Error in searchByPersonId ActivityBusiness:"+e.getMessage());
            return null;
        }
    }

    public List search() {
        try {
            Session s = sf.openSession();
            Transaction t = s.beginTransaction();
            List list;
            list = s.createQuery("from Activity").list();
            Collections.reverse(list);
            t.commit();
            return list;
        } catch (HibernateException e) {
            System.out.println("Error in search ActivityBusiness:"+e.getMessage());
            return null;
        }
    }

    public String delete(int id) {
        Session s = sf.openSession();
        Transaction tx = s.beginTransaction();
        try {
            activity = (Activity) s.get(Activity.class, id);
            if (activity != null) {
                s.delete(activity);
                tx.commit();
                s.close();
                return "Deleted Success.";
            } else {
                return "Could not find.";
            }
        } catch (HibernateException e) {
            return "Error in delete ActivityBusiness:" + e.getMessage();
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
        } catch (HibernateException e) {
            System.out.println("Error in update ActivityBusiness:"+e.getMessage());
            return "Error:" + e.getMessage();
        }
    }

}
