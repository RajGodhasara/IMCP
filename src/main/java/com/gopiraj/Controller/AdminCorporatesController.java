/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Controller;

import com.gopiraj.Business.CorporatesBusiness;
import com.gopiraj.Model.Corporates;
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
    public ModelAndView getAdminAddCorporates(ModelMap map)
    {
        ModelAndView model = new ModelAndView("AdminJsp-AddCorporates","command",new Corporates());
        return model;
    }
    
    @RequestMapping("/admin_add_corporates_insert")
    public ModelAndView getAdminAddBasicDetailsInsert(ModelMap map,@RequestParam CommonsMultipartFile file,@ModelAttribute Corporates corporates)
    {
        if(file!=null){
            
        }
        if(corporates!=null){
            CorporatesBusiness business = new CorporatesBusiness();
            System.out.println(business.insert(corporates));
        }
        ModelAndView model = new ModelAndView("AdminJsp-AddCorporates","command",new Corporates());
        return model;
    }
}
