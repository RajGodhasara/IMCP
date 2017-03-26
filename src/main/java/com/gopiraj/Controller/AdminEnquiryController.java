/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Controller;

import com.gopiraj.Business.EnquiryBusiness;
import com.gopiraj.Model.Enquiry;
import com.gopiraj.Model.EnquiryContactno;
import com.gopiraj.dispature.MyDispatureServlet;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.servlet.http.HttpServletRequest;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author GOPIRAJ
 */
@Controller
public class AdminEnquiryController {
    @RequestMapping("/admin_add_enquiry")
    public ModelAndView getAdminAddCourse(ModelMap map) {

        ModelAndView model = new ModelAndView("AdminJsp-AddEnquiry", "command", new Enquiry());
        //model.addObject("enquiryContactnos", model)
        return model;
    }
    
    @RequestMapping("/admin_insert_enquiry")
    public ModelAndView getAdminInsertCourse(ModelMap map,@ModelAttribute Enquiry enq,HttpServletRequest req) {
        
        String contactNo1=null;
        String contactNo2=null;
        String contactNo3=null;
        String contactNo4=null;
        String contactNo5=null;
        if(req.getParameter("dynamic2")!=null){
            contactNo1 = req.getParameter("dynamic1");
            System.out.println(req.getParameter("dynamic2"));
        }
        if(req.getParameter("dynamic2")!=null){
            contactNo2 = req.getParameter("dynamic2");
            System.out.println(req.getParameter("dynamic2"));
        }
        if(req.getParameter("dynamic3")!=null){
             contactNo3 = req.getParameter("dynamic3");
            System.out.println(req.getParameter("dynamic3"));
        }
        if(req.getParameter("dynamic4")!=null){
             contactNo4 = req.getParameter("dynamic4");
            System.out.println(req.getParameter("dynamic4"));
        }
        if(req.getParameter("dynamic5")!=null){
             contactNo5 = req.getParameter("dynamic5");
            System.out.println(req.getParameter("dynamic5"));
        }
     
        EnquiryBusiness business = new EnquiryBusiness();
        enq.setGender("Male");
        enq.setCreationTime(new Date());
        
        if(enq!=null){
            System.out.println(business.insert(enq));
        }
        
        if(contactNo1!=null){
            EnquiryContactno cn = new EnquiryContactno();
            cn.setContactNumber(Long.parseLong(contactNo1));
            cn.setEnquiry(enq);
            System.out.println(business.insertContact(cn));
        }
        if(contactNo2!=null){
            EnquiryContactno cn = new EnquiryContactno();
            cn.setContactNumber(Long.parseLong(contactNo2));
            cn.setEnquiry(enq);
            System.out.println(business.insertContact(cn));
        }
        if(contactNo3!=null){
            EnquiryContactno cn = new EnquiryContactno();
            cn.setContactNumber(Long.parseLong(contactNo3));
            cn.setEnquiry(enq);
            System.out.println(business.insertContact(cn));
        }
        if(contactNo4!=null){
            EnquiryContactno cn = new EnquiryContactno();
            cn.setContactNumber(Long.parseLong(contactNo4));
            cn.setEnquiry(enq);
            System.out.println(business.insertContact(cn));
        }
        if(contactNo5!=null){
            EnquiryContactno cn = new EnquiryContactno();
            cn.setContactNumber(Long.parseLong(contactNo5));
            cn.setEnquiry(enq);
            System.out.println(business.insertContact(cn));
        }
        
        ModelAndView model = new ModelAndView("AdminJsp-AddEnquiry", "command", new Enquiry());
        return model;
    }
}
