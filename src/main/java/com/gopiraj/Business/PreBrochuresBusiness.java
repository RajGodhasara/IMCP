/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Business;


import com.gopiraj.Model.OrganizationAdmin;
import com.gopiraj.Model.PreBrochures;
import com.gopiraj.dispature.MyDispatureServlet;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author GOPIRAJ
 */
public class PreBrochuresBusiness {
    
    SessionFactory sf;
    Session s=null;
    PreBrochures prebrochures = new PreBrochures();
      
    public PreBrochuresBusiness(){
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
    
    public String insert(PreBrochures prebrochures,SessionFactory sf1)
    {
            s = sf1.openSession();
            Transaction tx = s.beginTransaction();
           
            try
            {
                if(prebrochures!=null)
                {
                    s.save(prebrochures);
                }
                tx.commit();
                return "Inserted.";      
            }
            catch(Exception e)
            {
                return "Error:"+e.getMessage();
            }
    }
    public PreBrochures searchById(int id)
    {
        try
        {
             s = sf.openSession();        
             prebrochures = (PreBrochures)s.get(PreBrochures.class, id);
            return prebrochures;
        }
        catch(Exception e)
        {
            return null;
        }
    }
    
    public OrganizationAdmin searchByAdmin(int id,SessionFactory sf1)
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
    
    public List search()
    {
        try
        {
             s = sf.openSession(); 
            Transaction t = s.beginTransaction();
            List list;
            list = s.createQuery("from PreBrochures").list();
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
            prebrochures = searchById(id);
             s = sf.openSession();
            Transaction tx = s.beginTransaction();
            
            try
            {
                if(prebrochures!=null )
                {
                    s.delete(prebrochures);
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
    
    public String update(PreBrochures prebrochures)
    {
            //Session s = sf.openSession();
            Transaction tx = s.beginTransaction();
           
            try
            {
                if(prebrochures!=null)
                {
                    s.update(prebrochures);
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
