/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Controller;

import com.gopiraj.Business.AboutusBusiness;
import com.gopiraj.Business.SliderImageBusiness;
import com.gopiraj.Business.Utils;
import com.gopiraj.Model.Aboutus;
import com.gopiraj.Model.SliderImage;
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
public class AdminSliderImageController {

    @RequestMapping("/admin_add_sliderimage")
    public ModelAndView getAdminAddSliderImage(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            ModelAndView model = new ModelAndView("AdminJsp-AddSliderImage", "command", new SliderImage());
            return model;
        } else {
            ModelAndView model = new ModelAndView("redirect:/login", "command", new SliderImage());
            return model;

        }

    }

    @RequestMapping("/admin_add_sliderimage_insert")
    public ModelAndView getAdminAddSliderImageInsert(HttpServletRequest req, ModelMap map, @RequestParam CommonsMultipartFile file, @ModelAttribute SliderImage sliderImage) {
        if (Utils.isAuthenticated(req)) {
            if (file != null) {
                try {
                    byte[] bytes = file.getBytes();
                    sliderImage.setImage(bytes);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (sliderImage != null) {
                SliderImageBusiness business = new SliderImageBusiness();
                System.out.println(business.insert(sliderImage));
            }
            ModelAndView model = new ModelAndView("AdminJsp-AddSliderImage", "command", new SliderImage());
            return model;
        } else {
            ModelAndView model = new ModelAndView("redirect:/login", "command", new SliderImage());
            return model;

        }

    }
}
