/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Business;


import com.gopiraj.Model.Course;
import com.gopiraj.Model.OrganizationAdmin;
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
public class CourseBusiness {
    SessionFactory sf;
    Course course = new Course();
    Session s=null;
    Scanner sc = new Scanner(System.in);
    
    public CourseBusiness()
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
     
    
    public String insert(Course course,SessionFactory sf1)
    {
            s = sf1.openSession();
            Transaction tx = s.beginTransaction();
            
            try
            {
                if(course!=null)
                {
                    s.save(course);
                }
                tx.commit();
                s.close();
              //  s.flush();
                return "Inserted.";      
            }
            catch(Exception e)
            {
                return "Error:"+e.getMessage();
            }
    }
    public Course searchById(int id)
    {
        try
        {
            s = sf.openSession();
            Course course = (Course)s.get(Course.class, id);
            
            return course;
           
        }
        catch(Exception e)
        {
            return null;
        }
    }
    
    public OrganizationAdmin searchByAdminId(int id,SessionFactory sf1)
    {
        try
        {
            s = sf1.openSession();
            OrganizationAdmin admin = (OrganizationAdmin)s.get(OrganizationAdmin.class, id);
            
            return admin;
        }
        catch(Exception e)
        {
            return null;
        }
    }
    
    public List search(SessionFactory sf1)
    {
        try
        {
            s = sf1.openSession();
            Transaction t = s.beginTransaction();
            List list;
            list = s.createQuery("from Course").list();
            t.commit();
          
            return list;
        }
        catch(Exception e)
        {
            return null;
        }
    }
    
    public String delete(int id)
    {
            s = sf.openSession();
            Transaction tx = s.beginTransaction();
            
            try
            {
                //pretext = pretextbusiness1.searchById(id);
                Course course = (Course)s.get(Course.class, id);
                if(course!=null )
                {
                    s.delete(course);
                    tx.commit();                       
                    s.close();
                    
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
    
    public String update(Course course)
    {
           // Session ss = sf.openSession();
            Transaction tx = s.beginTransaction();
           
            try
            {
                if(course!=null)
                {
                    s.update(course);
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
