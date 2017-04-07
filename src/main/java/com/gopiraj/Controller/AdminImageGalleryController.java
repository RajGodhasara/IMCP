/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Controller;

import com.gopiraj.Business.ImageGalleryBusiness;
import com.gopiraj.Business.Utils;
import com.gopiraj.Model.Gallery;
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
public class AdminImageGalleryController {

    @RequestMapping("/admin_add_imagegallery")
    public ModelAndView getAdminAddimagegallery(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            ModelAndView model = new ModelAndView("AdminJsp-AddImageGallery", "command", new Gallery());
            return model;
        } else {
            ModelAndView model = new ModelAndView("redirect:/login", "command", new Gallery());
            return model;
        }

    }

    @RequestMapping("/admin_add_imagegallery_insert")
    public ModelAndView getAdminAddimagegalleryInsert(HttpServletRequest req, ModelMap map, @RequestParam CommonsMultipartFile file, @ModelAttribute Gallery gallery) {
        if (Utils.isAuthenticated(req)) {
            if (file != null) {
                try {
                    byte[] bytes = file.getBytes();
                    gallery.setImage(bytes);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (gallery != null) {
                ImageGalleryBusiness business = new ImageGalleryBusiness();
                System.out.println(business.insert(gallery));
            }
            ModelAndView model = new ModelAndView("AdminJsp-AddImageGallery", "command", new Gallery());
            return model;
        } else {
            ModelAndView model = new ModelAndView("redirect:/login", "command", new Gallery());
            return model;
        }

    }
}
