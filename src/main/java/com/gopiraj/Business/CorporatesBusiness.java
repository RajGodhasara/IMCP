/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Business;

import com.gopiraj.Model.Corporates;
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
public class CorporatesBusiness {
    SessionFactory sf;
    Corporates corporates = new Corporates();
    public CorporatesBusiness()
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
    
    public String insert(Corporates corporates)
    {
            Session s = sf.openSession();
            Transaction tx = s.beginTransaction();
            try
            {
                if(search().isEmpty()){
                    if(corporates!=null)
                    {
                        s.save(corporates);
                        tx.commit();
                        s.close();
                        return "Inserted.";      
                    }else{
                        return "Null.";      
                    }
                }
                else{
                    return "Data Exist.";
                }
                
            }
            catch(Exception e)
            {
                return "Error:"+e.getStackTrace();
            }
    }
    
    public List<Corporates> search()
    {
        try
        {
            Session s = sf.openSession(); 
            Transaction t = s.beginTransaction();
            List<Corporates> list = new ArrayList<>();
            list = s.createQuery("from Corporates").list();
            t.commit();
            return list;
        }
        catch(Exception e)
        {
            return null;
        }
    }
}
