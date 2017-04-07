/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Business;

import com.gopiraj.Model.Corporates;
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
public class CorporatesBusiness {

    SessionFactory sf;
    Corporates corporates = new Corporates();

    public CorporatesBusiness() {
        try {
            sf = MyDispatureServlet.getSessionFactory();
        } catch (Exception e) {
            System.out.println("Error in Constructor:");
            e.printStackTrace();
        }
    }

    public String insert(Corporates corporates) {
        Session s = sf.openSession();
        Transaction tx = s.beginTransaction();
        try {

            if (corporates != null) {
                s.save(corporates);
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

    public List<Corporates> search() {
        try {
            Session s = sf.openSession();
            Transaction t = s.beginTransaction();
            List<Corporates> list = new ArrayList<>();
            list = s.createQuery("from Corporates").list();
            t.commit();
            return list;
        } catch (Exception e) {
            return null;
        }
    }
    
    public Corporates searchById(int id) {
        try {
            Session s = sf.openSession();
            Corporates course = (Corporates) s.get(Corporates.class, id);
            s.close();
            return course;

        } catch (Exception e) {
            return null;
        }
    }
    
    public void deleteMultiple(List<Corporates> list) {
        Session s;
        s = sf.openSession();
        Transaction t = s.beginTransaction();
        for (int i = 0; i < list.size(); i++) {
            s.delete(list.get(i));
        }

        t.commit();
    }

    public List<Corporates> getCorporatesObject(String str) {
        try {
            List<Corporates> listStudent = new ArrayList<Corporates>();
            Session s;
            s = sf.openSession();
            String[] parts = str.split(":");
            for (int i = 0; i < parts.length; i++) {
                Corporates st = (Corporates) s.get(Corporates.class, Integer.parseInt(parts[i]));
                listStudent.add(st);
            }
            s.close();
            return listStudent;

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    
    public String update(Corporates course) {
        Session s = sf.openSession();
        Transaction tx = s.beginTransaction();

        try {
            if (course != null) {
                s.update(course);
            }
            tx.commit();
            s.close();
            return "Updated.";
        } catch (Exception e) {
            return "Error:" + e.getMessage();
        }

    }
}
