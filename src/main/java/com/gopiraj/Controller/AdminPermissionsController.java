/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 */
package com.gopiraj.Controller;

import com.gopiraj.Business.ApplicationConstants;
import com.gopiraj.Business.MenuMasterBusiness;
import com.gopiraj.Business.MenuTypeBusiness;
import com.gopiraj.Business.PersonTypeBusiness;
import com.gopiraj.Business.SubmenuMasterBusiness;
import com.gopiraj.Business.Utils;
import com.gopiraj.Model.MenuMaster;
import com.gopiraj.Model.MenuType;
import com.gopiraj.Model.PersonType;
import com.gopiraj.Model.SubmenuMaster;
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
public class AdminPermissionsController {

    @RequestMapping("/admin_add_permissions")
    public String getAdmin(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            PersonTypeBusiness business = new PersonTypeBusiness();
            List<PersonType> list = business.search();
            map.addAttribute("list", list);
            return "AdminJsp-AddPermissions";
        } else {
            return "redirect:/login";
        }

    }

    @RequestMapping("/admin_add_person_insert")
    public String getAdminAddPersonInsert(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            PersonTypeBusiness business = new PersonTypeBusiness();
            String name = req.getParameter("PersonName");
            if (name != null) {
                PersonType type = new PersonType();
                type.setPersonTypeName(name);

                System.out.println(business.insert(type));
            }

            List<PersonType> list = business.search();
            map.addAttribute("list", list);
            return "AdminJsp-AddPermissions";
        } else {
            return "redirect:/login";
        }

    }

    @RequestMapping("/admin_add_permission_insert")
    public String getAdminAddPermissionsInsert(ModelMap map, HttpServletRequest req) {
        if (Utils.isAuthenticated(req)) {
            String ptype = req.getParameter("ptype");

            checkForAvailable(req.getParameter("AddCourse"), req.getParameter("SearchCourse"), ptype);
            checkForAvailable(req.getParameter("AddPreText"), req.getParameter("SearchPreText"), ptype);
            checkForAvailable(req.getParameter("AddBrochures"), req.getParameter("SearchBrochures"), ptype);
            checkForAvailable(req.getParameter("AddEmployee"), req.getParameter("SearchEmployee"), ptype);
            checkForAvailable(req.getParameter("AddAdmin"), req.getParameter("SearchAdmin"), ptype);
            checkForAvailable(req.getParameter("SendMail"), req.getParameter("SearchSendMail"), ptype);
            checkForAvailable(req.getParameter("AddEnquiry"), req.getParameter("SearchEnquiry"), ptype);
            checkForAvailable(req.getParameter("AddPost"), "", ptype);

            PersonTypeBusiness business = new PersonTypeBusiness();
            List<PersonType> list = business.search();
            map.addAttribute("list", list);
            return "AdminJsp-AddPermissions";
        } else {
            return "redirect:/login";
        }

    }

    private void checkForAvailable(String add, String search, String ptype) {
        if (!add.isEmpty() && !search.isEmpty()) {
            if (add.equals("AddCourse") && search.equals("SearchCourse")) {
                String main = ApplicationConstants.manageCourse;
                String addName = ApplicationConstants.manageCourseAdd;
                String addLink = ApplicationConstants.manageCourseAddLink;
                String searchName = ApplicationConstants.manageCourseSerach;
                String searchLink = ApplicationConstants.manageCourseSerachLink;
                insertForPermissions(ptype, Boolean.TRUE, Boolean.TRUE, main, addName, addLink, searchName, searchLink);
            }

            if (add.equals("AddPreText") && search.equals("SearchPreText")) {
                String main = ApplicationConstants.managePretext;
                String addName = ApplicationConstants.managePretextAdd;
                String addLink = ApplicationConstants.managePretextAddLink;
                String searchName = ApplicationConstants.managePretextSerach;
                String searchLink = ApplicationConstants.managePretextSerachLink;
                insertForPermissions(ptype, Boolean.TRUE, Boolean.TRUE, main, addName, addLink, searchName, searchLink);
            }

            if (add.equals("AddBrochures") && search.equals("SearchBrochures")) {
                String main = ApplicationConstants.managePreBrochures;
                String addName = ApplicationConstants.managePreBrochuresAdd;
                String addLink = ApplicationConstants.managePreBrochuresAddLink;
                String searchName = ApplicationConstants.managePreBrochuresSerach;
                String searchLink = ApplicationConstants.managePreBrochuresSerachLink;
                insertForPermissions(ptype, Boolean.TRUE, Boolean.TRUE, main, addName, addLink, searchName, searchLink);
            }

            if (add.equals("AddEmployee") && search.equals("SearchEmployee")) {
                String main = ApplicationConstants.manageEmployee;
                String addName = ApplicationConstants.manageEmployeeAdd;
                String addLink = ApplicationConstants.manageEmployeeAddLink;
                String searchName = ApplicationConstants.manageEmployeeSerach;
                String searchLink = ApplicationConstants.manageEmployeeSerachLink;
                insertForPermissions(ptype, Boolean.TRUE, Boolean.TRUE, main, addName, addLink, searchName, searchLink);
            }

            if (add.equals("AddAdmin") && search.equals("SearchAdmin")) {
                String main = ApplicationConstants.manageAdmin;
                String addName = ApplicationConstants.manageAdminAdd;
                String addLink = ApplicationConstants.manageAdminAddLink;
                String searchName = ApplicationConstants.manageAdminSerach;
                String searchLink = ApplicationConstants.manageAdminSerachLink;
                insertForPermissions(ptype, Boolean.TRUE, Boolean.TRUE, main, addName, addLink, searchName, searchLink);
            }
            if (add.equals("SendMail") && search.equals("SearchSendMail")) {
                String main = ApplicationConstants.manageSendMail;
                String addName = ApplicationConstants.manageSendMailAdd;
                String addLink = ApplicationConstants.manageSendMailAddLink;
                String searchName = ApplicationConstants.manageSendMailSerach;
                String searchLink = ApplicationConstants.manageSendMailSerachLink;
                insertForPermissions(ptype, Boolean.TRUE, Boolean.TRUE, main, addName, addLink, searchName, searchLink);
            }
            if (add.equals("AddEnquiry") && search.equals("SearchEnquiry")) {
                String main = ApplicationConstants.manageEnquiry;
                String addName = ApplicationConstants.manageEnquiryAdd;
                String addLink = ApplicationConstants.manageEnquiryAddLink;
                String searchName = ApplicationConstants.manageEnquirySerach;
                String searchLink = ApplicationConstants.manageEnquirySerachLink;
                insertForPermissions(ptype, Boolean.TRUE, Boolean.TRUE, main, addName, addLink, searchName, searchLink);
            }

        } else if (!search.isEmpty()) {
            if (search.equals("SearchCourse")) {
                String main = ApplicationConstants.manageCourse;
                String searchName = ApplicationConstants.manageCourseSerach;
                String searchLink = ApplicationConstants.manageCourseSerachLink;
                insertForPermissions(ptype, Boolean.FALSE, Boolean.TRUE, main, null, null, searchName, searchLink);
            }
            if (search.equals("SearchPreText")) {
                String main = ApplicationConstants.managePretext;
                String searchName = ApplicationConstants.managePretextSerach;
                String searchLink = ApplicationConstants.managePretextSerachLink;
                insertForPermissions(ptype, Boolean.FALSE, Boolean.TRUE, main, null, null, searchName, searchLink);
            }
            if (search.equals("SearchBrochures")) {
                String main = ApplicationConstants.managePreBrochures;
                String searchName = ApplicationConstants.managePreBrochuresSerach;
                String searchLink = ApplicationConstants.managePreBrochuresSerachLink;
                insertForPermissions(ptype, Boolean.FALSE, Boolean.TRUE, main, null, null, searchName, searchLink);
            }
            if (search.equals("SearchEmployee")) {
                String main = ApplicationConstants.manageEmployee;
                String searchName = ApplicationConstants.manageEmployeeSerach;
                String searchLink = ApplicationConstants.manageEmployeeSerachLink;
                insertForPermissions(ptype, Boolean.FALSE, Boolean.TRUE, main, null, null, searchName, searchLink);
            }
            if (search.equals("SearchAdmin")) {
                String main = ApplicationConstants.manageAdmin;
                String searchName = ApplicationConstants.manageAdminSerach;
                String searchLink = ApplicationConstants.manageAdminSerachLink;
                insertForPermissions(ptype, Boolean.FALSE, Boolean.TRUE, main, null, null, searchName, searchLink);
            }
            if (search.equals("SearchSendMail")) {
                String main = ApplicationConstants.manageSendMail;
                String searchName = ApplicationConstants.manageSendMailSerach;
                String searchLink = ApplicationConstants.manageSendMailSerachLink;
                insertForPermissions(ptype, Boolean.FALSE, Boolean.TRUE, main, null, null, searchName, searchLink);
            }
            if (search.equals("SearchEnquiry")) {
                String main = ApplicationConstants.manageEnquiry;
                String searchName = ApplicationConstants.manageEnquirySerach;
                String searchLink = ApplicationConstants.manageEnquirySerachLink;
                insertForPermissions(ptype, Boolean.FALSE, Boolean.TRUE, main, null, null, searchName, searchLink);
            }

        } else if (!add.isEmpty()) {
            if (add.equals("AddCourse")) {
                String main = ApplicationConstants.manageCourse;
                String addName = ApplicationConstants.manageCourseAdd;
                String addLink = ApplicationConstants.manageCourseAddLink;
                insertForPermissions(ptype, Boolean.TRUE, Boolean.FALSE, main, addName, addLink, null, null);
            }
            if (add.equals("AddPreText")) {
                String main = ApplicationConstants.managePretext;
                String addName = ApplicationConstants.managePretextAdd;
                String addLink = ApplicationConstants.managePretextAddLink;
                insertForPermissions(ptype, Boolean.TRUE, Boolean.FALSE, main, addName, addLink, null, null);
            }
            if (add.equals("AddBrochures")) {
                String main = ApplicationConstants.managePreBrochures;
                String addName = ApplicationConstants.managePreBrochuresAdd;
                String addLink = ApplicationConstants.managePreBrochuresAddLink;
                insertForPermissions(ptype, Boolean.TRUE, Boolean.FALSE, main, addName, addLink, null, null);
            }
            if (add.equals("AddAdmin")) {
                String main = ApplicationConstants.manageAdmin;
                String addName = ApplicationConstants.manageAdminAdd;
                String addLink = ApplicationConstants.manageAdminAddLink;
                insertForPermissions(ptype, Boolean.TRUE, Boolean.FALSE, main, addName, addLink, null, null);
            }
            if (add.equals("AddEmployee")) {
                String main = ApplicationConstants.manageEmployee;
                String addName = ApplicationConstants.manageEmployeeAdd;
                String addLink = ApplicationConstants.manageEmployeeAddLink;
                insertForPermissions(ptype, Boolean.TRUE, Boolean.FALSE, main, addName, addLink, null, null);
            }
            if (add.equals("AddPost")) {
                String main = ApplicationConstants.managePost;
                String addName = ApplicationConstants.managePostAdd;
                String addLink = ApplicationConstants.managePostAddLink;
                insertForPermissions(ptype, Boolean.TRUE, Boolean.FALSE, main, addName, addLink, null, null);
            }
            if (add.equals("SendMail")) {
                String main = ApplicationConstants.manageSendMail;
                String addName = ApplicationConstants.manageSendMailAdd;
                String addLink = ApplicationConstants.manageSendMailAddLink;
                insertForPermissions(ptype, Boolean.TRUE, Boolean.FALSE, main, addName, addLink, null, null);
            }
            if (add.equals("AddEnquiry")) {
                String main = ApplicationConstants.manageEnquiry;
                String addName = ApplicationConstants.manageEnquiryAdd;
                String addLink = ApplicationConstants.manageEnquiryAddLink;
                insertForPermissions(ptype, Boolean.TRUE, Boolean.FALSE, main, addName, addLink, null, null);
            }
        } else {

        }
    }

    private void insertForPermissions(String personType, Boolean Add, Boolean Search, String main, String addName, String addLink, String searchName, String searchLink) {

        MenuMasterBusiness menuBusiness = new MenuMasterBusiness();
        MenuTypeBusiness typeBusiness = new MenuTypeBusiness();
        SubmenuMasterBusiness subMenuBusiness = new SubmenuMasterBusiness();

        MenuType menuType = new MenuType();
        SubmenuMaster subMenuAdd = new SubmenuMaster();
        SubmenuMaster subMenuSearch = new SubmenuMaster();
        MenuMaster menuMaster = new MenuMaster();

        menuMaster.setMenuName(main);
        System.out.println(menuBusiness.insert(menuMaster));

        menuType.setPersonType(personType);
        menuType.setMenuMaster(menuMaster);
        System.out.println(typeBusiness.insert(menuType));

        if (Add == true) {
            subMenuAdd.setMenuMaster(menuMaster);
            subMenuAdd.setSubMenuName(addName);
            subMenuAdd.setSubPageName(addLink);
            System.out.println(subMenuBusiness.insert(subMenuAdd));
        }
        if (Search == true) {
            subMenuSearch.setMenuMaster(menuMaster);
            subMenuSearch.setSubMenuName(searchName);
            subMenuSearch.setSubPageName(searchLink);
            System.out.println(subMenuBusiness.insert(subMenuSearch));
        }
    }
}
