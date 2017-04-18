/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Controller;

import com.gopiraj.Business.CourseBusiness;
import com.gopiraj.Business.EnquiryBusiness;
import com.gopiraj.Business.PreTextBusiness;
import com.gopiraj.Business.SentSMSBusiness;
import com.gopiraj.Business.Utils;
import com.gopiraj.Model.Course;
import com.gopiraj.Model.Enquiry;
import com.gopiraj.Model.EnquiryContactno;
import com.gopiraj.Model.EnquiryCourse;
import com.gopiraj.Model.Person;
import com.gopiraj.Model.PreText;
import com.gopiraj.Model.SentSms;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.AbstractList;
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

    public static String retval = "";

    @RequestMapping("/admin_send_sms")
    public String getAdminSendSMS(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            try {
                PreTextBusiness textBusiness = new PreTextBusiness();
                EnquiryBusiness enquiryBusiness = new EnquiryBusiness();
                CourseBusiness courseBusiness = new CourseBusiness();
                List<PreText> list = new ArrayList<PreText>();
                list = textBusiness.searchTitle();
                List<EnquiryContactno> listEnquiryCN = new ArrayList<>();
                listEnquiryCN = enquiryBusiness.searchCN();
                List<Course> listCourse = new ArrayList<Course>();
                listCourse = courseBusiness.search();
                List<Enquiry> listEnquiry = new ArrayList<>();
                listEnquiry = enquiryBusiness.search();
                if (list != null) {
                    System.out.println("adding list");
                    map.addAttribute("list", list);
                }
                if (listEnquiryCN != null) {
                    System.out.println("adding list CN");
                    map.addAttribute("listEnquiryCN", listEnquiryCN);
                }
                if (listCourse != null) {
                    System.out.println("adding list Course");
                    map.addAttribute("listCourse", listCourse);
                }
//                if (listEnquiry != null) {
//                    System.out.println("adding list Enquiry Course");
//
//                    for (int i = 0; i < listEnquiry.size(); i++) {
//                        System.out.println("1");
//                        Enquiry enquiry = listEnquiry.get(i);
//                        System.out.println("1-1");
//                        List<Course> listCourses = new ArrayList<>();
//                        System.out.println("1-2"+ listCourses.size());
//                        if (enquiry.getEnqCourse()!=null) {
//                            listCourses.addAll(enquiry.getEnqCourse());
//                            System.out.println("1-2-------------"+ listCourses.size());
//                            for (int j = 0; j < listCourses.size(); j++) {
//                                System.out.println("2");
//                                Course course = listCourses.get(i);
//                                System.out.println("2-1");
//                                System.out.println("Course:" + course.getCourseName());
//                            }
//                        }else{
//                            System.out.println("EnquiryCourse NULL");
//                        }
//
//                    }
//
//                    map.addAttribute("listEnquiry", listEnquiry);
//                } else {
//                    System.out.println("adding list Enquiry Course NULL");
//                }

                Enquiry Enquiry = new Enquiry();
                PreText PreText = new PreText();
                map.addAttribute("PreText", PreText);
                map.addAttribute("Enquiry", Enquiry);
                return "AdminJsp-SendSMS";
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println(e.getMessage());
                return "AdminJsp-SendSMS";
            }
        } else {
            return "redirect:/login";
        }

    }

    @RequestMapping(value = "/admin_send_sms_insert")
    @ResponseBody
    public String getAdminSendSMSInsert(ModelMap map, HttpServletRequest req) {
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

            if(text!=null){
                preText = businessText.searchByTextMessage(text);
            }
            
            HttpSession session = req.getSession(false);
            person = (Person) session.getAttribute("person");

            if (person != null) {
                sms.setPerson(person);
                System.out.println("setting admin");
            }

            if (preText != null) {
                System.out.println("setting pretext");
                sms.setPreText(preText);
            }
            String msg = null;
            if (enq != null) {
                Enquiry enquiry = businessEnq.searchCNByNumber(enq);
                List<EnquiryContactno> list = businessEnq.searchCNByID(enquiry.getEnqId());
                for (int i = 0; i < list.size(); i++) {
                    EnquiryContactno cn = list.get(i);
                    String number = "91" + String.valueOf(cn.getContactNumber());
                    System.out.println("NUMBER:" + number);
                    if(preText!=null){
                        msg = preText.getMessage();
                    }
                    if(msg!=null){
                        //System.out.println(sendSMS(number, msg));
                    }
                }
                System.out.println("enq CN:" + list.size());
                System.out.println("setting Enquiry");
                sms.setEnquiry(enquiry);
            }

            sms.setCreationTime(new Date());

            String answer = business.insert(sms);
            System.out.println(answer);

            return answer;

        } else {
           return "Session has expired.";
        }

    }

    @RequestMapping(value = "/admin_search_enquiry_status", method = RequestMethod.GET)
    public @ResponseBody
    List<String> getEnquiryStatus(HttpServletRequest req) {

        System.out.println("TRUE:" + req.getParameter("Status"));
        List<Integer> list = null;
        List<String> enquirycn = new ArrayList<String>();
        if (req.getParameter("Status") != null) {
            EnquiryBusiness business = new EnquiryBusiness();
            list = business.searchByStatus(req.getParameter("Status"));
            for (int i = 0; i < list.size(); i++) {
                List<EnquiryContactno> cn = business.searchCNByID(list.get(i));
                if (cn != null) {
                    for (int j = 0; i < cn.size(); j++) {
                        EnquiryContactno cnn = cn.get(i);
                        enquirycn.add(String.valueOf(cnn.getContactNumber()));
                    }
                }
            }
            System.out.println("Size:::" + list.size());
            return enquirycn;
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

    private static String sendSMS(String msisdn, String msg) {

        String rsp = "";
        final String user = "mykarsoltechnologies";
        final String password = "bankofbaroda";
        final String sid = "WebSMS";
        final String fl = "0";
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
            System.out.println("http://smslane.com/vendorsms/pushsms.aspx?" + data);
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
        return rsp;
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
