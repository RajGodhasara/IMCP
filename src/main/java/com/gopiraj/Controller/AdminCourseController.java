
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Controller;

import com.gopiraj.Business.CourseBusiness;
import com.gopiraj.Business.Utils;
import com.gopiraj.Model.Corporates;
import com.gopiraj.Model.Course;
import com.gopiraj.Model.Person;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
public class AdminCourseController {

    @RequestMapping("/admin_add_course")
    public ModelAndView getAdminAddCourse(ModelMap map, HttpServletRequest req) {

        if (Utils.isAuthenticated(req)) {
            ModelAndView model = new ModelAndView("AdminJsp-AddCourse", "command", new Course());
            return model;
        } else {
            ModelAndView model1 = new ModelAndView("redirect:/login", "command", new Corporates());
            return model1;
        }

    }

    @RequestMapping("/admin_search_course")
    public String getAdminSearchCourse(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            CourseBusiness business = new CourseBusiness();
            List<Course> list = new ArrayList<Course>();
            list = business.search();
            System.out.println("Size:" + list.size());
            map.addAttribute("list", list);

            return "AdminJsp-SearchCourse";
        } else {
            return "redirect:/login";
        }

    }

    @RequestMapping("/admin_insert_course")
    public ModelAndView getAdminInsertCourse(HttpServletResponse res, HttpServletRequest rq, ModelMap map, @ModelAttribute Course course) {

        if (Utils.isAuthenticated(rq)) {
            CourseBusiness business = new CourseBusiness();
            if (rq.getSession(false) != null) {
                HttpSession session = rq.getSession(false);
                Person person = (Person) session.getAttribute("person");
                course.setOrganizationAdmin(person.getOrganizationAdmin());
            }

            String answer = business.insert(course);

            System.out.println(answer);

            ModelAndView model = new ModelAndView("AdminJsp-AddCourse", "command", new Course());
            model.addObject(answer);
            return model;
        } else {
            ModelAndView model1 = new ModelAndView("redirect:/login", "command", new Corporates());
            return model1;
        }

    }

    @RequestMapping("/admin_delete_multiple_course")
    public String deleteMultipleStudent(ModelMap map, HttpServletRequest req) {

        if (Utils.isAuthenticated(req)) {
            CourseBusiness courseBusiness = new CourseBusiness();
            String id = req.getParameter("listSelectedCourse");
            if (id != null) {
                List<Course> st = courseBusiness.getStudentObject(id);
                if (st != null) {
                    courseBusiness.deleteMultiple(st);
                } else {
                    System.out.println("IN ELSE");
                }
            }
            List<Course> list = new ArrayList<Course>();
            list = courseBusiness.search();
            map.addAttribute("list", list);
            return "redirect:/admin_search_course";
        } else {
            return "redirect:/login";
        }

    }

    @RequestMapping("/EditCourse")
    public String editGrid(ModelMap map, HttpServletRequest req) {

        if (Utils.isAuthenticated(req)) {
            System.out.println("IN EDIT");
            int id = Integer.parseInt(req.getParameter("id"));
            String name = req.getParameter("name");
            int dur = Integer.parseInt(req.getParameter("dur"));
            String desc = req.getParameter("desc");
            String admin = req.getParameter("admin");
            Course course = new Course();
            course.setCourseName(name);
            course.setDescription(desc);
            course.setDuration(dur);
            course.setCourseId(id);

            CourseBusiness courseBusiness = new CourseBusiness();

            Course courseObj = courseBusiness.searchById(id);

            course.setOrganizationAdmin(courseObj.getOrganizationAdmin());

            CourseBusiness business = new CourseBusiness();
            System.out.println(business.update(course));

            List<Course> st1 = business.search();
            System.out.println("Size:" + st1.size());
            map.addAttribute("list", st1);
            return "redirect:/admin_search_course";
        } else {
            return "redirect:/login";
        }

    }

}
