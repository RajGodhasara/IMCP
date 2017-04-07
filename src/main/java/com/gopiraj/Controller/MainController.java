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
import com.gopiraj.Business.OrganizationAdminBusiness;
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
import com.gopiraj.Model.OrganizationAdmin;
import com.gopiraj.Model.Person;
import com.gopiraj.Model.SliderImage;
import com.gopiraj.Model.Teachers;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author GOPIRAJ
 */
@Controller
public class MainController {

    @RequestMapping("/index")
    public ModelAndView getHome(ModelMap map) {
        try {

            List list = null;
            List linkList = null;
            List detailsList = null;
            List sliderList = null;

            CourseBusiness business = new CourseBusiness();
            SocialLinksBusiness linkBusiness = new SocialLinksBusiness();
            BasicDetailsBusiness detalsBusiness = new BasicDetailsBusiness();
            SliderImageBusiness sliderBusiness = new SliderImageBusiness();
            List basicList = null;
            basicList = detalsBusiness.search();
            BasicDetails details = (BasicDetails) basicList.get(0);
            sliderList = sliderBusiness.search();

            List<String> sliderImageByteList = new ArrayList<>();
            List<String> sliderImageTextList = new ArrayList<>();

            for (int i = 0; i < sliderList.size(); i++) {
                try {
                    SliderImage slider = (SliderImage) sliderList.get(i);

                    byte[] encodeBase64 = com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(slider.getImage()).getBytes();
                    String base64Encoded = new String(encodeBase64, "UTF-8");
                    sliderImageTextList.add(i, slider.getDescription());
                    sliderImageByteList.add(i, base64Encoded);
                } catch (Exception e) {
                    System.out.println("ERROR IN TRY IMAGE1:" + e.getMessage());
                }
            }

            map.addAttribute("SliderImageByteList", sliderImageByteList);
            map.addAttribute("SliderImageTextList", sliderImageTextList);

            try {
                byte[] encodeBase64 = com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(details.getLogo()).getBytes();
                String base64Encoded = new String(encodeBase64, "UTF-8");
                map.addAttribute("logo", base64Encoded);
                System.out.println("LOGO ADDED");
            } catch (Exception e) {
                System.out.println("ERROR IN TRY IMAGE:" + e.getMessage());
            }

            System.out.println("Session factory initialized.");
            list = business.search();
            linkList = linkBusiness.search();
            detailsList = detalsBusiness.search();
            ModelAndView model = new ModelAndView("Index", "command", new Course());
            if (list != null) {
                System.out.println("Attaching list to model.");
                model.addObject("courses", list);
                model.addObject("link", linkList);
                model.addObject("details", detailsList);
            }
            return model;
        } catch (Exception e) {
            System.out.println("ERROR in INDEX");
            e.printStackTrace();
            return null;
        }
    }

    @RequestMapping("/aboutus-us")
    public String getAboutUs(ModelMap map) {
        List linkList = null;
        List detailsList = null;
        List TeacherList = null;
        List corporateList = null;
        List aboutusList = null;
        SocialLinksBusiness linkBusiness = new SocialLinksBusiness();
        BasicDetailsBusiness detalsBusiness = new BasicDetailsBusiness();
        TeachersBusiness teacherBusiness = new TeachersBusiness();
        CorporatesBusiness corporateBusiness = new CorporatesBusiness();
        AboutusBusiness aboutusBusiness = new AboutusBusiness();
        linkList = linkBusiness.search();
        detailsList = detalsBusiness.search();
        TeacherList = teacherBusiness.search();
        corporateList = corporateBusiness.search();
        aboutusList = aboutusBusiness.search();

        List basicList = null;
        basicList = detalsBusiness.search();
        BasicDetails details = (BasicDetails) basicList.get(0);

        try {
            byte[] encodeBase64 = com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(details.getLogo()).getBytes();
            String base64Encoded = new String(encodeBase64, "UTF-8");
            map.addAttribute("logo", base64Encoded);
            System.out.println("LOGO ADDED");
        } catch (Exception e) {
            System.out.println("ERROR IN TRY IMAGE:" + e.getMessage());
        }

        List<String> listTeachersImage = new ArrayList<>();
        List<String> listCorporatesImage = new ArrayList<>();

        for (int i = 0; i < TeacherList.size(); i++) {
            try {
                Teachers teachers = (Teachers) TeacherList.get(i);

                byte[] encodeBase64 = com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(teachers.getPhotograph()).getBytes();
                String base64Encoded = new String(encodeBase64, "UTF-8");
                listTeachersImage.add(i, base64Encoded);
            } catch (Exception e) {
                System.out.println("ERROR IN TRY IMAGE1:" + e.getMessage());
            }
        }
        map.addAttribute("userImage", listTeachersImage);

        for (int i = 0; i < TeacherList.size(); i++) {
            try {
                Corporates corporate = (Corporates) corporateList.get(0);

                byte[] encodeBase64 = com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(corporate.getPhotograph()).getBytes();
                String base64Encoded = new String(encodeBase64, "UTF-8");
                listCorporatesImage.add(i, base64Encoded);
            } catch (Exception e) {
                System.out.println("ERROR IN TRY IMAGE1:" + e.getMessage());
            }
        }
        map.addAttribute("corporatesImage", listCorporatesImage);

        corporateList = corporateBusiness.search();
        map.addAttribute("link", linkList);
        map.addAttribute("details", detailsList);
        map.addAttribute("teachers", TeacherList);
        map.addAttribute("corporates", corporateList);
        
        //Aboutus aboutus = (Aboutus)aboutusList.get(0);
        if(!aboutusList.isEmpty()){
            Aboutus aboutus = (Aboutus)aboutusList.get(0);
            System.out.println("Not empty:"+aboutus.getSmallIntro());
            map.addAttribute("aboutus", aboutus);
        }
        
        return "AboutUs";

    }

    @RequestMapping("/contact")
    public String getContactUs(ModelMap map) {
        List linkList = null;
        List detailsList = null;
        BasicDetailsBusiness detalsBusiness = new BasicDetailsBusiness();
        List basicList = null;
        basicList = detalsBusiness.search();
        BasicDetails details = (BasicDetails) basicList.get(0);

        try {
            byte[] encodeBase64 = com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(details.getLogo()).getBytes();
            String base64Encoded = new String(encodeBase64, "UTF-8");
            map.addAttribute("logo", base64Encoded);
            System.out.println("LOGO ADDED");
        } catch (Exception e) {
            System.out.println("ERROR IN TRY IMAGE:" + e.getMessage());
        }

        SocialLinksBusiness linkBusiness = new SocialLinksBusiness();

        linkList = linkBusiness.search();
        detailsList = detalsBusiness.search();
        map.addAttribute("link", linkList);
        map.addAttribute("details", detailsList);
        return "ContactUs";

    }

    @RequestMapping("/login")
    public ModelAndView getLogin(ModelMap map) {

        ModelAndView model = new ModelAndView("Login", "command", new Login());

        List basicList = null;
        BasicDetailsBusiness detalsBusiness = new BasicDetailsBusiness();
        basicList = detalsBusiness.search();
        BasicDetails details = (BasicDetails) basicList.get(0);

        try {
            byte[] encodeBase64 = com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(details.getLogo()).getBytes();
            String base64Encoded = new String(encodeBase64, "UTF-8");
            map.addAttribute("logo", base64Encoded);
            System.out.println("LOGO ADDED");
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

        try {
            //SessionFactory sf = null;
            List list = null;
            List linkList = null;
            List detailsList = null;
            BasicDetailsBusiness detalsBusiness = new BasicDetailsBusiness();
            List basicList = null;
            basicList = detalsBusiness.search();
            BasicDetails details = (BasicDetails) basicList.get(0);

            try {
                byte[] encodeBase64 = com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(details.getLogo()).getBytes();
                String base64Encoded = new String(encodeBase64, "UTF-8");
                map.addAttribute("logo", base64Encoded);
                System.out.println("LOGO ADDED");
            } catch (Exception e) {
                System.out.println("ERROR IN TRY IMAGE:" + e.getMessage());
            }

            //sf = MyDispatureServlet.getSessionFactory();
            CourseBusiness business = new CourseBusiness();

            SocialLinksBusiness linkBusiness = new SocialLinksBusiness();

            //if(sf!=null){
            System.out.println("Session factory initialized.");
            list = business.search();
            linkList = linkBusiness.search();
            detailsList = detalsBusiness.search();
            //}
            ModelAndView model = new ModelAndView("CourseList", "command", new Course());
            if (list != null || linkList != null) {
                System.out.println("Attaching list to model.");
                model.addObject("courses", list);
                map.addAttribute("link", linkList);
                map.addAttribute("details", detailsList);
            }
            return model;
        } catch (Exception e) {
            System.out.println("ERROR in INDEX");
            e.printStackTrace();
            return null;
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
    public String Authentication(HttpServletRequest rq, ModelMap map, @RequestParam("Email") String email, @RequestParam("Pass") String pass) {
        try {
            List<MenuMaster> menuList = null;
            LoginBusiness login = new LoginBusiness();
            SubmenuMasterBusiness subMenuBusiness = new SubmenuMasterBusiness();
            Boolean result = login.authentication(email, pass);
            System.out.println(result);
            if (result == true) {
                HttpSession session = rq.getSession(true);
                ArrayList<MenuMaster> m = null;
                Person person = login.getPerson(email);
                if (person != null) {
                    session.setAttribute("person", person);
                    m = login.getMenu(person.getPersonType());
                    menuList = subMenuBusiness.getSub(m);
                    System.out.println("SUBMENU SIZE:" + menuList.get(0).getSubMenuTypes());
                   // List<SubmenuMaster> subList = (ArrayList)menuList.get(0).getSubMenuTypes();

                    //System.out.println("SUBMIST NAME:"+subList.get(0).getSubPageName());
                    if (menuList != null) {
                        System.out.println("Setting menu as a session---------------");
                        session.setAttribute("menu", menuList);
                    }
                }
                map.addAttribute(new Course());
                return "redirect:admin_add_activity";

                //ModelAndView model = new ModelAndView("test", "command", new Course());
                //return model;       
            } else {
                map.addAttribute(new Login());
                return "redirect:/login";

            }
        } catch (Exception e) {
            System.out.println("Error in Main Controller/Authentication------------");
            e.printStackTrace();
            return null;
        }
    }
    
    @RequestMapping("/forgotPassword")
    public ModelAndView ForgotPassword(ModelMap map,HttpServletRequest req) {
        
        ModelAndView model = new ModelAndView("Login", "command", new Login());
        
        EmployeeBusiness business = new EmployeeBusiness();
        AdminSendMailController mail = new AdminSendMailController();
              String password = null;
              String email = null;
        if(req.getParameter("email")!=null){
            email = req.getParameter("email");
            int personId = business.searchbyEmail(email);
            Employee emp = business.searchById(personId);
            Crypt crypt = new Crypt();
            try{
                password = crypt.decrypt(emp.getPassword());
            }catch(Exception e){
                password = null;
                System.out.println(e.getMessage());
            }
        }
        
        if(password!=null && email!=null){
            String subject = "Your IMCP Password";
            String message = "Dear, "+email+" Your IMCP Account Password is:"+password;
            String[] TO = {email};
            System.out.println(mail.mailAuth(TO, subject, message));
        }
        
            
            
        return model;

    }
}
