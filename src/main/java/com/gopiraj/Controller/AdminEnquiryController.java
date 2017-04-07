/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Controller;

import com.gopiraj.Business.CourseBusiness;
import com.gopiraj.Business.EnquiryBusiness;
import com.gopiraj.Business.Utils;
import com.gopiraj.Model.Course;
import com.gopiraj.Model.Enquiry;
import com.gopiraj.Model.EnquiryContactno;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
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
public class AdminEnquiryController {

    @RequestMapping("/admin_add_enquiry")
    public ModelAndView getAdminAddCourse(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            ModelAndView model = new ModelAndView("AdminJsp-AddEnquiry", "command", new Enquiry());
            CourseBusiness business = new CourseBusiness();
            List<Course> course = business.search();
            model.addObject("course", course);
            return model;
        } else {
            ModelAndView model = new ModelAndView("redirect:/login", "command", new Enquiry());
            return model;
        }

    }

    @RequestMapping("/admin_insert_enquiry")
    public ModelAndView getAdminInsertCourse(ModelMap map, @ModelAttribute Enquiry enq, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            String contactNo1 = null;
            String contactNo2 = null;
            String contactNo3 = null;
            String contactNo4 = null;
            String contactNo5 = null;
            if (req.getParameter("dynamic1") != null) {
                contactNo1 = req.getParameter("dynamic1");
                System.out.println(req.getParameter("dynamic1"));
            }
            if (req.getParameter("dynamic2") != null) {
                contactNo2 = req.getParameter("dynamic2");
                System.out.println(req.getParameter("dynamic2"));
            }
            if (req.getParameter("dynamic3") != null) {
                contactNo3 = req.getParameter("dynamic3");
                System.out.println(req.getParameter("dynamic3"));
            }
            if (req.getParameter("dynamic4") != null) {
                contactNo4 = req.getParameter("dynamic4");
                System.out.println(req.getParameter("dynamic4"));
            }
            if (req.getParameter("dynamic5") != null) {
                contactNo5 = req.getParameter("dynamic5");
                System.out.println(req.getParameter("dynamic5"));
            }

            Set courseSet = new HashSet();
            CourseBusiness courseBusiness = new CourseBusiness();
            String[] courses = req.getParameterValues("course");
            for (String courseId : courses) {
                Course course = courseBusiness.searchById(Integer.parseInt(courseId));
                courseSet.add(course);
            }

            enq.setEnqCourse(courseSet);

            EnquiryBusiness business = new EnquiryBusiness();
            enq.setGender("Male");
            enq.setCreationTime(new Date());

            if (enq != null) {
                System.out.println(business.insert(enq));
            }

            if (contactNo1 != null) {
                EnquiryContactno cn = new EnquiryContactno();
                cn.setContactNumber(Long.parseLong(contactNo1));
                cn.setEnquiry(enq);
                System.out.println(business.insertContact(cn));
            }
            if (contactNo2 != null) {
                EnquiryContactno cn = new EnquiryContactno();
                cn.setContactNumber(Long.parseLong(contactNo2));
                cn.setEnquiry(enq);
                System.out.println(business.insertContact(cn));
            }
            if (contactNo3 != null) {
                EnquiryContactno cn = new EnquiryContactno();
                cn.setContactNumber(Long.parseLong(contactNo3));
                cn.setEnquiry(enq);
                System.out.println(business.insertContact(cn));
            }
            if (contactNo4 != null) {
                EnquiryContactno cn = new EnquiryContactno();
                cn.setContactNumber(Long.parseLong(contactNo4));
                cn.setEnquiry(enq);
                System.out.println(business.insertContact(cn));
            }
            if (contactNo5 != null) {
                EnquiryContactno cn = new EnquiryContactno();
                cn.setContactNumber(Long.parseLong(contactNo5));
                cn.setEnquiry(enq);
                System.out.println(business.insertContact(cn));
            }

            ModelAndView model = new ModelAndView("AdminJsp-AddEnquiry", "command", new Enquiry());
            return model;
        } else {
            ModelAndView model = new ModelAndView("redirect:/login", "command", new Enquiry());
            return model;
        }
    }

    @RequestMapping("/admin_add_excel_insert")
    public ModelAndView getAdminInsertExcel(ModelMap map, HttpServletRequest res,
            @RequestParam CommonsMultipartFile file, HttpSession session) {

        Workbook wb = null;
        try {
            File convFile = new File(file.getOriginalFilename());
            file.transferTo(convFile);
            wb = new XSSFWorkbook(convFile);
        } catch (Exception e) {
            System.out.println("Error1:" + e.getMessage());
        }

        try {

            if (wb != null) {
                Sheet sh = wb.getSheetAt(0);
                Iterator<Row> it = sh.iterator();
                while (it.hasNext()) {
                    Enquiry enq = new Enquiry();
                    EnquiryBusiness business = new EnquiryBusiness();
                    EnquiryContactno cn = new EnquiryContactno();
                    EnquiryContactno cn1 = new EnquiryContactno();
                    Row row = it.next();
                    Iterator<Cell> ic = row.cellIterator();
                    int i = 1;
                    while (ic.hasNext()) {
                        Cell c = ic.next();
                        
                        if(c.getCellType()==Cell.CELL_TYPE_NUMERIC){
                            if(DateUtil.isCellDateFormatted(c)){
                                c.setCellType(Cell.CELL_TYPE_NUMERIC);
                            }else{
                                c.setCellType(Cell.CELL_TYPE_STRING);
                            }
                        }else{
                            c.setCellType(Cell.CELL_TYPE_STRING);
                        }
                        
                        
                        switch (c.getCellType()) {
                            case Cell.CELL_TYPE_STRING:

                                if (i == 1) {
                                    System.out.println("Integer1:" + c.getStringCellValue());
                                    //enq.setPersonTypeId(Integer.parseInt(c.getNumericCellValue()));
                                }
                                if (i == 2) {
                                    System.out.println("String2:" + c.getStringCellValue());
                                    enq.setFirstName(c.getStringCellValue());
                                }
                                if (i == 3) {
                                    System.out.println("String3:" + c.getStringCellValue());
                                    enq.setMiddleName(c.getStringCellValue());
                                }
                                if (i == 4) {
                                    System.out.println("String3:" + c.getStringCellValue());
                                    enq.setLastName(c.getStringCellValue());
                                }
                                if (i == 5) {
                                    System.out.println("String3:" + c.getStringCellValue());
                                    enq.setMailId(c.getStringCellValue());
                                }
                                
                                if (i == 7) {
                                    System.out.println("String3:" + c.getStringCellValue());
                                    enq.setStreetAddress(c.getStringCellValue());
                                }
                                if (i == 8) {
                                    System.out.println("String3:" + c.getStringCellValue());
                                    enq.setCity(c.getStringCellValue());
                                }
                                if (i == 9) {
                                    System.out.println("String3:" + c.getStringCellValue());
                                    enq.setState(c.getStringCellValue());
                                }
                                if (i == 10) {
                                    System.out.println("String3:" + c.getStringCellValue());
                                    enq.setGender(c.getStringCellValue());
                                }
                                if (i == 11) {
                                    System.out.println("String3:" + c.getStringCellValue());
                                    enq.setClgName(c.getStringCellValue());
                                }
                                if (i == 12) {
                                    System.out.println("String3:" + c.getStringCellValue());
                                    enq.setBranch(c.getStringCellValue());
                                }
                                if (i == 13) {
                                    System.out.println("Integer2:" + c.getStringCellValue());
                                    enq.setSemester(String.valueOf(c.getStringCellValue()));
                                }
                                if (i == 14) {
                                    System.out.println("String3:" + c.getStringCellValue());
                                    enq.setStatus(c.getStringCellValue());
                                }
                                if (i == 15) {
                                    System.out.println("Integer2:" + c.getStringCellValue());
                                    cn.setContactNumber(Long.parseLong(String.valueOf(c.getStringCellValue())));
                                    cn.setEnquiry(enq);
                                }
                                if (i == 16) {
                                    System.out.println("Integer2:" + c.getStringCellValue());
                                    cn1.setContactNumber(Long.parseLong(String.valueOf(c.getStringCellValue())));
                                    cn1.setEnquiry(enq);
                                }

                                break;
                                
                            case Cell.CELL_TYPE_NUMERIC:
                                if(i==6){
                                    if (DateUtil.isCellDateFormatted(c)) {
                                        System.out.println("Date:" + c.getDateCellValue());
                                        enq.setDob(c.getDateCellValue());
                                    }
                                }
                                break;
                            
                            case Cell.CELL_TYPE_BLANK:
                                
                                if (i == 15) {
                                    System.out.println("Integer2: BLANK");
                                    
                                }
                                if (i == 16) {
                                    System.out.println("Integer2: BLANK" );
                                    
                                }
                                    break;
                            
                        }
                        i++;
                    }
                    System.out.println(business.insert(enq));
                    if(cn!=null){
                        System.out.println(business.insertContact(cn));
                    }
                    if(cn1!=null){
                        System.out.println(business.insertContact(cn1));
                    }
                }
            }

        } catch (Exception e) {
            System.out.println("Error2:" + e.getMessage());
            System.out.println("Error2:" + e.getStackTrace());
        }
        ModelAndView model = new ModelAndView("AdminJsp-AddEnquiry", "command", new Enquiry());
        return model;

    }
    
    @RequestMapping("/admin_search_enquiry")
    public String getAdminSearchCourse(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            EnquiryBusiness business = new EnquiryBusiness();
            List<Enquiry> list = new ArrayList<Enquiry>();
            list = business.search();
            System.out.println("Size:" + list.size());
            map.addAttribute("list", list);

            return "AdminJsp-SearchEnquiry";
        } else {
            return "redirect:/login";
        }

    }
    
    @RequestMapping("/admin_delete_multiple_enquiry")
    public String deleteMultipleStudent(ModelMap map, HttpServletRequest req) {

        if (Utils.isAuthenticated(req)) {
            EnquiryBusiness enquiryBusiness = new EnquiryBusiness();
            String id = req.getParameter("listSelectedEnquiry");
            if (id != null) {
                List<Enquiry> st = enquiryBusiness.getEnquiryObject(id);
                if (st != null) {
                    enquiryBusiness.deleteMultiple(st);
                } else {
                    System.out.println("IN ELSE");
                }
            }
            List<Course> list = new ArrayList<Course>();
            list = enquiryBusiness.search();
            map.addAttribute("list", list);
            return "redirect:/admin_search_enquiry";
        } else {
            return "redirect:/login";
        }

    }
    
    
}
