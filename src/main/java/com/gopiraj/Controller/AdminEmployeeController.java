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

/**
 *
 * @author GOPIRAJ
 */
@Controller
public class AdminEmployeeController {

    @RequestMapping("/admin_add_employee")
    public String getAdminAddEmployee(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
        EmployeeBusiness employeeBusiness = new EmployeeBusiness();
            List<PersonType> list = employeeBusiness.searchbyPersonType();
            if (list != null) {
                System.out.println("SIZE:" + list.size());
                map.addAttribute("list", list);
            }
            return "AdminJsp-AddEmployee";
        } else {
            return "redirect:/login";
        }

    }

    @RequestMapping("/admin_add_employee_insert")
    public String getAdminAddEmployeeInsert(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
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

            System.out.println(empBusiness.insert(employee));

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

            EmployeeBusiness employeeBusiness = new EmployeeBusiness();
            List<PersonType> list = employeeBusiness.searchbyPersonType();
            if (list != null) {
                map.addAttribute("list", list);
            }
            return "AdminJsp-AddEmployee";
        } else {
            return "redirect:/login";
        }
    }

    @RequestMapping("/admin_search_employee")
    public String getAdminSearchAdmin(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            EmployeeBusiness business = new EmployeeBusiness();
            List<Employee> list = business.search();
            map.addAttribute("list", list);

            return "AdminJsp-SearchEmployee";
        } else {
            return "redirect:/login";
        }

    }
}
