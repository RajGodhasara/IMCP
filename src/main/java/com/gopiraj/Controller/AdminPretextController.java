/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Controller;

import com.gopiraj.Business.PreTextBusiness;
import com.gopiraj.Business.Utils;
import com.gopiraj.Model.Gallery;
import com.gopiraj.Model.PreText;
import com.gopiraj.dispature.MyDispatureServlet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
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
    public ModelAndView getAdminAddPreText(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            ModelAndView model = new ModelAndView("AdminJsp-AddPretext", "command", new PreText());
            return model;
        } else {
            ModelAndView model = new ModelAndView("redirect:/login", "command", new Gallery());
            return model;
        }

    }

    @RequestMapping("/admin_search_pretext")
    public ModelAndView getAdminSearchPreText(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            ModelAndView model = new ModelAndView("AdminJsp-SearchPretext", "command", new PreText());
            PreTextBusiness business = new PreTextBusiness();
            List<PreText> list = new ArrayList<PreText>();
            list = business.search();
            System.out.println("Size:" + list.size());
            model.addObject("list", list);
            return model;
        } else {
            ModelAndView model = new ModelAndView("redirect:/login", "command", new Gallery());
            return model;
        }

    }

    @RequestMapping("/admin_add_pretext_insert")
    public ModelAndView getAdminInsertCourse(ModelMap map, @ModelAttribute PreText pretext, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            
            PreTextBusiness business = new PreTextBusiness();
            System.out.println(business.insert(pretext));

            ModelAndView model = new ModelAndView("redirect:/admin_add_pretext", "command", new PreText());
            return model;
        } else {
            ModelAndView model = new ModelAndView("redirect:/login", "command", new Gallery());
            return model;
        }

    }

    @RequestMapping("/admin_delete_multiple_pretext")
    public String deleteMultiplePretext(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            PreTextBusiness pretextBusiness = new PreTextBusiness();
            String id = req.getParameter("listSelectedPretext");
            if (id != null) {
                List<PreText> st = pretextBusiness.getPreTextObject(id);
                if (st != null) {
                    System.out.println(pretextBusiness.deleteMultiple(st));
                } 
            }
            List<PreText> list = new ArrayList<PreText>();
            list = pretextBusiness.search();
            map.addAttribute("list", list);
            return "redirect:/admin_search_pretext";
        } else {

            return "redirect:/login";
        }

        
    }

    @RequestMapping("/EditPreText")
    public String editGrid(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            System.out.println("IN EDIT");
            int id = Integer.parseInt(req.getParameter("id"));
            String title = req.getParameter("title");
            String message = req.getParameter("message");
            String forwhat = req.getParameter("forwhat");
            PreText pretext = new PreText();
            pretext.setTitle(title);
            pretext.setMessage(message);
            pretext.setForWhat(forwhat);
            pretext.setPreTextId(id);

            PreTextBusiness business = new PreTextBusiness();
            System.out.println(business.update(pretext));

            List<PreText> pretextList = business.search();
            map.addAttribute("list", pretextList);
            return "redirect:/admin_search_pretext";
        } else {

            return "redirect:/login";
        }

    }
}
