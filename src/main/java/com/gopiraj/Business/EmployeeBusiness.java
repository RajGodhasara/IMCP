/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Business;

import com.gopiraj.Model.Employee;
import com.gopiraj.Model.PersonContactno;
import com.gopiraj.Model.PersonType;
import com.gopiraj.dispature.MyDispatureServlet;
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
public class EmployeeBusiness {

    SessionFactory sf;
    Employee employee = new Employee();

    Scanner sc = new Scanner(System.in);
    Session s = null;

    public EmployeeBusiness() {
        try {
            sf = MyDispatureServlet.getSessionFactory();

        } catch (Exception e) {
            System.out.println("Error in Constructor:");
            e.printStackTrace();
        }
    }

    public String insert(Employee employee) {
        s = sf.openSession();
        Transaction tx = s.beginTransaction();

        try {
            if (employee != null) {
                s.save(employee);
            }
            tx.commit();
            s.close();
            return "Inserted.";
        } catch (Exception e) {
            return "Error:" + e.getMessage();
        }
    }

    public String insertContactno(PersonContactno pc) {
        try {
            s = sf.openSession();
            Transaction tx = s.beginTransaction();
            s.save(pc);
            tx.commit();
            s.close();
            System.out.println("Person Contactno Data inserted.");
            return "Inserted.";
        } catch (Exception e) {
            return "Error:" + e.getMessage();
        }

    }

    public Employee searchById(int id) {
        try {
            s = sf.openSession();
            Employee emp = (Employee) s.get(Employee.class, id);
            s.close();
            return emp;
        } catch (Exception e) {
            return null;
        }
    }

    public List search() {
        try {
            s = sf.openSession();
            Transaction t = s.beginTransaction();
            List list;
            list = s.createQuery("from Employee").list();
            t.commit();
//            s.close();
            return list;
        } catch (Exception e) {
            return null;
        }
    }
    
    public int searchbyEmail(String email) {
        try {
            s = sf.openSession();
            Transaction t = s.beginTransaction();
            
            String hql = "SELECT personId FROM Person P WHERE P.mailId = ?";
            int id = (int) s.createQuery(hql).setString(0, email).uniqueResult();
            t.commit();
            s.close();
            return id;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return 0;
        }
    }

    public List<PersonType> searchbyPersonType() {
        try {
            s = sf.openSession();
            Transaction t = s.beginTransaction();
            List<PersonType> list;
            list = s.createQuery("from PersonType").list();
            t.commit();
            s.close();
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
        employee = searchById(id);
        s = sf.openSession();
        Transaction tx = s.beginTransaction();

        try {
            if (employee != null) {
                s.delete(employee);
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

    public String update(Employee employee) {
        s = sf.openSession();
        Transaction tx = s.beginTransaction();

        try {
            if (employee != null) {
                s.merge(employee);
                s.merge(employee.getPerson());
            }
            tx.commit();
            s.close();
            return "Updated.";
        } catch (Exception e) {
            return "Error:" + e.getMessage();
        }
    }
}
