/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Business;


import com.gopiraj.Model.PreText;
import com.gopiraj.dispature.MyDispatureServlet;
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
    Session s=null;
    PreText pretext = new PreText();
    //PreTextBusiness pretextbusiness1 = new PreTextBusiness();
    
    public PreTextBusiness(){
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
    
    public String insert(PreText pretext,SessionFactory sf1)
    {
            s = sf1.openSession();
            Transaction tx = s.beginTransaction();
            try
            {
                if(pretext!=null)
                {
                    s.save(pretext);
                }
                tx.commit();
                return "Inserted.";      
            }
            catch(Exception e)
            {
                e.printStackTrace();
                return "Error:"+e.getStackTrace();
                
            }
    }
    public PreText searchById(int id)
    {
        try
        {
             s = sf.openSession();        
            PreText pre = (PreText)s.get(PreText.class, id);
            return pre;
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
            list = s.createQuery("from PreText").list();
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
                //I AM NOT ABLE TO DECLARE BUSINESS CLASS OBJ AS WELL CALL THAT OBJ.(WHY?)
                //pretext = pretextbusiness1.searchById(id);
                PreText pretext = (PreText)s.get(PreText.class, id);
                if(pretext!=null )
                {
                    s.delete(pretext);
                    tx.commit();                       
                    return "Deleted successfully.";
                }
                else
                {
                     return "No Such Data exist.";
                }
            }
            catch(Exception e)
            {
                return "Error:"+e.getStackTrace();
            }
            
    }
    
    public String update(PreText pretext)
    {
            //Session s = sf.openSession();
            Transaction tx = s.beginTransaction();
           
            try
            {
                if(pretext!=null)
                {
                    s.update(pretext);
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
