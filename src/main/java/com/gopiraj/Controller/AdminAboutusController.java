/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Controller;

import com.gopiraj.Business.AboutusBusiness;
import com.gopiraj.Business.Utils;
import com.gopiraj.Model.Aboutus;
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
public class AdminAboutusController {

    @RequestMapping("/admin_add_aboutus")
    public ModelAndView getAdminAddAboutus(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            AboutusBusiness business = new AboutusBusiness();
            List<Aboutus> list = business.search();
            ModelAndView model= null;
            if(list.isEmpty()){
                model = new ModelAndView("AdminJsp-AddAboutUs", "command", new Aboutus());
            }else{
                model = new ModelAndView("AdminJsp-AddAboutUs", "command", list.get(0));
            }
            
            return model;
        } else {
            ModelAndView model1 = new ModelAndView("redirect:/login", "command", new Aboutus());
            return model1;
        }
    }

    @RequestMapping("/admin_add_aboutus_insert")
    public ModelAndView getAdminAddAboutusInsert(HttpServletRequest req, ModelMap map, @RequestParam CommonsMultipartFile file, @ModelAttribute Aboutus aboutus) {
        if (Utils.isAuthenticated(req)) {
            if (file != null) {
                try {
                    byte[] bytes = file.getBytes();
                    aboutus.setPhotograph(bytes);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (aboutus != null) {
                AboutusBusiness business = new AboutusBusiness();
                System.out.println(business.insert(aboutus));
            }
            ModelAndView model = new ModelAndView("redirect:/admin_add_aboutus", "command", new Aboutus());
            return model;
        } else {
            ModelAndView model1 = new ModelAndView("redirect:/login", "command", new Aboutus());
            return model1;
        }
    }
}
