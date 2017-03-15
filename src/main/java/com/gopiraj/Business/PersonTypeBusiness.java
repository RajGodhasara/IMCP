/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Business;

import com.gopiraj.Model.PersonType;
import com.gopiraj.dispature.MyDispatureServlet;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author GOPIRAJ
 */
public class PersonTypeBusiness {
    SessionFactory sf;
    Session s=null;
        
    public PersonTypeBusiness(){
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
    
    public String insert(PersonType type)
    {
            Session s = sf.openSession();
            Transaction tx = s.beginTransaction();
            try
            {
                if(type!=null)
                {
                    s.save(type);
                }
                tx.commit();
                return "Inserted.";      
            }
            catch(Exception e)
            {
                System.out.println("msg:"+e.getMessage());
                return "Error:"+e.getMessage();
            }
    }
    
    public List<PersonType> search()
    {
        try
        {
             s = sf.openSession(); 
            Transaction t = s.beginTransaction();
            List<PersonType> list;
            list = s.createQuery("from PersonType").list();
            t.commit();
            //s.close();
            return list;
        }
        catch(Exception e)
        {
            e.printStackTrace();
            return null;
        }
    }
}
