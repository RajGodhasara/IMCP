/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Controller;

import com.gopiraj.Business.AboutusBusiness;
import com.gopiraj.Business.BasicDetailsBusiness;
import com.gopiraj.Business.CorporatesBusiness;
import com.gopiraj.Business.CourseBusiness;
import com.gopiraj.Business.Crypt;
import com.gopiraj.Business.EmployeeBusiness;
import com.gopiraj.Business.LoginBusiness;
import com.gopiraj.Business.SliderImageBusiness;
import com.gopiraj.Business.SocialLinksBusiness;
import com.gopiraj.Business.SubmenuMasterBusiness;
import com.gopiraj.Business.TeachersBusiness;
import com.gopiraj.Model.Aboutus;
import com.gopiraj.Model.BasicDetails;
import com.gopiraj.Model.Corporates;
import com.gopiraj.Model.Course;
import com.gopiraj.Model.Employee;
import com.gopiraj.Model.Login;
import com.gopiraj.Model.MenuMaster;
import com.gopiraj.Model.Person;
import com.gopiraj.Model.SliderImage;
import com.gopiraj.Model.Teachers;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author GOPIRAJ
 */
@Controller
public class MainController {

    @RequestMapping("/index")
    public ModelAndView getHome(ModelMap map) {
        ModelAndView model = new ModelAndView("Index", "command", new Course());
        List list = null;
        List linkList = null;
        List detailsList = null;
        List sliderList = null;
        CourseBusiness business = new CourseBusiness();
        SocialLinksBusiness linkBusiness = new SocialLinksBusiness();
        BasicDetailsBusiness detalsBusiness = new BasicDetailsBusiness();
        SliderImageBusiness sliderBusiness = new SliderImageBusiness();
        List basicList = null;
        BasicDetails details = null;
        SliderImage slider = null;
        List<String> sliderImageByteList = new ArrayList<>();
        List<String> sliderImageTextList = new ArrayList<>();

        try {

            basicList = detalsBusiness.search();
            if (!basicList.isEmpty()) {
                details = (BasicDetails) basicList.get(0);
            }

            sliderList = sliderBusiness.search();
            for (int i = 0; i < sliderList.size(); i++) {
                slider = (SliderImage) sliderList.get(i);
                if (slider != null) {
                    if (slider.getImage() != null) {
                        byte[] encodeBase64 = com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(slider.getImage()).getBytes();
                        String base64Encoded = new String(encodeBase64, "UTF-8");
                        sliderImageTextList.add(i, slider.getDescription());
                        sliderImageByteList.add(i, base64Encoded);
                    }
                }

            }

            if (details != null) {
                if (details.getLogo() != null) {
                    byte[] encodeBase64 = com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(details.getLogo()).getBytes();
                    String base64Encoded = new String(encodeBase64, "UTF-8");
                    map.addAttribute("logo", base64Encoded);

                }
            }

            list = business.search();
            linkList = linkBusiness.search();
            detailsList = detalsBusiness.search();

            if (list != null) {
                model.addObject("courses", list);
            }
            if (linkList != null) {
                model.addObject("link", linkList);
            }
            if (detailsList != null) {
                model.addObject("details", detailsList);
            }
            if (!sliderImageByteList.isEmpty()) {
                map.addAttribute("SliderImageByteList", sliderImageByteList);
            }
            if (!sliderImageTextList.isEmpty()) {
                map.addAttribute("SliderImageTextList", sliderImageTextList);
            }

            return model;

        } catch (Exception e) {
            System.out.println("Error in index:" + e.getMessage());
            return model;
        }
    }

    @RequestMapping("/aboutus-us")
    public String getAboutUs(ModelMap map) {
        List linkList = null;
        List detailsList = null;
        List TeacherList = null;
        List corporateList = null;
        List aboutusList = null;
        List basicList = null;

        SocialLinksBusiness linkBusiness = new SocialLinksBusiness();
        BasicDetailsBusiness detalsBusiness = new BasicDetailsBusiness();
        TeachersBusiness teacherBusiness = new TeachersBusiness();
        CorporatesBusiness corporateBusiness = new CorporatesBusiness();
        AboutusBusiness aboutusBusiness = new AboutusBusiness();
        BasicDetails details = null;
        Aboutus aboutus = null;

        List<String> listTeachersImage = new ArrayList<>();
        List<String> listCorporatesImage = new ArrayList<>();
        try {

            linkList = linkBusiness.search();
            detailsList = detalsBusiness.search();

            basicList = detalsBusiness.search();
            if (!basicList.isEmpty()) {
                details = (BasicDetails) basicList.get(0);
                if (details.getLogo() != null) {
                    byte[] encodeBase64 = com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(details.getLogo()).getBytes();
                    String base64Encoded = new String(encodeBase64, "UTF-8");
                    map.addAttribute("logo", base64Encoded);
                }
                if (details.getName() != null) {
                    map.addAttribute("name", details.getName());
                }
            }

            TeacherList = teacherBusiness.search();
            for (int i = 0; i < TeacherList.size(); i++) {
                Teachers teachers = (Teachers) TeacherList.get(i);
                if (teachers.getPhotograph() != null) {
                    byte[] encodeBase64 = com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(teachers.getPhotograph()).getBytes();
                    String base64Encoded = new String(encodeBase64, "UTF-8");
                    listTeachersImage.add(i, base64Encoded);
                }
            }

            corporateList = corporateBusiness.search();
            for (int i = 0; i < corporateList.size(); i++) {
                if (corporateList != null) {
                    Corporates corporate = (Corporates) corporateList.get(0);
                    if (corporate.getPhotograph() != null) {
                        byte[] encodeBase64 = com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(corporate.getPhotograph()).getBytes();
                        String base64Encoded = new String(encodeBase64, "UTF-8");
                        listCorporatesImage.add(i, base64Encoded);
                    }
                }
            }

            aboutusList = aboutusBusiness.search();
            if (!aboutusList.isEmpty()) {
                aboutus = (Aboutus) aboutusList.get(0);
            }

        } catch (UnsupportedEncodingException e) {
            System.out.println("Error in About us:" + e.getMessage());
            return "AboutUs";
        }

        if (aboutus != null) {
            map.addAttribute("aboutus", aboutus);
        }
        if (!linkList.isEmpty()) {
            map.addAttribute("link", linkList);
        }
        if (!detailsList.isEmpty()) {
            map.addAttribute("details", detailsList);
        }
        if (!listTeachersImage.isEmpty()) {
            map.addAttribute("userImage", listTeachersImage);
        }
        if (!TeacherList.isEmpty()) {
            map.addAttribute("teachers", TeacherList);
        }
        if (!listCorporatesImage.isEmpty()) {
            map.addAttribute("corporatesImage", listCorporatesImage);
        }
        if (!corporateList.isEmpty()) {
            map.addAttribute("corporates", corporateList);
        }
        return "AboutUs";
    }

    @RequestMapping("/contact")
    public String getContactUs(ModelMap map) {
        List linkList = null;
        List detailsList = null;
        List basicList = null;
        BasicDetailsBusiness detalsBusiness = new BasicDetailsBusiness();
        SocialLinksBusiness linkBusiness = new SocialLinksBusiness();
        BasicDetails details = null;
        try {
            basicList = detalsBusiness.search();
            if (!basicList.isEmpty()) {
                details = (BasicDetails) basicList.get(0);
            }
            if (details != null) {
                if (details.getLogo() != null) {
                    byte[] encodeBase64 = com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(details.getLogo()).getBytes();
                    String base64Encoded = new String(encodeBase64, "UTF-8");
                    map.addAttribute("logo", base64Encoded);
                }
            }
        } catch (UnsupportedEncodingException e) {
            System.out.println("Error in Contact us:" + e.getMessage());
            return "ContactUs";
        }

        linkList = linkBusiness.search();
        detailsList = detalsBusiness.search();

        if (!linkList.isEmpty()) {
            map.addAttribute("link", linkList);
        }
        if (!detailsList.isEmpty()) {
            map.addAttribute("details", detailsList);
        }

        return "ContactUs";

    }

    @RequestMapping("/login")
    public ModelAndView getLogin(ModelMap map) {

        ModelAndView model = new ModelAndView("Login", "command", new Login());
        List basicList = null;
        BasicDetails details = null;
        BasicDetailsBusiness detalsBusiness = new BasicDetailsBusiness();

        try {
            basicList = detalsBusiness.search();
            if (!basicList.isEmpty()) {
                details = (BasicDetails) basicList.get(0);
                if (details != null) {
                    if (details.getLogo() != null) {
                        byte[] encodeBase64 = com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(details.getLogo()).getBytes();
                        String base64Encoded = new String(encodeBase64, "UTF-8");
                        map.addAttribute("logo", base64Encoded);
                    }
                }
            }
        } catch (Exception e) {
            System.out.println("ERROR IN TRY IMAGE:" + e.getMessage());
        }
        return model;
    }

    @RequestMapping("/logout")
    public String getLogout(HttpServletRequest rq, ModelMap map) {
        if (rq.getSession(false) != null) {
            HttpSession session = rq.getSession(false);
            session.invalidate();
        }
        return "redirect:/index";
    }

    @RequestMapping("/courses-detail")
    public ModelAndView getCourseList(ModelMap map) {
        ModelAndView model = new ModelAndView("CourseList", "command", new Course());
        List list = null;
        List linkList = null;
        List detailsList = null;
        BasicDetailsBusiness detalsBusiness = new BasicDetailsBusiness();
        CourseBusiness business = new CourseBusiness();
        SocialLinksBusiness linkBusiness = new SocialLinksBusiness();
        List basicList = null;
        BasicDetails details = null;
        try {

            basicList = detalsBusiness.search();
            if (!basicList.isEmpty()) {
                details = (BasicDetails) basicList.get(0);
                if (details != null) {
                    if (details.getLogo() != null) {
                        byte[] encodeBase64 = com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(details.getLogo()).getBytes();
                        String base64Encoded = new String(encodeBase64, "UTF-8");
                        map.addAttribute("logo", base64Encoded);
                    }
                }
            }

            list = business.search();
            linkList = linkBusiness.search();
            detailsList = detalsBusiness.search();

            if (!linkList.isEmpty()) {
                map.addAttribute("link", linkList);
            }
            if (!detailsList.isEmpty()) {
                map.addAttribute("details", detailsList);
            }
            if (list != null) {
                model.addObject("courses", list);
            }

            return model;
            
        } catch (Exception e) {
            System.out.println("Error in course details:" + e.getMessage());
            return model;
        }
    }

    @RequestMapping("/404")
    public String get404(ModelMap map) {

        return "404";

    }

//    @RequestMapping("/gallery")
//    public String getGallerty(ModelMap map) {
//
//        return "Gallery";
//
//    }
    
    @RequestMapping("/authentication")
    public String Authentication(final RedirectAttributes redirectAttributes, HttpServletRequest rq, ModelMap map, @RequestParam("Email") String email, @RequestParam("Pass") String pass) {
        try {
            List<MenuMaster> menuList = null;
            LoginBusiness login = new LoginBusiness();
            SubmenuMasterBusiness subMenuBusiness = new SubmenuMasterBusiness();
            Boolean result = login.authentication(email, pass);
            if (result == true) {
                HttpSession session = rq.getSession(true);
                ArrayList<MenuMaster> m = null;
                Person person = login.getPerson(email);
                if (person != null) {
                    session.setAttribute("person", person);
                    m = login.getMenu(person.getPersonType());
                    menuList = subMenuBusiness.getSub(m);
                    if (menuList != null) {
                        session.setAttribute("menu", menuList);
                    }
                }
                map.addAttribute(new Course());
                return "redirect:admin_add_activity";
            } else {
                redirectAttributes.addFlashAttribute("status", "Username or Password Invalid.");
                map.addAttribute(new Login());
                return "redirect:/login";
            }
        } catch (Exception e) {
            System.out.println("Error in Main Controller/Authentication" + e.getMessage());
            return null;
        }
    }

    @RequestMapping("/forgotPassword")
    public String ForgotPassword(final RedirectAttributes redirectAttributes, ModelMap map, HttpServletRequest req) {

        EmployeeBusiness business = new EmployeeBusiness();
        AdminSendMailController mail = new AdminSendMailController();
        String password = null;
        String email = null;
        if (req.getParameter("email") != null) {
            email = req.getParameter("email");
            int personId = business.searchbyEmail(email);
            if (personId != 0) {
                Employee emp = business.searchById(personId);
                Crypt crypt = new Crypt();
                try {
                    password = crypt.decrypt(emp.getPassword());
                } catch (Exception e) {
                    password = null;
                    redirectAttributes.addFlashAttribute("forgotPassword", "Some problem is raised while decrypting your password.");
                    System.out.println(e.getMessage());
                }
            } else {
                redirectAttributes.addFlashAttribute("forgotPassword", "Your Mail ID is not registed with us.");
            }
        } else {
            redirectAttributes.addFlashAttribute("forgotPassword", "Please enter Mail Id.");
        }
        if (password != null && email != null) {
            try {
                String subject = "Your IMCP Password";
                String message = "Dear, " + email + " Your IMCP Account Password is:" + password;
                String[] TO = {email};
                System.out.println(mail.mailAuth(TO, subject, message));
                redirectAttributes.addFlashAttribute("forgotPassword", "Your password is successfully sent to registed email id.");
            } catch (Exception e) {
                System.out.println(e.getMessage());
                redirectAttributes.addFlashAttribute("forgotPassword", "Some problem is occured while sending mail to your registered mail id.");
            }
        }
        redirectAttributes.addFlashAttribute(new Login());
        return "redirect:/login";

    }
}
