/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Controller;

import com.gopiraj.Business.SocialLinksBusiness;
import com.gopiraj.Model.PreText;
import com.gopiraj.Model.SocialLinks;
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
public class AdminSocialLinks {
    @RequestMapping("/admin_add_social_links")
    public ModelAndView getAdminAddSocialLinks(ModelMap map)
    {
        ModelAndView model = new ModelAndView("AdminJsp-AddSocialLinks","command",new SocialLinks());
        return model;
    }
    
    @RequestMapping("/admin_add_social_links_insert")
    public ModelAndView getAdminAddSocialLinksInsert(ModelMap map,@ModelAttribute SocialLinks links)
    {
        SocialLinksBusiness business = new SocialLinksBusiness();
        if(links!=null){
            System.out.println(business.insert(links));
        }
        else{
            System.out.println("Links null in controller while inserting");
        }
        ModelAndView model = new ModelAndView("AdminJsp-AddSocialLinks","command",new SocialLinks());
        return model;
    }
    
}
