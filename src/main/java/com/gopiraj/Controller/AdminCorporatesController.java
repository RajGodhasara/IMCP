/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Controller;

import com.gopiraj.Business.CorporatesBusiness;
import com.gopiraj.Business.Utils;
import com.gopiraj.Model.Corporates;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author GOPIRAJ
 */
@Controller
public class AdminCorporatesController {

    @RequestMapping("/admin_add_corporates")
    public ModelAndView getAdminAddCorporates(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            CorporatesBusiness business = new CorporatesBusiness();
            List<Corporates> list = business.search();
            ModelAndView model = new ModelAndView("AdminJsp-AddCorporates", "command", new Corporates());
            model.addObject("list", list);
            return model;
        } else {
            ModelAndView model1 = new ModelAndView("redirect:/login", "command", new Corporates());
            return model1;
        }
    }

    @RequestMapping("/admin_add_corporates_insert")
    public ModelAndView getAdminAddBasicDetailsInsert(HttpServletRequest req, ModelMap map, @RequestParam CommonsMultipartFile file, @ModelAttribute Corporates corporates) {
        if (Utils.isAuthenticated(req)) {
            if (file != null) {
                try {
                    byte[] bytes = file.getBytes();
                    corporates.setPhotograph(bytes);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (corporates != null) {
                CorporatesBusiness business = new CorporatesBusiness();
                System.out.println(business.insert(corporates));
            }
            ModelAndView model = new ModelAndView("redirect:/admin_add_corporates", "command", new Corporates());
            return model;
        } else {
            ModelAndView model1 = new ModelAndView("redirect:/login", "command", new Corporates());
            return model1;
        }

    }
    @RequestMapping("/admin_delete_multiple_corporates")
    public String deleteMultipleStudent(ModelMap map, HttpServletRequest req) {

        if (Utils.isAuthenticated(req)) {
            CorporatesBusiness business = new CorporatesBusiness();
            String id = req.getParameter("listSelectedCorporates");
            if (id != null) {
                List<Corporates> st = business.getCorporatesObject(id);
                if (st != null) {
                    business.deleteMultiple(st);
                } else {
                    System.out.println("IN ELSE");
                }
            }
            List<Corporates> list = new ArrayList<Corporates>();
            list = business.search();
            map.addAttribute("list", list);
            return "redirect:/admin_add_corporates";
        } else {
            return "redirect:/login";
        }

    }
    @RequestMapping("/EditCorporates")
    public String editGrid(ModelMap map, HttpServletRequest req) {

        if (Utils.isAuthenticated(req)) {
            System.out.println("IN EDIT");
            int id = Integer.parseInt(req.getParameter("id"));
            String name = req.getParameter("name");
            String dur = req.getParameter("designation");
            String desc = req.getParameter("quote");
            
            Corporates corporate = new Corporates();
            corporate.setName(name);
            corporate.setThought(desc);
            corporate.setDesignation(dur);
            corporate.setCorporatesId(id);

            CorporatesBusiness corporateBusiness = new CorporatesBusiness();

            System.out.println(corporateBusiness.update(corporate));

            return "redirect:/admin_add_corporates";
        } else {
            return "redirect:/login";
        }

    }
}
