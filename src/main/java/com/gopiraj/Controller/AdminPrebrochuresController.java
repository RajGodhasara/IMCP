/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Controller;

import com.gopiraj.Business.PreBrochuresBusiness;
import com.gopiraj.Model.OrganizationAdmin;
import com.gopiraj.Model.Person;
import com.gopiraj.Model.PreBrochures;
import com.gopiraj.dispature.MyDispatureServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileUploadException;
import org.hibernate.SessionFactory;
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
public class AdminPrebrochuresController {
    
    private static final String UPLOAD_DIRECTORY ="/brochures";
    
    @RequestMapping("/admin_add_prebrochures")
    public ModelAndView getAdminAddPreBrochures(ModelMap map)
    {
        ModelAndView model = new ModelAndView("AdminJsp-AddBrochures","command",new PreBrochures());
        return model;
    }
    
    @RequestMapping("/admin_search_prebrochures")
    public ModelAndView getAdminSearchPreBrochures(ModelMap map)
    {
        ModelAndView model = new ModelAndView("AdminJsp-SearchBrochures","command",new PreBrochures());
        return model;
    }
    
    @RequestMapping("/admin_add_prebrochures_insert")
    public ModelAndView getAdminInsertCourse(ModelMap map,@ModelAttribute PreBrochures brochure,HttpServletRequest res,
            @RequestParam CommonsMultipartFile file,HttpSession session) {
        
        SessionFactory sf = MyDispatureServlet.getSessionFactory();
        PreBrochuresBusiness business = new PreBrochuresBusiness();
        Person person=null;
        
        String path=session.getServletContext().getRealPath(UPLOAD_DIRECTORY);
        String filename=file.getOriginalFilename();
        System.out.println("FILE:"+path+" "+filename);
        try{
            byte[] bytes = file.getBytes();  
            brochure.setUpload(bytes);
        }catch(Exception e){
            e.printStackTrace();
        }
        
//        BufferedOutputStream stream =new BufferedOutputStream(new FileOutputStream(  
//         new File(path + File.separator + filename)));  
//        stream.write(bytes);  
//        stream.flush();  
//        stream.close(); 
        
        HttpSession session1 = res.getSession(false);
        person = (Person)session1.getAttribute("person");
        if(person!=null){
            brochure.setOrganizationAdmin(person.getOrganizationAdmin());
            System.out.println("setting admin");
        }
       
        String answer = business.insert(brochure, sf);
        System.out.println(answer);
        
        ModelAndView model = new ModelAndView("AdminJsp-AddBrochures", "command", new PreBrochures());
        model.addObject(answer);
        return model;
    }
}
