/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Controller;

import com.gopiraj.Business.Utils;
import com.gopiraj.Model.SocialLinks;
import com.gopiraj.Model.Task;
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
public class AdminTaskController {

    @RequestMapping("/admin_assign_task")
    public ModelAndView getAdminAssignTask(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            ModelAndView model = new ModelAndView("AdminJsp-AssignTask", "command", new Task());
            return model;
        } else {
            ModelAndView model = new ModelAndView("redirect:/login", "command", new Task());
            return model;

        }

    }

    @RequestMapping("/admin_search_task")
    public ModelAndView getAdminSearchTask(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            ModelAndView model = new ModelAndView("AdminJsp-SearchTask", "command", new Task());
            return model;
        } else {
            ModelAndView model = new ModelAndView("redirect:/login", "command", new Task());
            return model;

        }

    }
}
