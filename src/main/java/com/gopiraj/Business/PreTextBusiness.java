/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Business;

import com.gopiraj.Model.Person;
import com.gopiraj.Model.PreText;
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
public class PreTextBusiness {

    SessionFactory sf;
    Session s = null;
    PreText pretext = new PreText();
    //PreTextBusiness pretextbusiness1 = new PreTextBusiness();

    public PreTextBusiness() {
        try {
            sf = MyDispatureServlet.getSessionFactory();

        } catch (Exception e) {
            System.out.println("Error in Constructor:");
            e.printStackTrace();
        }
    }

    public String insert(PreText pretext) {
        s = sf.openSession();
        Transaction tx = s.beginTransaction();
        try {
            if (pretext != null) {
                s.save(pretext);
            }
            tx.commit();
            return "Inserted.";
        } catch (Exception e) {
            e.printStackTrace();
            return "Error:" + e.getStackTrace();

        }
    }

    public PreText searchById(int id) {
        try {
            s = sf.openSession();
            PreText pre = (PreText) s.get(PreText.class, id);
            return pre;
        } catch (Exception e) {
            return null;
        }
    }

    public List search() {
        try {
            s = sf.openSession();
            Transaction t = s.beginTransaction();
            List list;
            list = s.createQuery("from PreText").list();
            t.commit();

            return list;
        } catch (Exception e) {
            return null;
        }
    }

    public PreText searchByText(String title) {
        try {
            s = sf.openSession();
            Transaction t = s.beginTransaction();
            int id = 0;
            String hql = "select preTextId from PreText PT where PT.title = ?";
            id = (int) s.createQuery(hql).setString(0, title).uniqueResult();
            PreText pretext = searchById(id);
            t.commit();
            s.close();
            return pretext;
        } catch (Exception e) {
            System.out.println("searchByText:" + e.getMessage());
            return null;
        }
    }
    
    public PreText searchByTextMessage(String message) {
        try {
            s = sf.openSession();
            Transaction t = s.beginTransaction();
            int id = 0;
            String hql = "select preTextId from PreText PT where PT.message = ?";
            id = (int) s.createQuery(hql).setString(0, message).uniqueResult();
            PreText pretext = searchById(id);
            t.commit();
            s.close();
            return pretext;
        } catch (Exception e) {
            System.out.println("searchByText:" + e.getMessage());
            return null;
        }
    }

    public List searchTitle() {
        try {
            s = sf.openSession();
            Transaction t = s.beginTransaction();
            List list;
            list = s.createQuery("select title from PreText").list();
            t.commit();

            return list;
        } catch (Exception e) {
            return null;
        }
    }

    public String delete(int id) {
        s = sf.openSession();
        Transaction tx = s.beginTransaction();

        try {
                //I AM NOT ABLE TO DECLARE BUSINESS CLASS OBJ AS WELL CALL THAT OBJ.(WHY?)
            //pretext = pretextbusiness1.searchById(id);
            PreText pretext = (PreText) s.get(PreText.class, id);
            if (pretext != null) {
                s.delete(pretext);
                tx.commit();
                return "Deleted successfully.";
            } else {
                return "No Such Data exist.";
            }
        } catch (Exception e) {
            return "Error:" + e.getStackTrace();
        }

    }

    public String update(PreText pretext) {
        s = sf.openSession();
        Transaction tx = s.beginTransaction();

        try {
            if (pretext != null) {
                s.update(pretext);
            }
            tx.commit();

            return "Updated.";
        } catch (Exception e) {
            return "Error:" + e.getStackTrace();
        }
    }

    public List<PreText> getPreTextObject(String str) {
        try {
            List<PreText> list = new ArrayList<PreText>();
            Session s;
            SessionFactory sf = MyDispatureServlet.getSessionFactory();
            s = sf.openSession();
            String[] parts = str.split(":");
            for (int i = 0; i < parts.length; i++) {
                PreText st = (PreText) s.get(PreText.class, Integer.parseInt(parts[i]));
                list.add(st);
            }
            s.close();
            return list;

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public String deleteMultiple(List<PreText> list) {
        try {
            Session s;
            s = sf.openSession();
            Transaction t = s.beginTransaction();

            for (int i = 0; i < list.size(); i++) {
                s.delete(list.get(i));
            }
            t.commit();
            return "Deleted";
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return null;
        }

    }
}
