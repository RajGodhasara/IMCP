/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Controller;

import com.gopiraj.Model.Activity;
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
    public ModelAndView getAdminAddActivity(ModelMap map)
    {
        //map.addAttribute("msg","WelCome To MVC Web Application with Maven.");
        //return "AdminJsp-AddCourse";
        ModelAndView model = new ModelAndView("AdminJsp-AaddActivity","command",new Activity());
        return model;
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
