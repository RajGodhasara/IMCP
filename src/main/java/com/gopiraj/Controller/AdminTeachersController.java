/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Controller;

import com.gopiraj.Business.TeachersBusiness;
import com.gopiraj.Model.Teachers;
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
    public ModelAndView getAdminAddTeachers(ModelMap map)
    {
        ModelAndView model = new ModelAndView("AdminJsp-AddTeachers","command",new Teachers());
        return model;
    }
    
    @RequestMapping("/admin_add_teachers_insert")
    public ModelAndView getAdminAddBasicDetailsInsert(ModelMap map,@RequestParam CommonsMultipartFile file,@ModelAttribute Teachers teachers)
    {
        if(file!=null){
            try{
            byte[] bytes = file.getBytes();  
            teachers.setPhotograph(bytes);
        }catch(Exception e){
            e.printStackTrace();
        }
        }
        if(teachers!=null){
            TeachersBusiness business = new TeachersBusiness();
            System.out.println(business.insert(teachers));
        }
        ModelAndView model = new ModelAndView("AdminJsp-AddTeachers","command",new Teachers());
        return model;
    }
}