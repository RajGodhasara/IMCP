/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Business;

import com.gopiraj.Model.Enquiry;
import com.gopiraj.Model.Person;
import com.gopiraj.Model.PreBrochures;
import com.gopiraj.Model.PreText;
import com.gopiraj.Model.SentMail;
import com.gopiraj.dispature.MyDispatureServlet;
import java.util.List;
import java.util.Scanner;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;
/**
 *
 * @author GOPIRAJ
 */
public class SentMailBusiness {
    SessionFactory sf;
    Session s=null;
    SentMail sentmail = new SentMail();
    Scanner sc = new Scanner(System.in);
    
    public SentMailBusiness()
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
    
    
    public String insert(SentMail sentmail)
    {
             s = sf.openSession();
            Transaction tx = s.beginTransaction();
           
            try
            {
                if(sentmail!=null)
                {
                    s.save(sentmail);
                }
                tx.commit();
                return "Inserted.";      
            }
            catch(Exception e)
            {
                return "Error:"+e.getStackTrace();
            }
    }
    public SentMail searchById(int id)
    {
        try
        {
             s = sf.openSession();        
            sentmail = (SentMail)s.get(SentMail.class, id);
            return sentmail;
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
            list = s.createQuery("from SentMail").list();
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
            sentmail = searchById(id);
             s = sf.openSession();
            Transaction tx = s.beginTransaction();
            
            try
            {
                
                if(sentmail!=null )
                {
                    s.delete(sentmail);
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
    
    public String update(SentMail sentmail)
    {
            //Session s = sf.openSession();
            Transaction tx = s.beginTransaction();
           
            try
            {
                if(sentmail!=null)
                {
                    s.update(sentmail);
                }
                tx.commit();
            
                return "Updated.";      
            }
            catch(Exception e)
            {
                return "Error:"+e.getStackTrace();
            }
    }
    
    public Enquiry getenq(int id)
    {
             s = sf.openSession();            
            Enquiry enq = (Enquiry)s.get(Enquiry.class, id);
            
                   if(enq!=null )
                   {
                       return enq;                
                   }
                   else
                   {
                       return null;
                   }                  
            
    }    
    
    public PreText getpretext(int id)
    {
             s = sf.openSession();            
            PreText text = (PreText)s.get(PreText.class, id);
            
                   if(text!=null )
                   {
                       return text;                
                   }
                   else
                   {
                       return null;
                   }                      
            
    }
    public Person getperid(int id)
    {
             s = sf.openSession();            
            Person person = (Person)s.get(Person.class, id);
            
                   if(person!=null )
                   {
                       return person;                
                   }
                   else
                   {
                       return null;
                   }                      
            
    }
    public PreBrochures getprebro(int id)
    {
             s = sf.openSession();            
            PreBrochures bro = ( PreBrochures)s.get(PreBrochures.class, id);
            
                   if(bro!=null )
                   {
                       return bro;                
                   }
                   else
                   {
                       return null;
                   }                      
            
    }

}
