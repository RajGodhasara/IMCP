<%-- 
    Document   : AddPermissions
    Created on : Feb 26, 2017, 12:33:20 PM
    Author     : GOPIRAJ
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function()
            {
                jQuery("#submitPerson").click(function () {
                    jQuery.ajax({
                        url: 'admin_add_person_insert',
                        async: false,
                        data: {
                            PersonName: jQuery('#ptype').val()
                            
                        },  
                        dataType: 'text',
                        success: function (params) {
                            alert('Role Added Successfully.');
                        },
                        error: function (error) {
                            alert('failed !!'+error.val());
                        }
                    });
                });
                
                jQuery("#submitRoles").click(function () {
                    var AddCourse;
                    var SearchCourse;
                    var AddPreText;
                    var SearchPreText;
                    var AddEmployee;
                    var SearchEmployee;
                    var AddAdmin;
                    var SearchAdmin;
                    var AddBrochures;
                    var SearchBrochures;
                    var AddPost;
                    var SendMail;
                    var SearchSendMail;
                    var AddEnquiry;
                    var SearchEnquiry;
                    if ($('#SendMail').is(":checked"))
                    {
                        SendMail = jQuery('#SendMail').val();
                    }
                    else{   
                        SendMail = "";
                    }
                    if ($('#SearchSendMail').is(":checked"))
                    {
                        SearchSendMail = jQuery('#SearchSendMail').val();
                    }
                    else{   
                        SearchSendMail = "";
                    }
                    if ($('#AddEmployee').is(":checked"))
                    {
                        AddEmployee = jQuery('#AddEmployee').val();
                    }
                    else{   
                        AddEmployee = "";
                    }
                    if ($('#AddPost').is(":checked"))
                    {
                        AddPost = jQuery('#AddPost').val();
                    }
                    else{   
                        AddPost = "";
                    }
                    if ($('#SearchEmployee').is(":checked"))
                    {
                        SearchEmployee = jQuery('#SearchEmployee').val();
                    }
                    else{   
                        SearchEmployee = "";
                    }
                    if ($('#AddAdmin').is(":checked"))
                    {
                        AddAdmin = jQuery('#AddAdmin').val();
                    }
                    else{   
                        AddAdmin = "";
                    }
                    if ($('#SearchAdmin').is(":checked"))
                    {
                        SearchAdmin = jQuery('#SearchAdmin').val();
                    }
                    else{   
                        SearchAdmin = "";
                    }
                    if ($('#AddCourse').is(":checked"))
                    {
                        AddCourse = jQuery('#AddCourse').val();
                    }
                    else{   
                        AddCourse = "";
                    }
                    if ($('#SearchCourse').is(":checked"))
                    {
                        SearchCourse = jQuery('#SearchCourse').val();
                    }
                    else{   
                        SearchCourse = "";
                    }
                    if ($('#AddPreText').is(":checked"))
                    {
                        AddPreText = jQuery('#AddPreText').val();
                    }
                    else{   
                        AddPreText = "";
                    }
                    if ($('#SearchPreText').is(":checked"))
                    {
                        SearchPreText = jQuery('#SearchPreText').val();
                    }
                    else{   
                        SearchPreText = "";
                    }
                    if ($('#AddBrochures').is(":checked"))
                    {
                        AddBrochures = jQuery('#AddBrochures').val();
                    }
                    else{   
                        AddBrochures = "";
                    }
                    if ($('#SearchBrochures').is(":checked"))
                    {
                        SearchBrochures = jQuery('#SearchBrochures').val();
                    }
                    else{   
                        SearchBrochures = "";
                    }
                    if ($('#AddEnquiry').is(":checked"))
                    {
                        AddEnquiry = jQuery('#AddEnquiry').val();
                    }
                    else{   
                        AddEnquiry = "";
                    }
                    if ($('#SearchEnquiry').is(":checked"))
                    {
                        SearchEnquiry = jQuery('#SearchEnquiry').val();
                    }
                    else{   
                        SearchEnquiry = "";
                    }
                    
                    jQuery.ajax({
                        url: 'admin_add_permission_insert',
                        async: false,
                        data: {
                            AddCourse:AddCourse,
                            SearchCourse:SearchCourse,
                            AddPreText:AddPreText,
                            AddBrochures:AddBrochures,
                            SearchBrochures:SearchBrochures,
                            SearchPreText:SearchPreText,
                            AddEmployee:AddEmployee,
                            SearchEmployee:SearchEmployee,
                            AddAdmin:AddAdmin,
                            SearchAdmin:SearchAdmin,
                            AddPost:AddPost,
                            SendMail:SendMail,
                            SearchSendMail:SearchSendMail,
                            AddEnquiry:AddEnquiry,
                            SearchEnquiry:SearchEnquiry,
                            ptype:jQuery('#pTypeSelect').val()
                        },  
                        dataType: 'text',
                        success: function (params) {
                            alert('Permission Added successfully');
                            location.reload();
                        },
                        error: function (error) {
                            alert('failed !!'+error.val());
                        }
                    });
                });
            });
        </script>

        
    </head>
    <body>
        <h1>Manage Roles:</h1>
        <form>
            <table border="0" style="margin-top: 20px;">
                <tr>
                    <td>Person Type:</td>
                    <td><input type="text" name="ptype" id="ptype" class="form-control"/></td>
                </tr>
            </table>
            
            <table border="0" style="margin-top: 20px;">
                <tr>
                    <td><input type="submit" value="Submit" name="submit" id="submitPerson" class="buttons"/></td>
                </tr>
            </table>
                <h1 style="margin-top: 20px;">Manage Access rights for particular Role:</h1>
            <table border="0" style="width: 500px; margin-top: 50px;">
                <tr>
                    <td>Select User type for provide Access rights:</td>
                    <td >
                        
                        <select id="pTypeSelect" class="form-control" style="width: 200px;">
  					
                                        <c:forEach var="list" items="${list}">
                                            <option value="${list.personTypeName}">${list.personTypeName}</option>
                                        </c:forEach>
                                </select>
                        
                    </td>
                </tr>
            </table>
            
            <table border="0" style="margin-top: 20px; width: 1000px;">
                
                <tr>
                    <td>Manage Course:</td>
                    <td><input type="checkbox" value="AddCourse" name="course" id="AddCourse" class="form-control"/></td>
                    <td>Add Course</td>
                    <td><input type="checkbox" value="SearchCourse" name="post" id="SearchCourse" class="form-control"/></td>
                    <td>Search Course</td>
                </tr>
                <tr>
                    <td>Manage Post:</td>
                    <td><input type="checkbox" value="AddPost" name="course" id="AddPost" class="form-control"/></td>
                    <td>Post</td>
                    
                </tr>
                <tr>
                    <td>Manage Pretext:</td>
                    <td><input type="checkbox" value="AddPreText" name="course" id="AddPreText" class="form-control"/></td>
                    <td>Add Pretext</td>
                    <td><input type="checkbox" value="SearchPreText" name="post" id="SearchPreText" class="form-control"/></td>
                    <td>Search Pretext</td>
                </tr>
                <tr>
                    <td>Manage Brochures:</td>
                    <td><input type="checkbox" value="AddBrochures" name="course" id="AddBrochures" class="form-control"/></td>
                    <td>Add Brochures</td>
                    <td><input type="checkbox" value="SearchBrochures" name="post" id="SearchBrochures" class="form-control"/></td>
                    <td>Search Brochures</td>
                </tr>
                <tr>
                    <td>Manage Employee:</td>
                    <td><input type="checkbox" value="AddEmployee" name="course" id="AddEmployee" class="form-control"/></td>
                    <td>Add Employee</td>
                    <td><input type="checkbox" value="SearchEmployee" name="post" id="SearchEmployee" class="form-control"/></td>
                    <td>Search Employee</td>
                </tr>
                <tr>
                    <td>Manage Admin:</td>
                    <td><input type="checkbox" value="AddAdmin" name="course" id="AddAdmin" class="form-control"/></td>
                    <td>Add Admin</td>
                    <td><input type="checkbox" value="SearchAdmin" name="post" id="SearchAdmin" class="form-control"/></td>
                    <td>Search Admin</td>
                </tr>
                <tr>
                    <td>Manage SMS:</td>
                    <td><input type="checkbox" value="SendSMS" name="course" id="SendSMS" class="form-control"/></td>
                    <td>Send SMS</td>
                    <td><input type="checkbox" value="SearchSentSMS" name="post" id="SearchSentSMS" class="form-control"/></td>
                    <td>Search Sent SMS</td>
                </tr>
                <tr>
                    <td>Manage Mail:</td>
                    <td><input type="checkbox" value="SendMail" name="course" id="SendMail" class="form-control"/></td>
                    <td>Send Mail</td>
                    <td><input type="checkbox" value="SearchSentMail" name="post" id="SearchSentMail" class="form-control"/></td>
                    <td>Search Sent Mail</td>
                </tr>
                <tr>
                    <td>Manage Task:</td>
                    <td><input type="checkbox" value="AssignTask" name="course" id="AssignTask" class="form-control"/></td>
                    <td>Assign Task</td>
                    <td><input type="checkbox" value="post" name="SearchAssignedtask" id="SearchAssignedtask" class="form-control"/></td>
                    <td>Search Assigned Task</td>
                </tr>
                <tr>
                    <td>Manage Enquiry:</td>
                    <td><input type="checkbox" value="AddEnquiry" name="AddEnquiry" id="AddEnquiry" class="form-control"/></td>
                    <td>Add Enquiry</td>
                    <td><input type="checkbox" value="SearchEnquiry" name="SearchEnquiry" id="SearchEnquiry" class="form-control"/></td>
                    <td>Search Enquiry</td>
                </tr>
                <tr>
                    <td>Manage Comapny Profile</td>
                    <td><input type="checkbox" value="AddSocialLinks" name="course" id="AddSocialLinks" class="form-control"/></td>
                    <td>Add Social Links</td>
                    <td><input type="checkbox" value="AddCompanyDetails" name="post" id="AddCompanyDetails" class="form-control"/></td>
                    <td>Add Company Basic Details</td>
                    <td><input type="checkbox" value="AddTeachers" name="post" id="AddTeachers" class="form-control"/></td>
                    <td>Add Teachers</td>
                    <td><input type="checkbox" value="AddCorporates" name="post" id="AddCorporates" class="form-control"/></td>
                    <td>Add Corporates</td>
                </tr>
            </table>
            
            <table border="0" style="margin-top: 20px;">
                <tr>
                    <td><input type="button" value="Submit" name="submit" id="submitRoles"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
