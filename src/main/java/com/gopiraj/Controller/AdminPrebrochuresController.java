/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Controller;

import com.gopiraj.Business.PreBrochuresBusiness;
import com.gopiraj.Business.Utils;
import com.gopiraj.Model.Person;
import com.gopiraj.Model.PreBrochures;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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

    private static final String UPLOAD_DIRECTORY = "/brochures";

    @RequestMapping("/admin_add_prebrochures")
    public ModelAndView getAdminAddPreBrochures(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            ModelAndView model = new ModelAndView("AdminJsp-AddBrochures", "command", new PreBrochures());
            return model;
        } else {
            ModelAndView model = new ModelAndView("redirect:/login", "command", new PreBrochures());
            return model;
        }

    }

    @RequestMapping("/admin_search_prebrochures")
    public ModelAndView getAdminSearchPreBrochures(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            ModelAndView model = new ModelAndView("AdminJsp-SearchBrochures", "command", new PreBrochures());
            PreBrochuresBusiness business = new PreBrochuresBusiness();
            List<PreBrochures> list = new ArrayList<PreBrochures>();
            list = business.search();
            model.addObject("list", list);
            return model;
        } else {
            ModelAndView model = new ModelAndView("redirect:/login", "command", new PreBrochures());
            return model;
        }

    }

    
    @RequestMapping("/admin_add_prebrochures_insert")
    public ModelAndView getAdminInsertCourse(ModelMap map, @ModelAttribute PreBrochures brochure, HttpServletRequest res,
            @RequestParam CommonsMultipartFile file, HttpSession session) {

        if (Utils.isAuthenticated(res)) {
            PreBrochuresBusiness business = new PreBrochuresBusiness();
            Person person = null;
            String path = session.getServletContext().getRealPath(UPLOAD_DIRECTORY);
            String filename = file.getOriginalFilename();
            try {
                byte[] bytes = file.getBytes();
                brochure.setUpload(bytes);
            } catch (Exception e) {
                System.out.println("Error in admin_add_prebrochures_insert AdminPrebrochuresCon"
                        + "troller"+e.getMessage());
            }

//        BufferedOutputStream stream =new BufferedOutputStream(new FileOutputStream(  
//         new File(path + File.separator + filename)));  
//        stream.write(bytes);  
//        stream.flush();  
//        stream.close(); 
            HttpSession session1 = res.getSession(false);
            person = (Person) session1.getAttribute("person");
            if (person != null) {
                brochure.setPerson(person);
            }

            String answer = business.insert(brochure);
            System.out.println(answer);

            ModelAndView model = new ModelAndView("redirect:/admin_add_prebrochures", "command", new PreBrochures());
            model.addObject("answer",answer);
            return model;
        } else {
            ModelAndView model = new ModelAndView("redirect:/login", "command", new PreBrochures());
            return model;
        }

    }

    @RequestMapping("/admin_delete_multiple_brochures")
    public String deleteMultipleStudent(ModelMap map, HttpServletRequest req) {

        if (Utils.isAuthenticated(req)) {
            PreBrochuresBusiness brochuresBusiness = new PreBrochuresBusiness();
            String id = req.getParameter("listSelectedBrochures");
            if (id != null) {
                List<PreBrochures> st = brochuresBusiness.getBrochuresObject(id);
                if (st != null) {
                    brochuresBusiness.deleteMultiple(st);
                }
            }
            List<PreBrochures> list = new ArrayList<PreBrochures>();
            list = brochuresBusiness.search();
            map.addAttribute("list", list);
            return "redirect:/admin_search_prebrochures";
        } else {
            return "redirect:/login";
        }

    }

    @RequestMapping("/EditBrochures")
    public String editGrid(ModelMap map, HttpServletRequest req) {

        if (Utils.isAuthenticated(req)) {
            System.out.println("IN EDIT");
            int id = Integer.parseInt(req.getParameter("id"));
            String name = req.getParameter("title");
            PreBrochures brochures = new PreBrochures();
            brochures.setTitle(name);
            brochures.setPreBrochuresId(id);

            PreBrochuresBusiness brochuresBusiness = new PreBrochuresBusiness();

            PreBrochures brochuresObj = brochuresBusiness.searchById(id);

            brochures.setPerson(brochuresObj.getPerson());

            System.out.println(brochuresBusiness.update(brochures));

            List<PreBrochures> brochuresList = brochuresBusiness.search();
            
            map.addAttribute("list", brochuresList);
            return "redirect:/admin_search_prebrochures";
        } else {
            return "redirect:/login";
        }

    }
    @RequestMapping("/admin_download_brochures")
    public String downloadBrochurea(ModelMap map, HttpServletRequest req) {

        if (Utils.isAuthenticated(req)) {
            PreBrochuresBusiness brochuresBusiness = new PreBrochuresBusiness();
            int id = Integer.parseInt(req.getParameter("id"));
            PreBrochures bro = brochuresBusiness.searchById(id);
            if(bro!=null){
                
            }
            return "redirect:/admin_search_prebrochures";
        } else {
            return "redirect:/login";
        }

    }
}
