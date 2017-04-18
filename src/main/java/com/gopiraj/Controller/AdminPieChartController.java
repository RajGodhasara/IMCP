/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Controller;

import com.gopiraj.Business.CourseBusiness;
import com.gopiraj.Business.EmployeeBusiness;
import com.gopiraj.Business.EnquiryBusiness;
import com.gopiraj.Business.Utils;
import com.gopiraj.Model.Course;
import com.gopiraj.Model.Employee;
import com.gopiraj.Model.Enquiry;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author GOPIRAJ
 */
@Controller
public class AdminPieChartController {

    private static final String UPLOAD_DIRECTORY = "/charts";

    @RequestMapping("/admin_add_piechart")
    public String getAdminAddBarChart(ModelMap map, HttpServletRequest req, HttpSession session) {
        if (Utils.isAuthenticated(req)) {
            return "AdminJsp-AddPieChart";
        } else {
            return "redirect:/login";
        }
    }

    @RequestMapping("/admin_add_piechart_generate")
    public String getAdminAddBarChartSMS(ModelMap map, HttpServletRequest req, HttpSession session) {
        if (Utils.isAuthenticated(req)) {

            CourseBusiness courseBusiness = new CourseBusiness();
            List<Course> courseList = courseBusiness.search();
            EnquiryBusiness business = new EnquiryBusiness();
            List<Enquiry> enquiryList = business.search();

            List courseListFianl = new ArrayList();
            for (int i = 0; i < enquiryList.size(); i++) {
                Enquiry enquiry = enquiryList.get(i);
                System.out.println("ENQUIRY:" + enquiry.getFirstName());
                List list = new ArrayList();
                list.addAll(enquiry.getEnqCourse());
                System.out.println("SIZE:" + list.size());
                for (int j = 0; j < list.size(); j++) {
                    Course course = (Course) list.get(j);
                    System.out.println("COURSE:" + course.getCourseName());
                    courseListFianl.add(course.getCourseName());
                }
            }

            HashMap<String, Integer> hm = new HashMap<String, Integer>();
            for (int i = 0; i < courseList.size(); i++) {
                Course course = courseList.get(i);
                int occurrences = Collections.frequency(courseListFianl, course.getCourseName());
                hm.put(course.getCourseName(), occurrences);
            }

            // Create a simple pie chart
            DefaultPieDataset pieDataset = new DefaultPieDataset();
            for (Map.Entry m : hm.entrySet()) {
                System.out.println(m.getKey() + " " + m.getValue());
                String CN = m.getKey().toString();
                Integer val = Integer.parseInt(m.getValue().toString());
                pieDataset.setValue(CN, val);
            }

            JFreeChart chart = ChartFactory.createPieChart("Enquiry For Individual Course", // Title
                    pieDataset, // Dataset
                    true, // Show legend
                    true, // Use tooltips
                    false // Configure chart to generate URLs?
            );
            try {
                String path = session.getServletContext().getRealPath(UPLOAD_DIRECTORY);
                ChartUtilities.saveChartAsJPEG(new File(path+"\\PieChartEquiry.jpg"), chart, 500, 300);
            } catch (Exception e) {
                System.out.println("Problem occurred creating chart.");
            }
            return "redirect:/admin_add_piechart";
        } else {
            return "redirect:/login";
        }
    }
}
