/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Controller;

import com.gopiraj.Model.Employee;
import com.gopiraj.Model.Person;
import java.util.HashMap;
import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author GOPIRAJ
 */
@Controller
public class AdminEmployeeController {
    @RequestMapping("/admin_add_employee")
    public ModelAndView getAdminAddEmployee(ModelMap map)
    {
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("Employee", new Employee());
        model.put("Person",new Person() );
        ModelAndView modelCombine = new ModelAndView("AdminJsp-AddEmployee","command",model);
        modelCombine.addObject("emp",new Employee());
        return modelCombine;
    }
    
    @RequestMapping("/admin_search_employee")
    public ModelAndView getAdminSearchAdmin(ModelMap map)
    {
        ModelAndView model = new ModelAndView("AdminJsp-SearchEmployee","command",new Person());
        return model;
    }
}
