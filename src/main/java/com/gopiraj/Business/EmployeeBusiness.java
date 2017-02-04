/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Business;


import com.gopiraj.Model.Employee;
import com.gopiraj.Model.PersonContactno;
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
    Session s=null;
    public EmployeeBusiness()
    {
        try
        {
            sf = MyDispatureServlet.getSessionFactory();
            
        }
        catch(Exception e)
        {
           System.out.println("Error in Constructor:");
           e.printStackTrace();
        }
    }  
    
    
    public String insert(Employee employee)
    {
             s = sf.openSession();
            Transaction tx = s.beginTransaction();
           
            try
            {
                if(employee!=null)
                {
                    s.save(employee);
                }
                tx.commit();
                return "Inserted.";      
            }
            catch(Exception e)
            {
                return "Error:"+e.getStackTrace();
            }
    }
    
    public void insertContactno(PersonContactno pc)
    {
        
             s = sf.openSession();
            Transaction tx = s.beginTransaction();
            s.save(pc);                 
            tx.commit();
            System.out.println("Person Contactno Data inserted.");
    }
    
    
    
    public Employee searchById(int id)
    {
        try
        {
             s = sf.openSession();        
            Employee emp= (Employee)s.get(Employee.class, id);
            return emp;
        }
        catch(Exception e)
        {
            return null;
        }
    }
    
    
    public List search()
    {
        try
        {
             s = sf.openSession(); 
            Transaction t = s.beginTransaction();
            List list;
            list = s.createQuery("from Employee").list();
            t.commit();
            //s.close();
            return list;
        }
        catch(Exception e)
        {
            return null;
        }
    }
    
    public List getContactno(int id)
    {
        try
        {
            System.out.println("ID:"+id);
             s = sf.openSession();        
            List list;
           // list = s.createQuery("from PersonContactno pc WHERE pc.person_id =: id1").setParameter("id1",id).list();
            list = s.createQuery("from PersonContactno").list();
            
            s.close();
            return list;
        }
        catch(Exception e)
        {
            return null;
        }
    }
    
    public String delete(int id)
    {
            employee = searchById(id);
             s = sf.openSession();
            Transaction tx = s.beginTransaction();
            
            try
            {
                if(employee!=null )
                {
                    s.delete(employee);
                    tx.commit();                       
                    return "Deleted Success.";
                }
                else
                {
                     return "Could not find.";
                }
            }
            catch(Exception e)
            {
                return "Error:"+e.getStackTrace();
            }
            
    }
    
    public String update(Employee employee)
    {
            //Session s = sf.openSession();
            Transaction tx = s.beginTransaction();
           
            try
            {
                if(employee!=null)
                {
                    s.update(employee.getPerson());
                    s.update(employee);
                }
                tx.commit();
            
                return "Updated.";      
            }
            catch(Exception e)
            {
                return "Error:"+e.getStackTrace();
            }
    }
}