/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Controller;

import com.gopiraj.Business.ActivityBusiness;
import com.gopiraj.Model.Activity;
import com.gopiraj.Model.Person;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
/**
 *
 * @author GOPIRAJ
 */
@Controller
public class AdminActivityController {
    @RequestMapping("/admin_add_activity")
    public String getAdminAddActivity(ModelMap map)
    {
        
        ActivityBusiness business = new ActivityBusiness();
        List<Activity> list = business.search();
        if(list!=null){
            System.out.println("Adding list to activity SIZE:"+list.size());
            map.addAttribute("activity", list);
        }
        
        return "AdminJsp-AaddActivity";
    }
    
    @RequestMapping("/admin_add_activity_insert")
    public String getAdminAddActivityInsert(ModelMap map,HttpServletRequest req)
    {
        Activity activity = new Activity();
        HttpSession session = req.getSession(false);
        Person person = (Person)session.getAttribute("person");
        if(person!=null){
            activity.setPerson(person);
            System.out.println("setting admin");
        }
        if(req.getParameter("Description")!=null){
            ActivityBusiness business = new ActivityBusiness();
            System.out.println("setting Date");
            activity.setCreationTime(new Date());
            System.out.println("setting Description");
            activity.setDescription(req.getParameter("Description"));
            System.out.println(business.insert(activity));
        }
        
        return "AdminJsp-AaddActivity";
    }
    
    @RequestMapping("/admin_search_activity")
    public ModelAndView getAdminSearchActivity(ModelMap map)
    {
        //map.addAttribute("msg","WelCome To MVC Web Application with Maven.");
        //return "AdminJsp-AddCourse";
        ModelAndView model = new ModelAndView("AdminJsp-SearchActivity","command",new Activity());
        return model;
    }
}
