/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Controller;

import com.gopiraj.Business.PreBrochuresBusiness;
import com.gopiraj.Model.OrganizationAdmin;
import com.gopiraj.Model.PreBrochures;
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
public class AdminPrebrochuresController {
    @RequestMapping("/admin_add_prebrochures")
    public ModelAndView getAdminAddPreBrochures(ModelMap map)
    {
        ModelAndView model = new ModelAndView("AdminJsp-AddBrochures","command",new PreBrochures());
        return model;
    }
    
    @RequestMapping("/admin_search_prebrochures")
    public ModelAndView getAdminSearchPreBrochures(ModelMap map)
    {
        ModelAndView model = new ModelAndView("AdminJsp-SearchBrochures","command",new PreBrochures());
        return model;
    }
    
    @RequestMapping("/admin_add_prebrochures_insert")
    public ModelAndView getAdminInsertCourse(ModelMap map,@ModelAttribute PreBrochures brochure) {
        
        SessionFactory sf = MyDispatureServlet.getSessionFactory();
        PreBrochuresBusiness business = new PreBrochuresBusiness();
        OrganizationAdmin admin=null;
        
        admin = business.searchByAdmin(6,sf);
        brochure.setOrganizationAdmin(admin);
        String answer = business.insert(brochure, sf);
        System.out.println(answer);
        
        ModelAndView model = new ModelAndView("admin_add_prebrochures", "command", new PreBrochures());
        model.addObject(answer);
        return model;
    }
}
