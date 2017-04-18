<%-- 
    Document   : Profile
    Created on : Apr 3, 2017, 8:05:58 PM
    Author     : GOPIRAJ
--%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>        
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.15.0/jquery.validate.min.js"></script>
    <body>
        <table border="0" style="width:500px; margin-left: 300px;">

                <tr>
                    <td>
                        <label class="col-xs-11 control-label">First name:</label>
                    </td>

                    <td><input type="text" class="form-control CheckField" value="${sessionScope.person.firstName}" name="firstName" id="firstName"/></td>
                </tr>
                <tr>
                    <td><label class="col-xs-11 control-label">Middle name:</label></td>

                    <td><input type="text" class="form-control CheckField" value="${sessionScope.person.middleName}" name="middleName" id="middleName"/></td>
                </tr>
                <tr>
                    <td><label class="col-xs-11 control-label">Last name:</label></td>

                    <td><input type="text" class="form-control CheckField" value="${sessionScope.person.lastName}" name="lastName" id="lastName"/></td>
                </tr>
                <tr>
                    <td><label class="col-xs-11 control-label">Date of Birth:</label></td>
                    <td><div class="input-group date" data-provide="datepicker">

                            <input type="date" id="dob" name="date" value="${sessionScope.person.dateOfBirth}" class="form-control CheckField"/>
                            <span class="input-group-addon"><span class="glyphicon-calendar glyphicon"></span></span>
                        </div></td>    
                </tr>
                <tr>
                    <td><label class="col-xs-11 control-label">Mail ID:</label></td>
                    <td><input type="email" class="form-control CheckField" value="${sessionScope.person.mailId}" name="mailId" id="mailId"/></td>
                </tr>

                <tr>
                    <td><label class="col-xs-11 control-label">Person Type:</label></td>
                    <td>
                        <select id="personType" name="personType" class="CheckField">
                            
                                <option value="${sessionScope.person.personType}">${sessionScope.person.personType}</option>
                            
                        </select>
                    </td>
                </tr>
               
                <tr>
                    <td><label class="col-xs-11 control-label">Street Address:</label></td>
                    <td><input type="text" class="form-control CheckField" value="${sessionScope.person.streetAdd}" name="streetAdd" id="streetAdd"/></td>
                </tr>
                <tr>
                    <td><label class="col-xs-11 control-label">City:</label></td>
                    <td><input type="text" class="form-control CheckField" value="${sessionScope.person.city}" name="city" id="city"/></td>
                </tr>
                <tr>
                    <td><label class="col-xs-11 control-label">State:</label></td>
                    <td><input type="text" class="form-control CheckField" value="${sessionScope.person.state}" name="state" id="state"/></td>
                </tr>
                <tr>
                    <td><label class="col-xs-11 control-label">Gender:</label></td>
                    <td>Male<input type="radio" class="form-control CheckField" value="Male" name="gender" id="genderMale"/>
                        FeMale<input type="radio" class="form-control" value="Fenale" name="gender" id="genderFemale"/></td>
                </tr>
                <tr>
                    <td><label class="col-xs-11 control-label">Contact Numebr:</label></td>
                    <td>
                        <div id="mydiv"></div>
                    </td>
                </tr>
                
                <tr>
                    <td colspan="2">
                        <div class="form-group">
                            <div class="col-xs-5 col-xs-offset-3" style="margin-left: 150px;">
                                <button type="submit" id="employeeSubmit" class="btn btn-success">Submit</button>     
                            </div>
                        </div>
                    </td>
                </tr>
            </table> 
                <form action="changePassword" method="POST">
                <table>
                    <tr>
                    <td><label class="col-xs-11 control-label">Current password:</label></td>
                    <td><input type="password" class="form-control CheckField" name="currentPassword" id="currentPassword" required="required"/></td>
                </tr>
                <tr>
                    <td><label class="col-xs-11 control-label">New Password:</label></td>
                    <td><input type="password" class="form-control CheckField" name="newPassword" id="newPassword" required="required"/></td>
                </tr>
                ${changepassword}
                <input type="hidden" class="form-control CheckField" value="${sessionScope.person.employee.password}" name="email" id="email"/>
                <tr>
                    <td colspan="2">
                        <div class="form-group">
                            <div class="col-xs-5 col-xs-offset-3" style="margin-left: 150px;">
                                <button type="submit" id="changepasswordSubmit" class="btn btn-success">Submit</button>     
                            </div>
                        </div>
                    </td>
                </tr>
                </table>
                </form>
    </body>
</html>
