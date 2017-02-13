/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Controller;

import com.gopiraj.Business.CourseBusiness;
import com.gopiraj.Model.Course;
import com.gopiraj.Model.OrganizationAdmin;
import com.gopiraj.Model.Person;
import com.gopiraj.dispature.MyDispatureServlet;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.SessionFactory;
import org.json.JSONArray;
import org.json.JSONObject;
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
    public ModelAndView getAdminAddCourse(ModelMap map) {

        ModelAndView model = new ModelAndView("AdminJsp-AddCourse", "command", new Course());
        return model;
    }
    
    @RequestMapping("/admin_search_course")
    public ModelAndView getAdminSearchCourse(ModelMap map) {

        System.out.println("IN admin_search_course");
        ModelAndView model = new ModelAndView("AdminJsp-SearchCourse", "command", new Course());
        return model;
    }
    
    @RequestMapping("/admin_insert_course")
    public ModelAndView getAdminInsertCourse(ModelMap map,@ModelAttribute Course course,HttpServletRequest res) {
        
        SessionFactory sf = MyDispatureServlet.getSessionFactory();
        CourseBusiness business = new CourseBusiness();
        Person person=null;
        
        HttpSession session = res.getSession(false);
        person = (Person)session.getAttribute("person");
        if(person!=null){
            course.setOrganizationAdmin(person.getOrganizationAdmin());
            System.out.println("setting admin");
        }
        
        String answer = business.insert(course, sf);
        System.out.println(answer);
        
        ModelAndView model = new ModelAndView("AdminJsp-AddCourse", "command", new Course());
        model.addObject(answer);
        return model;
    }
    
    @RequestMapping("/admin_search_course_grid")
    public String getAdminSearchCourse(ModelMap map,@ModelAttribute Course course,HttpServletResponse res) {
        PrintWriter out1=null;
        SessionFactory sf = MyDispatureServlet.getSessionFactory();
        CourseBusiness business = new CourseBusiness();
        try{
           out1 = res.getWriter();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        
        JSONObject obj1 = new JSONObject();
        try{
                
                        JSONArray array = new JSONArray();
                  
                        List list1 = business.search(sf);
                        int n=list1.size();
                        System.out.println("len:"+n);
                        for(int i=0;i<n;i++)
                        {
                            
                            System.out.println();
                            course =(Course) list1.get(i);
                            //System.out.println("Record:"+(i+1));
                            JSONObject obj = new JSONObject();
                            obj.put("CourseID", course.getCourseId());
                            obj.put("CourseName", course.getCourseName());
                            //System.out.println(course.getCourseId());
                            obj.put("Description", course.getDescription());
                            obj.put("OrganizationAdmin", course.getOrganizationAdmin().getPerson().getFirstName());
                            obj.put("Duration", course.getDuration());
                  
                            /* 
                            obj.put("CreationTime", rs.getDate("Creation_Time"));
                    
                            */                         
                              array.put(obj);
                        }
                    
                
                obj1.put("rows", array);
                System.out.println(obj1.toString());
                out1.print(obj1.toString());
                
                }
                catch(Exception e)
                {
                    e.printStackTrace();
                }
        return null;
    }
    
}
