/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Controller;

import com.gopiraj.Business.BasicDetailsBusiness;
import com.gopiraj.Business.CorporatesBusiness;
import com.gopiraj.Business.CourseBusiness;
import com.gopiraj.Business.LoginBusiness;
import com.gopiraj.Business.SocialLinksBusiness;
import com.gopiraj.Business.SubmenuMasterBusiness;
import com.gopiraj.Business.TeachersBusiness;
import com.gopiraj.Model.BasicDetails;
import com.gopiraj.Model.Corporates;
import com.gopiraj.Model.Course;
import com.gopiraj.Model.Login;
import com.gopiraj.Model.MenuMaster;
import com.gopiraj.Model.Person;
import com.gopiraj.Model.Teachers;
import com.gopiraj.dispature.MyDispatureServlet;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author GOPIRAJ
 */
@Controller
public class MainController {
    @RequestMapping("/index")
    public ModelAndView getHome(ModelMap map) {
        try{
           
            List list = null;
            List linkList = null;
            List detailsList = null;
            
            CourseBusiness business = new CourseBusiness();
            SocialLinksBusiness linkBusiness = new SocialLinksBusiness();
            BasicDetailsBusiness detalsBusiness = new BasicDetailsBusiness();
            List basicList = null;
            basicList = detalsBusiness.search();
            BasicDetails details = (BasicDetails)basicList.get(0);
                    
            try{
            byte[] encodeBase64 = com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(details.getLogo()).getBytes();
            String base64Encoded = new String(encodeBase64, "UTF-8");
            map.addAttribute("logo", base64Encoded );
            System.out.println("LOGO ADDED");
            }catch(Exception e){
                System.out.println("ERROR IN TRY IMAGE:"+e.getMessage());
            }
            
                System.out.println("Session factory initialized.");
                list = business.search();
                linkList = linkBusiness.search();
                detailsList = detalsBusiness.search();
            ModelAndView model = new ModelAndView("Index", "command", new Course());
            if(list!=null){
                System.out.println("Attaching list to model.");
                model.addObject("courses", list);
                model.addObject("link", linkList);
                model.addObject("details", detailsList);
            }
            return model;   
        }
        catch(Exception e){
            System.out.println("ERROR in INDEX");
            e.printStackTrace();
            return null;
        }
    }
    
    @RequestMapping("/aboutus-us")
    public String getAboutUs(ModelMap map) {
        List linkList = null;
        List detailsList = null;
        List TeacherList = null;
        List corporateList = null;
        SocialLinksBusiness linkBusiness = new SocialLinksBusiness();
        BasicDetailsBusiness detalsBusiness = new BasicDetailsBusiness();
        TeachersBusiness teacherBusiness = new TeachersBusiness();
        CorporatesBusiness corporateBusiness = new CorporatesBusiness();
        linkList = linkBusiness.search();
        detailsList = detalsBusiness.search();
        TeacherList = teacherBusiness.search();
        corporateList = corporateBusiness.search();
        
        List basicList = null;
            basicList = detalsBusiness.search();
            BasicDetails details = (BasicDetails)basicList.get(0);
                    
            try{
            byte[] encodeBase64 = com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(details.getLogo()).getBytes();
            String base64Encoded = new String(encodeBase64, "UTF-8");
            map.addAttribute("logo", base64Encoded );
            System.out.println("LOGO ADDED");
            }catch(Exception e){
                System.out.println("ERROR IN TRY IMAGE:"+e.getMessage());
            }
        
        Teachers teachers = (Teachers)TeacherList.get(0);
        Corporates corporate = (Corporates)corporateList.get(0);
        try{
            byte[] encodeBase64 = com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(teachers.getPhotograph()).getBytes();
            String base64Encoded = new String(encodeBase64, "UTF-8");
            map.addAttribute("userImage", base64Encoded );
        }catch(Exception e){
            System.out.println("ERROR IN TRY IMAGE:"+e.getMessage());
        }
        try{
            byte[] encodeBase64 = com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(corporate.getPhotograph()).getBytes();
            String base64Encoded = new String(encodeBase64, "UTF-8");
            map.addAttribute("corporatesImage", base64Encoded );
        }catch(Exception e){
            System.out.println("ERROR IN TRY IMAGE:"+e.getMessage());
        }
        
        
        
        corporateList = corporateBusiness.search();
        map.addAttribute("link",linkList);
        map.addAttribute("details", detailsList);
        map.addAttribute("teachers", TeacherList);
        map.addAttribute("corporates", corporateList);
        return "AboutUs";

    }
      
    @RequestMapping("/contact")
    public String getContactUs(ModelMap map) {
        List linkList = null;
        List detailsList = null;
        BasicDetailsBusiness detalsBusiness = new BasicDetailsBusiness();
        List basicList = null;
            basicList = detalsBusiness.search();
            BasicDetails details = (BasicDetails)basicList.get(0);
                    
            try{
            byte[] encodeBase64 = com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(details.getLogo()).getBytes();
            String base64Encoded = new String(encodeBase64, "UTF-8");
            map.addAttribute("logo", base64Encoded );
            System.out.println("LOGO ADDED");
            }catch(Exception e){
                System.out.println("ERROR IN TRY IMAGE:"+e.getMessage());
            }
        
        SocialLinksBusiness linkBusiness = new SocialLinksBusiness();
        
        linkList = linkBusiness.search();
        detailsList = detalsBusiness.search();
        map.addAttribute("link",linkList);
        map.addAttribute("details", detailsList);
        return "ContactUs";
    
    }
    
    @RequestMapping("/login")
    public ModelAndView getLogin(ModelMap map) {
        
        ModelAndView model = new ModelAndView("Login", "command", new Login());
        return model;
        
    }
    
    @RequestMapping("/logout")
    public String getLogout(HttpServletRequest rq,ModelMap map) {
        
        if(rq.getSession(false)!=null){
            HttpSession session = rq.getSession(false);
            session.invalidate();
        }
        
        return "Index";
        
    }
    
    @RequestMapping("/courses-detail")
    public ModelAndView getCourseList(ModelMap map) {
        
        
        try{
            //SessionFactory sf = null;
            List list = null;
            List linkList = null;
            List detailsList = null;
            BasicDetailsBusiness detalsBusiness = new BasicDetailsBusiness();
            List basicList = null;
            basicList = detalsBusiness.search();
            BasicDetails details = (BasicDetails)basicList.get(0);
                    
            try{
            byte[] encodeBase64 = com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(details.getLogo()).getBytes();
            String base64Encoded = new String(encodeBase64, "UTF-8");
            map.addAttribute("logo", base64Encoded );
            System.out.println("LOGO ADDED");
            }catch(Exception e){
                System.out.println("ERROR IN TRY IMAGE:"+e.getMessage());
            }
            
            //sf = MyDispatureServlet.getSessionFactory();
            CourseBusiness business = new CourseBusiness();
            
            SocialLinksBusiness linkBusiness = new SocialLinksBusiness();

            //if(sf!=null){
                System.out.println("Session factory initialized.");
                list = business.search();
                linkList = linkBusiness.search();
                detailsList = detalsBusiness.search();
            //}
            ModelAndView model = new ModelAndView("CourseList", "command", new Course());
            if(list!=null || linkList!=null){
                System.out.println("Attaching list to model.");
                model.addObject("courses", list);
                map.addAttribute("link",linkList);
                map.addAttribute("details", detailsList);
            }
            return model;   
        }
        catch(Exception e){
            System.out.println("ERROR in INDEX");
            e.printStackTrace();
            return null;
        }        
    }
    
    @RequestMapping("/404")
    public String get404(ModelMap map) {

        return "404";

    }
    
    @RequestMapping("/authentication")
    public String Authentication(HttpServletRequest rq,ModelMap map,@RequestParam("Email") String email,@RequestParam("Pass") String pass) {
        try{
            List<MenuMaster> menuList = null;
            LoginBusiness login = new LoginBusiness();
            SubmenuMasterBusiness subMenuBusiness = new SubmenuMasterBusiness();
            Boolean result = login.authentication(email,pass);
            System.out.println(result);
            if(result == true) 
            {
                HttpSession session = rq.getSession(true);
                ArrayList<MenuMaster> m=null;
                Person person = login.getPerson(email);
                if(person!=null){
                    session.setAttribute("person", person);
                    m=login.getMenu(person.getPersonType());
                    menuList = subMenuBusiness.getSub(m);
                    System.out.println("SUBMENU SIZE:"+menuList.get(0).getSubMenuTypes());
                   // List<SubmenuMaster> subList = (ArrayList)menuList.get(0).getSubMenuTypes();
                    
                    //System.out.println("SUBMIST NAME:"+subList.get(0).getSubPageName());
                    if(menuList!=null){
                        System.out.println("Setting menu as a session---------------");
                        session.setAttribute("menu",menuList);
                    }                    
                }
                map.addAttribute(new Course());
                return "redirect:admin_add_activity";
                
                //ModelAndView model = new ModelAndView("test", "command", new Course());
                //return model;       
            }
            else
            {
                map.addAttribute(new Login());
                return "Login";
                //ModelAndView model = new ModelAndView("Login", "command", new Login());
                //return model;  
            }
        }
        catch(Exception e){
            System.out.println("Error in Main Controller/Authentication------------");
            e.printStackTrace();
            return null;
        }
    }
}
