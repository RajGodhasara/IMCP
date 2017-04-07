/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Business;

import com.gopiraj.Model.Enquiry;
import com.gopiraj.Model.Person;
import com.gopiraj.Model.PreText;
import com.gopiraj.Model.SentSms;
import com.gopiraj.dispature.MyDispatureServlet;
import java.util.ArrayList;
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
public class SentSMSBusiness {

    SessionFactory sf;
    SentSms sentsms = new SentSms();
    Session s = null;
    Scanner sc = new Scanner(System.in);

    public SentSMSBusiness() {
        try {
            sf = MyDispatureServlet.getSessionFactory();

        } catch (Exception e) {
            System.out.println("Error in Constructor:");
            e.printStackTrace();
        }
    }

    public String insert(SentSms sentsms) {
        s = sf.openSession();
        Transaction tx = s.beginTransaction();

        try {
            if (sentsms != null) {
                s.save(sentsms);
            }
            tx.commit();
            return "Inserted.";
        } catch (Exception e) {
            return "Error:" + e.getMessage();
        }
    }

    public SentSms searchById(int id) {
        try {
            s = sf.openSession();
            SentSms sms = (SentSms) s.get(SentSms.class, id);
            return sms;
        } catch (Exception e) {
            return null;
        }
    }

    public List search() {
        try {
            s = sf.openSession();
            Transaction t = s.beginTransaction();
            List list;
            list = s.createQuery("from SentSms").list();
            t.commit();
            //s.close();
            return list;
        } catch (Exception e) {
            return null;
        }
    }

    public String delete(int id) {
        sentsms = searchById(id);
        s = sf.openSession();
        Transaction tx = s.beginTransaction();

        try {

            if (sentsms != null) {
                s.delete(sentsms);
                tx.commit();
                return "Deleted Success.";
            } else {
                return "Could not find.";
            }
        } catch (Exception e) {
            return "Error:" + e.getStackTrace();
        }

    }

    public String update(SentSms sentsms) {
        //Session s = sf.openSession();
        Transaction tx = s.beginTransaction();

        try {
            if (sentsms != null) {
                s.update(sentsms);
            }
            tx.commit();

            return "Updated.";
        } catch (Exception e) {
            return "Error:" + e.getStackTrace();
        }
    }

    public Enquiry getenq(int id) {
        s = sf.openSession();
        Enquiry enq = (Enquiry) s.get(Enquiry.class, id);

        if (enq != null) {
            return enq;
        } else {
            return null;
        }

    }

    public PreText getpretext(int id) {
        s = sf.openSession();
        PreText text = (PreText) s.get(PreText.class, id);

        if (text != null) {
            return text;
        } else {
            return null;
        }

    }

    public Person getperid(int id) {
        s = sf.openSession();
        Person person = (Person) s.get(Person.class, id);

        if (person != null) {
            return person;
        } else {
            return null;
        }

    }
    
    public void deleteMultiple(List<SentSms> list) {
        Session s;
        s = sf.openSession();
        Transaction t = s.beginTransaction();
        for (int i = 0; i < list.size(); i++) {
            s.delete(list.get(i));
        }

        t.commit();
    }

    public List<SentSms> getSendMailObject(String str) {
        try {
            List<SentSms> listStudent = new ArrayList<SentSms>();
            Session s;
            SessionFactory sf = MyDispatureServlet.getSessionFactory();
            s = sf.openSession();
            String[] parts = str.split(":");
            for (int i = 0; i < parts.length; i++) {
                SentSms st = (SentSms) s.get(SentSms.class, Integer.parseInt(parts[i]));
                listStudent.add(st);
            }
            s.close();
            return listStudent;

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

}
