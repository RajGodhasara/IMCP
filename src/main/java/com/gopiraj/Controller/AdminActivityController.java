/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Controller;

import com.gopiraj.Business.ActivityBusiness;
import com.gopiraj.Business.ActivityCommentBusiness;
import com.gopiraj.Model.Activity;
import com.gopiraj.Model.Person;
import com.gopiraj.Model.ActivityComment;
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
        ActivityCommentBusiness acBusiness = new ActivityCommentBusiness();
        ActivityBusiness business = new ActivityBusiness();
        List<Activity> list = business.search();
        List<ActivityComment> list2 = acBusiness.search();
        if(list!=null){
            
            System.out.println("Adding list to activity SIZE:"+list.size());
            map.addAttribute("activity", list);
        }
        if(list2!=null){
            
            System.out.println("Adding list of Comments to activity SIZE:"+list2.size());
            map.addAttribute("activityComment", list2);
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
    
    @RequestMapping("/admin_add_activity_comment_insert")
    public String getAdminAddActivityCommentInsert(ModelMap map,HttpServletRequest req)
    {
        ActivityComment comment = new ActivityComment();
        ActivityBusiness aBusiness = new ActivityBusiness();
        ActivityCommentBusiness acBusiness = new ActivityCommentBusiness();
        
        HttpSession session = req.getSession(false);
        Person person = (Person)session.getAttribute("person");
        if(person!=null){
            comment.setPerson(person);
            System.out.println("setting admin");
        }
        if(req.getParameter("ActivityID")!=null && req.getParameter("Comment")!=null){
      
            comment.setCreationTime(new Date());
            comment.setActivity(aBusiness.searchById(Integer.parseInt(req.getParameter("ActivityID"))));
            comment.setComment(req.getParameter("Comment"));
            System.out.println(acBusiness.insert(comment));
        }
        /**
         * TODO: Develop the code here which refresh the same page and redirect to the same page.
         */
        
        //return "redirect:/admin_add_activity";
        return "AdminJsp-AaddActivity";
    }
    
    @RequestMapping("/admin_search_activity")
    public ModelAndView getAdminSearchActivity(ModelMap map)
    {
       
        ModelAndView model = new ModelAndView("AdminJsp-SearchActivity","command",new Activity());
        return model;
    }
    
    
    
}
