/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Controller;

import com.gopiraj.Business.EnquiryBusiness;
import com.gopiraj.Business.PreTextBusiness;
import com.gopiraj.Business.SentMailBusiness;
import com.gopiraj.Model.Enquiry;
import com.gopiraj.Model.PreText;
import com.gopiraj.Model.SentMail;
import static java.lang.ProcessBuilder.Redirect.to;
import java.net.PasswordAuthentication;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author GOPIRAJ
 */
@Controller
public class AdminSendMailController {
    @RequestMapping("/admin_send_mail")
    public String getAdminSendMail(ModelMap map)
    {
        EnquiryBusiness business = new EnquiryBusiness();
        List<Enquiry> listEnquiry = new ArrayList<Enquiry>();
        listEnquiry =  business.search();
        System.out.println("LIST SIZE:"+listEnquiry.size());
        PreTextBusiness textBusiness = new PreTextBusiness();
        List<PreText> listText = textBusiness.search();
        System.out.println("LISTPRETEXT SIZE:"+listText.size());
        map.addAttribute("listEnquiry", listEnquiry);
        map.addAttribute("listPretext", listText);
        return "AdminJsp-SendMail";
    }
    
    @RequestMapping("/admin_send_mail_send")
    public String getAdminSendMailSend(ModelMap map,HttpServletRequest req)
    {
        String CC=null;
        String BCC=null;
        String TO = req.getParameter("TO");
        if(req.getParameter("CC")!=null){
            CC = req.getParameter("CC");
        }
        if(req.getParameter("BCC")!=null){
            BCC = req.getParameter("BCC");
        }
        
        String message = req.getParameter("DESC");
        
        String subject = "IMCP";
        if(TO!=null && message!=null){
            System.out.println(mailAuth(TO,subject,message));
        }
        

        return "AdminJsp-SendMail";
    }
    
    @RequestMapping("/admin_search_mail")
    public ModelAndView getAdminSearchMail(ModelMap map)
    {
        ModelAndView model = new ModelAndView("AdminJsp-SearchMail","command",new SentMail());
        return model;
    }
    
    private Boolean mailAuth(String to,String subject,String message){
        //String to="mnagariya@gmail.com";//change accordingly  
  
        //Get the session object  
        Properties props = new Properties();  
        props.put("mail.smtp.host", "smtp.gmail.com");  
        props.put("mail.smtp.socketFactory.port", "465");  
        props.put("mail.smtp.socketFactory.class",  
                "javax.net.ssl.SSLSocketFactory");  
        props.put("mail.smtp.auth", "true");  
        props.put("mail.smtp.port", "465");  
        
        javax.mail.Session session = javax.mail.Session.getDefaultInstance(props,  
            new javax.mail.Authenticator() {  
                protected javax.mail.PasswordAuthentication getPasswordAuthentication() {  
                    return new javax.mail.PasswordAuthentication("raj.godhasara22@gmail.com","Godhu)$08!((%");//change accordingly  
                }  
            });
        //compose message  
        try 
        {  
            MimeMessage message1 = new MimeMessage(session);  
            message1.setFrom(new InternetAddress("raj.godhasara22@gmail.com"));//change accordingly  
            message1.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
            message1.setSubject(subject);  
            message1.setText(message);  
            
            //MAILING TO MULTIPLE ADDRESS
            //message1.addRecipients(Message.RecipientType.TO, addresses);
            
            //send message  
            Transport.send(message1);  
  
            System.out.println("message sent successfully");  
            return true;
   
        } 
        catch (MessagingException e) 
        {
            return false;
            //throw new RuntimeException(e);
            
        }  
    }
}
