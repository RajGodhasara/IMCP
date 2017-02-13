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
    public ModelAndView getAdminInsertCourse(ModelMap map,@ModelAttribute Enquiry enq) {
        
        String answer = "NULL";
        String answer1 = "NULL";
        String no=null;
        EnquiryBusiness business = new EnquiryBusiness();
        EnquiryContactno cn = new EnquiryContactno();
 
        Set<EnquiryContactno> set = new HashSet<EnquiryContactno>();
        
        enq.setCreationTime(new Date());
        
        set = enq.getEnquiryContactnos();
        Iterator iter = set.iterator();
        while (iter.hasNext()) {
            no = iter.next().toString();
        }
        
        cn.setContactNumber(Long.parseLong(no));
        cn.setEnquiry(enq);
        
        if(enq!=null){
            answer = business.insert(enq);
            answer1 = business.insertContact(cn);
            System.out.println(answer);
            System.out.println(answer1);
        }
        
        
        ModelAndView model = new ModelAndView("AdminJsp-AddEnquiry", "command", new Enquiry());
        model.addObject(answer);
        return model;
    }
}
