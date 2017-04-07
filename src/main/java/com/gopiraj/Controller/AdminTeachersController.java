/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Controller;

import com.gopiraj.Business.TeachersBusiness;
import com.gopiraj.Business.Utils;
import com.gopiraj.Model.Teachers;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
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
public class AdminTeachersController {

    @RequestMapping("/admin_add_teachers")
    public ModelAndView getAdminAddTeachers(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            TeachersBusiness business = new TeachersBusiness();
            List<Teachers> list = business.search();
            ModelAndView model = new ModelAndView("AdminJsp-AddTeachers", "command", new Teachers());
            model.addObject("list", list);
            return model;
        } else {
            ModelAndView model = new ModelAndView("redirect:/login", "command", new Teachers());
            return model;
        }
    }

    @RequestMapping("/admin_add_teachers_insert")
    public ModelAndView getAdminAddBasicDetailsInsert(HttpServletRequest req, ModelMap map, @RequestParam CommonsMultipartFile file, @ModelAttribute Teachers teachers) {
        if (Utils.isAuthenticated(req)) {
            if (file != null) {
                try {
                    byte[] bytes = file.getBytes();
                    teachers.setPhotograph(bytes);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (teachers != null) {
                TeachersBusiness business = new TeachersBusiness();
                System.out.println(business.insert(teachers));    
            }
            ModelAndView model = new ModelAndView("redirect:/admin_add_teachers", "command", new Teachers());
            return model;
        } else {
            ModelAndView model = new ModelAndView("redirect:/login", "command", new Teachers());
            return model;

        }

    }
    @RequestMapping("/admin_delete_multiple_teachers")
    public String deleteMultipleStudent(ModelMap map, HttpServletRequest req) {

        if (Utils.isAuthenticated(req)) {
            TeachersBusiness business = new TeachersBusiness();
            String id = req.getParameter("listSelectedTeachers");
            if (id != null) {
                List<Teachers> st = business.getTeachersObject(id);
                if (st != null) {
                    business.deleteMultiple(st);
                } else {
                    System.out.println("IN ELSE");
                }
            }
            List<Teachers> list = new ArrayList<Teachers>();
            list = business.search();
            map.addAttribute("list", list);
            return "redirect:/admin_add_teachers";
        } else {
            return "redirect:/login";
        }

    }
    @RequestMapping("/EditTeachers")
    public String editGrid(ModelMap map, HttpServletRequest req) {

        if (Utils.isAuthenticated(req)) {
            System.out.println("IN EDIT");
            int id = Integer.parseInt(req.getParameter("id"));
            String name = req.getParameter("name");
            String dur = req.getParameter("designation");
            String desc = req.getParameter("quote");
            String facebook = req.getParameter("facebook");
            String gmail = req.getParameter("gmail");
            String twitter = req.getParameter("twitter");
            
            Teachers corporate = new Teachers();
            corporate.setName(name);
            corporate.setThought(desc);
            corporate.setDesignation(dur);
            corporate.setTeachersId(id);
            corporate.setFacebook(facebook);
            corporate.setGmail(gmail);
            corporate.setTwitter(twitter);

            TeachersBusiness business = new TeachersBusiness();

            System.out.println(business.update(corporate));

            return "redirect:/admin_add_corporates";
        } else {
            return "redirect:/login";
        }

    }
}
