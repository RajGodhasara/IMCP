/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Controller;

import com.gopiraj.Business.Utils;
import com.gopiraj.Model.Gallery;
import com.gopiraj.Model.OrganizationAdmin;
import com.gopiraj.Model.Person;
import javax.servlet.http.HttpServletRequest;
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
    public ModelAndView getAdminAddAdmin(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            ModelAndView model = new ModelAndView("AdminJsp-AddAdmin", "command", new OrganizationAdmin());
            model.addObject("emp", new Person());
            return model;
        } else {
            ModelAndView model = new ModelAndView("redirect:/login", "command", new Gallery());
            return model;
        }

    }

    @RequestMapping("/admin_search_admin")
    public ModelAndView getAdminSearchAdmin(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            ModelAndView model = new ModelAndView("AdminJsp-SearchAdmin", "command", new OrganizationAdmin());
            return model;
        } else {
            ModelAndView model = new ModelAndView("redirect:/login", "command", new Gallery());
            return model;
        }

    }
}
