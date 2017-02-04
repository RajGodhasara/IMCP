/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Business;


import com.gopiraj.Model.Feedback;
import com.gopiraj.Model.Person;
import com.gopiraj.dispature.MyDispatureServlet;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author GOPIRAJ
 */
public class FeedbackBusiness {
        SessionFactory sf;
    Feedback feedback = new Feedback();
    
    
    
    public FeedbackBusiness()
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
    
    
    public String insert(Feedback feedback)
    {
            Session s = sf.openSession();
            Transaction tx = s.beginTransaction();
           
            try
            {
                if(feedback!=null)
                {
                    s.save(feedback);
                }
                tx.commit();
                return "Inserted.";      
            }
            catch(Exception e)
            {
                return "Error:"+e.getStackTrace();
            }
    }
    public Feedback searchById(int id)
    {
        try
        {
            Session s = sf.openSession();        
            feedback = (Feedback)s.get(Feedback.class, id);
            return feedback;
        }
        catch(Exception e)
        {
            return null;
        }
    }
    
    public Person searchByPersonId(int id)
    {
        try
        {
            Session s = sf.openSession();        
            Person person = (Person)s.get(Person.class, id);
            return person;
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
            Session s = sf.openSession(); 
            Transaction t = s.beginTransaction();
            List list;
            list = s.createQuery("from Feedback").list();
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
        feedback= searchById(id);
            Session s = sf.openSession();
            Transaction tx = s.beginTransaction();
            
            try
            {
                if(feedback!=null )
                {
                    s.delete(feedback);
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
    
    public String update(Feedback feedback)
    {
            Session s = sf.openSession();
            Transaction tx = s.beginTransaction();
           
            try
            {
                if(feedback!=null)
                {
                    s.update(feedback);
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
