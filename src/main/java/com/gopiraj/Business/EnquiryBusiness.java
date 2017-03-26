/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Business;

import com.gopiraj.Model.Course;
import com.gopiraj.Model.Enquiry;
import com.gopiraj.Model.EnquiryContactno;
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
public class EnquiryBusiness {
    SessionFactory sf;
    Session s=null;
    
    public EnquiryBusiness()
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
    
    public String insert(Enquiry enq)
    {
            s = sf.openSession();
            Transaction tx = s.beginTransaction();
            
            try
            {
                if(enq!=null)
                {
                    s.save(enq);
                }
                tx.commit();
                s.close();
                return "Inserted.";      
            }
            catch(Exception e)
            {
                return "Error:"+e.getMessage();
            }
    }
    
    public String insertContact(EnquiryContactno enqno)
    {
            s = sf.openSession();
            Transaction tx = s.beginTransaction();
            
            try
            {
                if(enqno!=null)
                {
                    s.save(enqno);
                }
                tx.commit();
                s.close();
                return "Inserted.";      
            }
            catch(Exception e)
            {
                return "Error:"+e.getMessage();
            }
    }
    
    public Enquiry searchById(int id)
    {
        try
        {
            s = sf.openSession();
            Enquiry enq = (Enquiry)s.get(Enquiry.class, id);
            return enq;
        }
        catch(Exception e)
        {
            return null;
        }
    }
    
    public List<String> searchByStatus(String status)
    {
        try
        {
            s = sf.openSession(); 
            Transaction t = s.beginTransaction();
            List<String> list = new ArrayList<String>();
            String hql = "select firstName from Enquiry E where E.status = ?";
            list = (List)s.createQuery(hql).setString(0,status).list();
            return list;
        }
        catch(Exception e)
        {
            System.out.println("searchByStatus:"+e.getMessage());
            return null;
        }
    }
    
    public List<Enquiry> searchObjectByStatus(String status)
    {
        try
        {
            s = sf.openSession(); 
            List<Enquiry> list = new ArrayList<Enquiry>();
            String hql = "from Enquiry E where E.status = ?";
            list = (List)s.createQuery(hql).setString(0,status).list();
            return list;
        }
        catch(Exception e)
        {
            System.out.println("searchByStatus:"+e.getMessage());
            return null;
        }
    }
    
    public Enquiry searchByFirstName(String fn)
    {
        try
        {
            s = sf.openSession(); 
            Transaction t = s.beginTransaction();
            int id=0;
            Enquiry enq = null;
            String hql = "select enqId from Enquiry E where E.firstName = ?";
            id= (int)s.createQuery(hql).setString(0,fn).uniqueResult();
            if(id!=0){
                enq = (Enquiry)s.get(Enquiry.class, id);
            }
            
            s.close();
            return enq;
        }
        catch(Exception e)
        {
            System.out.println("searchByFirstName:"+e.getMessage());
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
            list = s.createQuery("from Enquiry").list();
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
                Enquiry enq = (Enquiry)s.get(Enquiry.class, id);
                if(enq!=null )
                {
                    s.delete(enq);
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
    
    public String update(Enquiry enq)
    {
            Transaction tx = s.beginTransaction(); 
            try
            {
                if(enq!=null)
                {
                    s.update(enq);
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
