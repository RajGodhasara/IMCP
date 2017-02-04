/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Controller;

import com.gopiraj.Model.SentMail;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author GOPIRAJ
 */
@Controller
public class AdminSendMailController {
    @RequestMapping("/admin_send_mail")
    public ModelAndView getAdminSendMail(ModelMap map)
    {
        ModelAndView model = new ModelAndView("AdminJsp-SendMail","command",new SentMail());
        return model;
    }
    
    @RequestMapping("/admin_search_mail")
    public ModelAndView getAdminSearchMail(ModelMap map)
    {
        ModelAndView model = new ModelAndView("AdminJsp-SearchMail","command",new SentMail());
        return model;
    }
}
