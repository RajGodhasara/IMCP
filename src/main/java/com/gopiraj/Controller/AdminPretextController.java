/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Controller;

import com.gopiraj.Business.PreTextBusiness;
import com.gopiraj.Model.PreText;
import com.gopiraj.dispature.MyDispatureServlet;
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
public class AdminPretextController {
    @RequestMapping("/admin_add_pretext")
    public ModelAndView getAdminAddPreText(ModelMap map)
    {
        ModelAndView model = new ModelAndView("AdminJsp-AddPretext","command",new PreText());
        return model;
    }
    
    @RequestMapping("/admin_search_pretext")
    public ModelAndView getAdminSearchPreText(ModelMap map)
    {
        ModelAndView model = new ModelAndView("AdminJsp-SearchPretext","command",new PreText());
        return model;
    }
    
    @RequestMapping("/admin_add_pretext_insert")
    public ModelAndView getAdminInsertCourse(ModelMap map,@ModelAttribute PreText pretext) {
        
        SessionFactory sf = MyDispatureServlet.getSessionFactory();
        PreTextBusiness business = new PreTextBusiness();
        System.out.println(business.insert(pretext,sf));
              
        ModelAndView model = new ModelAndView("AdminJsp-AddPretext", "command", new PreText());
        return model;
    }
}
