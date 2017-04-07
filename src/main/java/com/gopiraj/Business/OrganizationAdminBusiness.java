/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Business;

import com.gopiraj.Model.OrganizationAdmin;
import com.gopiraj.Model.PersonContactno;
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
public class OrganizationAdminBusiness {

    SessionFactory sf;

    OrganizationAdmin admin = new OrganizationAdmin();
    Scanner sc = new Scanner(System.in);
    Session s = null;

    public OrganizationAdminBusiness() {
        try {
            sf = MyDispatureServlet.getSessionFactory();

        } catch (Exception e) {
            System.out.println("Error in Constructor:");
            e.printStackTrace();
        }
    }

    public String insert(OrganizationAdmin admin) {
        Session s = sf.openSession();
        Transaction tx = s.beginTransaction();
        try {
            if (admin != null) {
                s.save(admin);
            }
            tx.commit();
            return "Inserted.";
        } catch (Exception e) {
            System.out.println("msg:" + e.getMessage());
            return "Error:" + e.getMessage();
        }
    }

    public void insertContactno(PersonContactno pc) {
        s = sf.openSession();
        Transaction tx = s.beginTransaction();
        s.save(pc);
        tx.commit();
        System.out.println("Person Contactno Data inserted.");
    }

    public OrganizationAdmin searchById(int id) {
        try {
            s = sf.openSession();
            admin = (OrganizationAdmin) s.get(OrganizationAdmin.class, id);
            return admin;
        } catch (Exception e) {
            return null;
        }
    }

    public List search() {
        try {
            s = sf.openSession();
            Transaction t = s.beginTransaction();
            List list;
            list = s.createQuery("from OrganizationAdmin").list();
            t.commit();
            //s.close();
            return list;
        } catch (Exception e) {
            return null;
        }
    }

    public List getContactno(int id) {
        try {
            System.out.println("ID:" + id);
            s = sf.openSession();
            List list;
            // list = s.createQuery("from PersonContactno pc WHERE pc.person_id =: id1").setParameter("id1",id).list();
            list = s.createQuery("from PersonContactno").list();

            s.close();
            return list;
        } catch (Exception e) {
            return null;
        }
    }

    public String delete(int id) {
        admin = searchById(id);
        s = sf.openSession();
        Transaction tx = s.beginTransaction();

        try {
            if (admin != null) {
                s.delete(admin);
                tx.commit();
                return "Deleted Success.";
            } else {
                return "Could not find.";
            }
        } catch (Exception e) {
            return "Error:" + e.getStackTrace();
        }

    }

    public String update(OrganizationAdmin admin) {
        //Session s = sf.openSession();
        Transaction tx = s.beginTransaction();

        try {
            if (admin != null) {
                s.update(admin.getPerson());
                s.update(admin);
            }
            tx.commit();

            return "Updated.";
        } catch (Exception e) {
            return "Error:" + e.getStackTrace();
        }
    }
}
