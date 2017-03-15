/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Controller;


import com.gopiraj.Model.OrganizationAdmin;
import com.gopiraj.Model.Person;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author GOPIRAJ
 */
@Controller
public class AdminOrganizationAdminController {
    @RequestMapping("/admin_add_admin")
    public ModelAndView getAdminAddAdmin(ModelMap map)
    {
        ModelAndView model = new ModelAndView("test","command",new OrganizationAdmin());
        model.addObject("emp",new Person());
        return model;
    }
    
    @RequestMapping("/admin_search_admin")
    public ModelAndView getAdminSearchAdmin(ModelMap map)
    {
        ModelAndView model = new ModelAndView("AdminJsp-SearchAdmin","command",new OrganizationAdmin());
        return model;
    }
}
