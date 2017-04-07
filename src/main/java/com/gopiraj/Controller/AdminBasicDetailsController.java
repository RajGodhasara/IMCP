/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Controller;

import com.gopiraj.Business.BasicDetailsBusiness;
import com.gopiraj.Business.Utils;
import com.gopiraj.Model.BasicDetails;
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
public class AdminBasicDetailsController {

    @RequestMapping("/admin_add_basic_details")
    public ModelAndView getAdminAddBasicDetails(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            BasicDetailsBusiness business = new BasicDetailsBusiness();
            List<BasicDetails> list = business.search();
            ModelAndView model = null;
            if(list.isEmpty()){
                model = new ModelAndView("AdminJsp-AddBasicDetails", "command", new BasicDetails());
            }else{
                BasicDetails basic = list.get(0);
                model = new ModelAndView("AdminJsp-AddBasicDetails", "command", basic);
            }
            
            return model;
        } else {
            ModelAndView model1 = new ModelAndView("redirect:/login", "command", new BasicDetails());
            return model1;
        }

    }

    @RequestMapping("/admin_add_basic_details_insert")
    public ModelAndView getAdminAddBasicDetailsInsert(HttpServletRequest req, ModelMap map, @RequestParam CommonsMultipartFile file, @ModelAttribute BasicDetails basic) {
        if (Utils.isAuthenticated(req)) {
            if (file != null) {
                try {
                    byte[] bytes = file.getBytes();
                    basic.setLogo(bytes);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (basic != null) {
                BasicDetailsBusiness business = new BasicDetailsBusiness();
                System.out.println(business.insert(basic));
            }
            ModelAndView model = new ModelAndView("redirect:/admin_add_basic_details", "command", new BasicDetails());
            return model;
        } else {
            ModelAndView model1 = new ModelAndView("redirect:/login", "command", new BasicDetails());
            return model1;
        }

    }
}
