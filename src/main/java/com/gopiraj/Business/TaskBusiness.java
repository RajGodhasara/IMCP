/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Business;


import com.gopiraj.Model.Employee;
import com.gopiraj.Model.OrganizationAdmin;
import com.gopiraj.Model.Task;
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
public class TaskBusiness {
    SessionFactory sf;
    Task task = new Task();
    
    Session s=null;
    Scanner sc = new Scanner(System.in);
    
    public TaskBusiness()
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
    
    
    public String insert(Task task)
    {
            s = sf.openSession();
            Transaction tx = s.beginTransaction();
           
            try
            {
                if(task!=null)
                {
                    s.save(task);
                }
                tx.commit();
                return "Inserted.";      
            }
            catch(Exception e)
            {
                return "Error:"+e.getStackTrace();
            }
    }
    public Task searchById(int id)
    {
        try
        {
            s = sf.openSession();        
            task = (Task)s.get(Task.class, id);
            return task;
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
            list = s.createQuery("from Task").list();
            t.commit();
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
            task = searchById(id);
            s = sf.openSession();
            Transaction tx = s.beginTransaction();
            
            try
            {
                if(task!=null )
                {
                    s.delete(task);
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
    
    public String update(Task task)
    {
            //Session ss = sf.openSession();
            Transaction tx = s.beginTransaction();
           
            try
            {
                if(task!=null)
                {
                    s.update(task);
                }
                tx.commit();
            
                return "Updated.";      
            }
            catch(Exception e)
            {
                return "Error:"+e.getStackTrace();
            }
    }
    
    public OrganizationAdmin searchByAdmin(int id)
    {
        try
        {
            s = sf.openSession();        
            OrganizationAdmin admin = (OrganizationAdmin)s.get(OrganizationAdmin.class, id);
            return admin;
        }
        catch(Exception e)
        {
            return null;
        }
    }
    
    public Employee searchByEmployee(int id)
    {
        try
        {
            s = sf.openSession();        
            Employee emp = (Employee)s.get(Employee.class, id);
            return emp;
        }
        catch(Exception e)
        {
            return null;
        }
    }
}
