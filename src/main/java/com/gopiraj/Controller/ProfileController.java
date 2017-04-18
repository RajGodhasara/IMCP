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
import com.gopiraj.Model.Login;
import com.gopiraj.Model.Person;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author GOPIRAJ
 */
@Controller
public class ProfileController {

    @RequestMapping("/profile")
    public ModelAndView getProfile(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            ModelAndView model = new ModelAndView("Profile", "command", new Person());

            return model;
        } else {
            ModelAndView model = new ModelAndView("redirect:/login", "command", new Login());
            return model;
        }

    }

    @RequestMapping("/changePassword")
    public String changePassword(final RedirectAttributes redirectAttributes, ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {

            String currentPassword = null;
            currentPassword = req.getParameter("currentPassword");
            System.err.println("CurrentPassowrd:" + currentPassword);
            String newPassword = null;
            newPassword = req.getParameter("newPassword");
            System.err.println("NewPassowrd:" + newPassword);
            System.out.println();
            if (currentPassword != null && newPassword != null) {
                EmployeeBusiness business = new EmployeeBusiness();
                Crypt crypt = new Crypt();
                HttpSession session = req.getSession(false);
                Person person = (Person) session.getAttribute("person");
                try {
                    System.err.println("personPassowrd:" + crypt.decrypt(person.getEmployee().getPassword()));
                    System.err.println("Encrypted password:" + currentPassword);
                    if (crypt.decrypt(person.getEmployee().getPassword()).equals(currentPassword)) {
                        Employee emp = person.getEmployee();

                        emp.setPassword(crypt.encrypt(newPassword));

                        System.out.println(business.update(emp));
                        redirectAttributes.addFlashAttribute("changepassword", "Your password is updated successfully.");
                    } else {
                        redirectAttributes.addFlashAttribute("changepassword", "Your current password is not matching.");
                        System.out.println("current password is not matching");
                    }
                } catch (Exception e) {
                    redirectAttributes.addFlashAttribute("changepassword", "Something went Wrong.");
                    System.out.println(e.getMessage());
                }
            } else {
                redirectAttributes.addFlashAttribute("changepassword", "Current password and new password cant be empty.");
                System.out.println("currentpassword or new password empty");
            }
            return "redirect:/profile";
        } else {
            return "redirect:/login";
        }

    }
}
