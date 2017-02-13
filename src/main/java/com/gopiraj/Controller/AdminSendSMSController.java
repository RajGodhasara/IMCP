/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Controller;

import com.gopiraj.Business.EnquiryBusiness;
import com.gopiraj.Business.PreTextBusiness;
import com.gopiraj.Business.SentSMSBusiness;
import com.gopiraj.Model.Enquiry;
import com.gopiraj.Model.Person;
import com.gopiraj.Model.PreText;
import com.gopiraj.Model.SentSms;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author GOPIRAJ
 */
@Controller
public class AdminSendSMSController {
    @RequestMapping("/admin_send_sms")
    public String getAdminSendSMS(ModelMap map,HttpServletRequest req)
    {
        try{
            
            //ModelAndView model = new ModelAndView("AdminJsp-SendSMS","command",new SentSms());
            PreTextBusiness textBusiness = new PreTextBusiness();
            List<PreText> list = new ArrayList<PreText>();
            list = textBusiness.searchTitle();
            if(list!=null){
                System.out.println("adding list");
                map.addAttribute("list",list);
            }
           
            Enquiry Enquiry = new Enquiry();
            PreText PreText = new PreText();
            map.addAttribute("PreText",PreText);
            map.addAttribute("Enquiry",Enquiry);
            return "AdminJsp-SendSMS";
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
        
    }
    
    @RequestMapping(value = "/admin_send_sms_insert")
    @ResponseBody
    public ModelAndView getAdminSendSMSInsert(ModelMap map,HttpServletRequest req)
    {
        String enq = null;
        String text = null;
        //SessionFactory sf = MyDispatureServlet.getSessionFactory();
        SentSMSBusiness business = new SentSMSBusiness();
        PreTextBusiness businessText = new PreTextBusiness();
        EnquiryBusiness businessEnq = new EnquiryBusiness();
        PreText preText = new PreText();
        SentSms sms = new SentSms();
        Person person=new Person();
        enq = req.getParameter("Enquiry");
        text = req.getParameter("PreText");
        
        preText = businessText.searchByText(text);
        
        HttpSession session = req.getSession(false);
        person = (Person)session.getAttribute("person");
        if(person!=null){
            sms.setPerson(person);
            System.out.println("setting admin");
        }
        
        if(preText!=null){
            System.out.println("setting pretext");
            sms.setPreText(preText);
        }
        if(enq!=null){
            Enquiry enquiry = businessEnq.searchByFirstName(enq);
            System.out.println("setting Enquiry");
            sms.setEnquiry(enquiry);
        }
       
        sms.setCreationTime(new Date());
        
        String answer = business.insert(sms);
        System.out.println(answer);
        
        ModelAndView model = new ModelAndView("AdminJsp-SendSMS", "command", new SentSms());
        model.addObject("answer",answer);
        return model;
       
    }
    
    @RequestMapping(value = "/admin_search_enquiry_status", method = RequestMethod.GET)
    public @ResponseBody
        List<String> getEnquiryStatus(HttpServletRequest req) {
        System.out.println("TRUE:"+req.getParameter("Status"));
        List<String> list = null;
       
        if(req.getParameter("Status")!=null){
            EnquiryBusiness business = new EnquiryBusiness();
            list = business.searchByStatus(req.getParameter("Status"));
            System.out.println("Size:::"+list.size());
            return list;
        }else{
            return null;
        }
    }
    
    @RequestMapping("/admin_search_sms")
    public ModelAndView getAdminSearchSMS(ModelMap map)
    {
        ModelAndView model = new ModelAndView("AdminJsp-SearchSMS","command",new SentSms());
        return model;
    }
}
