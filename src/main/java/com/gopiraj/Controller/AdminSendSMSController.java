/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Controller;

import com.gopiraj.Model.SentSms;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author GOPIRAJ
 */
@Controller
public class AdminSendSMSController {
    @RequestMapping("/admin_send_sms")
    public ModelAndView getAdminSendSMS(ModelMap map)
    {
        ModelAndView model = new ModelAndView("AdminJsp-SendSMS","command",new SentSms());
        return model;
    }
    
    @RequestMapping("/admin_search_sms")
    public ModelAndView getAdminSearchSMS(ModelMap map)
    {
        ModelAndView model = new ModelAndView("AdminJsp-SearchSMS","command",new SentSms());
        return model;
    }
}
