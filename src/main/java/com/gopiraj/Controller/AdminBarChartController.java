/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Controller;

import com.gopiraj.Business.EmployeeBusiness;
import com.gopiraj.Business.Utils;
import com.gopiraj.Model.Employee;
import com.gopiraj.Model.SentSms;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author GOPIRAJ
 */
@Controller
public class AdminBarChartController {
    
    private static final String UPLOAD_DIRECTORY = "/charts";

    @RequestMapping("/admin_add_barchart")
    public String getAdminAddBarChart(ModelMap map, HttpServletRequest req, HttpSession session) {
        if (Utils.isAuthenticated(req)) {
            String path = session.getServletContext().getRealPath(UPLOAD_DIRECTORY);
            
            System.out.println(req.getContextPath());
            return "AdminJsp-AddBarChart";
        } else {
            return "redirect:/login";
        }
    }

    @RequestMapping("/admin_add_barchart_Email")
    public String getAdminAddBarChartSMS(ModelMap map, HttpServletRequest req, HttpSession session) {
        if (Utils.isAuthenticated(req)) {

            EmployeeBusiness business = new EmployeeBusiness();
            List<Employee> employees = business.search();
            
            // Create a simple Bar chart
            DefaultCategoryDataset dataset = new DefaultCategoryDataset();
            for(int i=0;i<employees.size();i++){
                Employee emp = employees.get(i);
                System.out.println("SIZE:"+emp.getPerson().getSentMails().size());
                dataset.setValue(emp.getPerson().getSentMails().size(), "Number of Mail", emp.getPerson().getFirstName());
            }
            String path = session.getServletContext().getRealPath(UPLOAD_DIRECTORY);
            JFreeChart chart = ChartFactory.createBarChart("Comparison between Employees",
                    "Employee", "Number of Mail", dataset, PlotOrientation.VERTICAL,
                    false, true, false);
            try {
                
                System.err.println("Path:"+path);
                ChartUtilities.saveChartAsJPEG(new File(path+"\\BarChartEmail.jpg"), chart, 500, 300);
            } catch (IOException e) {
                System.err.println("Problem occurred creating chart."+e.getMessage());
            }

            
            return "redirect:/admin_add_barchart";
        } else {
            return "redirect:/login";
        }
    }
    @RequestMapping("/admin_add_barchart_SMS")
    public String getAdminAddBarChartMail(ModelMap map, HttpServletRequest req, HttpSession session) {
        if (Utils.isAuthenticated(req)) {

            EmployeeBusiness business = new EmployeeBusiness();
            List<Employee> employees = business.search();
            
            // Create a simple Bar chart
            DefaultCategoryDataset dataset = new DefaultCategoryDataset();
            for(int i=0;i<employees.size();i++){
                Employee emp = employees.get(i);
                System.out.println("SIZE:"+emp.getPerson().getSentSmses().size());
                dataset.setValue(emp.getPerson().getSentSmses().size(), "Number of SMS", emp.getPerson().getFirstName());
            }
            String path = session.getServletContext().getRealPath(UPLOAD_DIRECTORY);
            JFreeChart chart = ChartFactory.createBarChart("Comparison between Employees",
                    "Employee", "Number of SMS", dataset, PlotOrientation.VERTICAL,
                    false, true, false);
            try {
                
                System.err.println("Path:"+path);
                ChartUtilities.saveChartAsJPEG(new File(path+"\\BarChartSMS.jpg"), chart, 500, 300);
            } catch (IOException e) {
                System.err.println("Problem occurred creating chart."+e.getMessage());
            }

            
            return "redirect:/admin_add_barchart";
        } else {
            return "redirect:/login";
        }
    }
}
