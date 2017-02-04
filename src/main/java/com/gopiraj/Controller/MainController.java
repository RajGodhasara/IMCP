/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Controller;

import com.gopiraj.Business.CourseBusiness;
import com.gopiraj.Business.LoginBusiness;
import com.gopiraj.Model.Course;
import com.gopiraj.Model.Login;
import com.gopiraj.Model.MenuMaster;
import com.gopiraj.Model.Person;
import com.gopiraj.dispature.MyDispatureServlet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
            SessionFactory sf = null;
            List list = null;
            sf = MyDispatureServlet.getSessionFactory();
            CourseBusiness business = new CourseBusiness();
            if(sf!=null){
                System.out.println("Session factory initialized.");
                list = business.search(sf);
            }
            ModelAndView model = new ModelAndView("Index", "command", new Course());
            if(list!=null){
                System.out.println("Attaching list to model.");
                model.addObject("courses", list);
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

        return "AboutUs";

    }
      
    @RequestMapping("/contact")
    public String getContactUs(ModelMap map) {
        
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
    public String getCourseList(ModelMap map) {

        return "CourseList";

    }
    
    @RequestMapping("/404")
    public String get404(ModelMap map) {

        return "404";

    }
    
    @RequestMapping("/authentication")
    public ModelAndView Authentication(HttpServletRequest rq,ModelMap map,@RequestParam("Email") String email,@RequestParam("Pass") String pass) {
        try{
            
            LoginBusiness login = new LoginBusiness();
                     
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
                    if(m!=null){
                        System.out.println("Setting menu as a session---------------");
                        session.setAttribute("menu",m);
                    }                    
                }
                ModelAndView model = new ModelAndView("AdminJsp-AddCourse", "command", new Course());
                return model;       
            }
            else
            {
                ModelAndView model = new ModelAndView("Login", "command", new Login());
                return model;  
            }
        }
        catch(Exception e){
            System.out.println("Error in Main Controller/Authentication------------");
            e.printStackTrace();
            return null;
        }
    }
}
