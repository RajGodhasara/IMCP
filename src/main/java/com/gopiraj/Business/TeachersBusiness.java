/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Business;

import com.gopiraj.Model.Teachers;
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
public class TeachersBusiness {

    SessionFactory sf;
    Teachers teacher = new Teachers();

    public TeachersBusiness() {
        try {
            sf = MyDispatureServlet.getSessionFactory();
        } catch (Exception e) {
            System.out.println("Error in Constructor:");
            e.printStackTrace();
        }
    }

    public String insert(Teachers teacher) {
        Session s = sf.openSession();
        Transaction tx = s.beginTransaction();
        try {

            if (teacher != null) {
                s.save(teacher);
                tx.commit();
                s.close();
                return "Inserted.";
            } else {
                System.out.println(teacher.getName());
                return "Null.";
            }
        } catch (Exception e) {
            return "Error:" + e.getMessage();
        }
    }

    public List<Teachers> search() {
        try {
            Session s = sf.openSession();
            Transaction t = s.beginTransaction();
            List<Teachers> list = new ArrayList<>();
            list = s.createQuery("from Teachers").list();
            t.commit();
            return list;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    
    public void deleteMultiple(List<Teachers> list) {
        Session s;
        s = sf.openSession();
        Transaction t = s.beginTransaction();
        for (int i = 0; i < list.size(); i++) {
            s.delete(list.get(i));
        }

        t.commit();
    }

    public List<Teachers> getTeachersObject(String str) {
        try {
            List<Teachers> listStudent = new ArrayList<Teachers>();
            Session s;
            s = sf.openSession();
            String[] parts = str.split(":");
            for (int i = 0; i < parts.length; i++) {
                Teachers st = (Teachers) s.get(Teachers.class, Integer.parseInt(parts[i]));
                listStudent.add(st);
            }
            s.close();
            return listStudent;

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
   
    
    public String update(Teachers teachers) {
        Session s = sf.openSession();
        Transaction tx = s.beginTransaction();

        try {
            if (teachers != null) {
                s.merge(teachers);
            }
            tx.commit();
            s.close();
            return "Updated.";
        } catch (Exception e) {
            return "Error:" + e.getMessage();
        }
    }

}
