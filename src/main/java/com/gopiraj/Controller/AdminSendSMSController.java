/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Controller;

import com.gopiraj.Business.EnquiryBusiness;
import com.gopiraj.Business.PreTextBusiness;
import com.gopiraj.Business.SentSMSBusiness;
import com.gopiraj.Business.Utils;
import com.gopiraj.Model.Enquiry;
import com.gopiraj.Model.Person;
import com.gopiraj.Model.PreText;
import com.gopiraj.Model.SentSms;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;
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

    public static String retval="";
    
    @RequestMapping("/admin_send_sms")
    public String getAdminSendSMS(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            try {

                //ModelAndView model = new ModelAndView("AdminJsp-SendSMS","command",new SentSms());
                PreTextBusiness textBusiness = new PreTextBusiness();
                List<PreText> list = new ArrayList<PreText>();
                list = textBusiness.searchTitle();
                if (list != null) {
                    System.out.println("adding list");
                    map.addAttribute("list", list);
                }

                Enquiry Enquiry = new Enquiry();
                PreText PreText = new PreText();
                map.addAttribute("PreText", PreText);
                map.addAttribute("Enquiry", Enquiry);
                return "AdminJsp-SendSMS";
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        } else {
            return "redirect:/login";
        }

    }

    @RequestMapping(value = "/admin_send_sms_insert")
    @ResponseBody
    public ModelAndView getAdminSendSMSInsert(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            String enq = null;
            String text = null;
            //SessionFactory sf = MyDispatureServlet.getSessionFactory();
            SentSMSBusiness business = new SentSMSBusiness();
            PreTextBusiness businessText = new PreTextBusiness();
            EnquiryBusiness businessEnq = new EnquiryBusiness();
            PreText preText = new PreText();
            SentSms sms = new SentSms();
            Person person = new Person();
            enq = req.getParameter("Enquiry");
            text = req.getParameter("PreText");

            preText = businessText.searchByText(text);

            HttpSession session = req.getSession(false);
            person = (Person) session.getAttribute("person");
            
            System.out.println("cn");
            if (person != null) {
                sms.setPerson(person);
                System.out.println("setting admin");
            }

            if (preText != null) {
                System.out.println("setting pretext");
                sms.setPreText(preText);
            }
            if (enq != null) {
                Enquiry enquiry = businessEnq.searchByFirstName(enq);
                List<String> list = businessEnq.searchCNByID(enquiry.getEnqId());
                for(int i=0;i<list.size();i++){
                    String number = "91"+String.valueOf(list.get(i));
                    System.out.println("NUMBER:"+number);
                    String msg = preText.getMessage();
                    //System.out.println(sendSMS(number, msg));
                }
                System.out.println("enq CN:"+list.size());
                System.out.println("setting Enquiry");
                sms.setEnquiry(enquiry);
            }

            sms.setCreationTime(new Date());

            String answer = business.insert(sms);
            System.out.println(answer);

            ModelAndView model = new ModelAndView("AdminJsp-SendSMS", "command", new SentSms());
            model.addObject("answer", answer);
            return model;

        } else {
            ModelAndView model = new ModelAndView("redirect:/login", "command", new SentSms());
            return model;
        }

    }

    @RequestMapping(value = "/admin_search_enquiry_status", method = RequestMethod.GET)
    public @ResponseBody
    List<String> getEnquiryStatus(HttpServletRequest req) {

        System.out.println("TRUE:" + req.getParameter("Status"));
        List<String> list = null;

        if (req.getParameter("Status") != null) {
            EnquiryBusiness business = new EnquiryBusiness();
            list = business.searchByStatus(req.getParameter("Status"));
            System.out.println("Size:::" + list.size());
            return list;
        } else {
            return null;
        }
    }

    @RequestMapping("/admin_search_sms")
    public ModelAndView getAdminSearchSMS(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            SentSMSBusiness business = new SentSMSBusiness();
            List<SentSms> list = business.search();
            ModelAndView model = new ModelAndView("AdminJsp-SearchSendSMS", "command", new SentSms());
            model.addObject("list", list);
            return model;
        } else {
            ModelAndView model = new ModelAndView("redirect:/login", "command", new SentSms());
            return model;

        }

    }
    
    private static String sendSMS(String msisdn,String msg)    
    {
        
        String rsp="";
        final String user="mykarsoltechnologies";
        final String password="bankofbaroda";
        final String sid="WebSMS";
        final String fl="0";
        try {
            // Construct The Post Data
            String data = URLEncoder.encode("user", "UTF-8") + "=" + URLEncoder.encode(user, "UTF-8");
            data += "&" + URLEncoder.encode("password", "UTF-8") + "=" + URLEncoder.encode(password, "UTF-8");
            data += "&" + URLEncoder.encode("msisdn", "UTF-8") + "=" + URLEncoder.encode(msisdn, "UTF-8");
            data += "&" + URLEncoder.encode("msg", "UTF-8") + "=" + URLEncoder.encode(msg, "UTF-8");
            data += "&" + URLEncoder.encode("sid", "UTF-8") + "=" + URLEncoder.encode(sid, "UTF-8");
            data += "&" + URLEncoder.encode("fl", "UTF-8") + "=" + URLEncoder.encode(fl, "UTF-8");
            
            //Push the HTTP Request
            URL url = new URL("http://smslane.com/vendorsms/pushsms.aspx");
            URLConnection conn = url.openConnection();
            conn.setDoOutput(true);
            System.out.println("http://smslane.com/vendorsms/pushsms.aspx?"+data);
            OutputStreamWriter wr = new OutputStreamWriter(conn.getOutputStream());
            wr.write(data);
            wr.flush();
           
            //Read The Response
            BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line;
            while ((line = rd.readLine()) != null) {
                // Process line...
                retval += line;
            }
            wr.close();
            rd.close();
            
            System.out.println(retval);
            rsp = retval;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return  rsp;
    }
    
    @RequestMapping("/admin_delete_multiple_sendsms")
    public String deleteMultipleStudent(ModelMap map, HttpServletRequest req) {

        if (Utils.isAuthenticated(req)) {
            SentSMSBusiness business = new SentSMSBusiness();
            String id = req.getParameter("listSelectedSendSms");
            if (id != null) {
                List<SentSms> st = business.getSendMailObject(id);
                if (st != null) {
                    business.deleteMultiple(st);
                } else {
                    System.out.println("IN ELSE");
                }
            }
            List<SentSms> list = new ArrayList<SentSms>();
            list = business.search();
            map.addAttribute("list", list);
            return "redirect:/admin_search_sms";
        } else {
            return "redirect:/login";
        }

    }
}
