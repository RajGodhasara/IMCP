/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Controller;

import com.gopiraj.Business.Crypt;
import com.gopiraj.Business.EmployeeBusiness;
import com.gopiraj.Business.Utils;
import com.gopiraj.Model.Employee;
import com.gopiraj.Model.Person;
import com.gopiraj.Model.PersonContactno;
import com.gopiraj.Model.PersonType;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author GOPIRAJ
 */
@Controller
public class SuperAdminController {
    @RequestMapping("/super_admin")
    public String getSuperAdmin(final RedirectAttributes redirectAttributes,ModelMap map, HttpServletRequest req) {
        EmployeeBusiness employeeBusiness = new EmployeeBusiness();
            List<PersonType> list = employeeBusiness.search();
            if(list.isEmpty()){
                return "SuperAdminJsp";
            }else{
                System.out.println("IN ELSE");
                redirectAttributes.addFlashAttribute("status", "You have already created SuperAdmin account.");
                //return "redirect:/login";
                return "SuperAdminJsp";
            }
    }
    
    @RequestMapping("/super_admin_insert")
    public String getSuperAdminInsert(final RedirectAttributes redirectAttributes,ModelMap map, HttpServletRequest req) {
        
            Date date = null;
            
            String firstName = req.getParameter("firstName");
            String middleName = req.getParameter("middleName");
            String lastName = req.getParameter("lastName");
//        if(req.getParameter("date")!=null){
//            date=null;
//        try{
//            SimpleDateFormat formatter = new SimpleDateFormat("MMM dd, yyyy");
//            date = formatter.parse(req.getParameter("date")); 
//        }catch(Exception e){
//            e.printStackTrace();
//        }
//        }

            String contactNo2 = null;
            String contactNo3 = null;
            String contactNo4 = null;
            String contactNo5 = null;
            String mailId = req.getParameter("mailId");
            String personType = req.getParameter("personType");
            String password = req.getParameter("password");
            String streetAdd = req.getParameter("streetAdd");
            String state = req.getParameter("state");
            String city = req.getParameter("city");
            String gender = req.getParameter("gender");
            String position = req.getParameter("position");
            String contactNo = req.getParameter("dynamic1");
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

            Person person = new Person();
            Employee employee = new Employee();
            EmployeeBusiness empBusiness = new EmployeeBusiness();

            person.setFirstName(firstName);
            person.setMiddleName(middleName);
            person.setLastName(lastName);
            //person.setDateOfBirth(date);
            person.setPersonType(personType);
            person.setCity(city);
            person.setState(state);
            person.setStreetAdd(streetAdd);
            person.setMailId(mailId);
            person.setGender(gender);
            person.setCreationTime(new Date());

            String encPass = null;
            try {
                Crypt crypt = new Crypt();
                encPass = crypt.encrypt(password);
            } catch (Exception e) {
                System.out.println("error in encrypting password" + e.getMessage());
            }

            employee.setAccessLevel(personType);
            if (encPass != null) {
                employee.setPassword(encPass);
            }

            employee.setPosition(position);
            employee.setPerson(person);
            
            String answer = empBusiness.insert(employee);
            System.out.println(answer);

            if (contactNo != null) {
                PersonContactno cn = new PersonContactno();
                cn.setContactNo(Long.parseLong(contactNo));
                cn.setPerson(person);
                System.out.println(empBusiness.insertContactno(cn));
            }
            if (contactNo2 != null) {
                PersonContactno cn = new PersonContactno();
                cn.setContactNo(Long.parseLong(contactNo2));
                cn.setPerson(person);
                System.out.println(empBusiness.insertContactno(cn));
            }
            if (contactNo3 != null) {
                PersonContactno cn = new PersonContactno();
                cn.setContactNo(Long.parseLong(contactNo3));
                cn.setPerson(person);
                System.out.println(empBusiness.insertContactno(cn));
            }
            if (contactNo4 != null) {
                PersonContactno cn = new PersonContactno();
                cn.setContactNo(Long.parseLong(contactNo4));
                cn.setPerson(person);
                System.out.println(empBusiness.insertContactno(cn));
            }
            if (contactNo5 != null) {
                PersonContactno cn = new PersonContactno();
                cn.setContactNo(Long.parseLong(contactNo5));
                cn.setPerson(person);
                System.out.println(empBusiness.insertContactno(cn));
            }

            if(answer.equals("Inserted.")){
                redirectAttributes.addFlashAttribute("status", "SuperAdmin account created successfully.");
                return "redirect:/login";
            }else{
                redirectAttributes.addFlashAttribute("status", "Some problem occured please try again.");
                return "redirect:/login";
            }
        
    }
}
