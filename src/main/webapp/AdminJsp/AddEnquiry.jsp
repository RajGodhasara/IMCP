<%-- 
    Document   : newjsp
    Created on : Feb 7, 2017, 7:46:22 PM
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
    <body>
        
        <div style="margin-left: 200px;">   
            <form:form method="POST" action="admin_insert_enquiry" commandName="command">
                <table>
                <tr>
                    <td><label class="col-xs-12 control-label">First Name</label></td>
                    <td>
                        <div class="col-xs-5">
                            <form:input path="firstName" cssClass="form-control CheckField"/>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td><label class="col-xs-12 control-label">Middle Name</label></td>
                    <td>
                        <div class="col-xs-5">
                            <form:input path="middleName" cssClass="form-control CheckField" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td><label class="col-xs-12 control-label">Last Name</label></td>
                    <td>
                        <div class="col-xs-5">
                            <form:input path="lastName" cssClass="form-control CheckField" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td><label class="col-xs-12 control-label">Mail ID</label></td>
                    <td>
                        <div class="col-xs-5">
                            <form:input path="mailId" cssClass="form-control CheckField" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td><label class="col-xs-12 control-label">Contact Number</label></td>
                    <td>
                        <div class="col-xs-5">
                            <form:input path="enquiryContactnos" cssClass="form-control CheckField" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td><label class="col-xs-12 control-label">DOB</label></td>
                    <td>
                        <div class="col-xs-5">
                            <div class="input-group date" data-provide="datepicker">
                                <input type="date"  class="form-control CheckField" value=""/>
                                <span class="input-group-addon">
                                    <span class="glyphicon-calendar glyphicon"></span>
                                </span>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td><label class="col-xs-12 control-label">Street Address</label></td>
                    <td>
                        <div class="col-xs-5">
                            <form:input path="streetAddress" cssClass="form-control CheckField" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td><label class="col-xs-12 control-label">City</label></td>
                    <td>
                        <div class="col-xs-5">
                            <form:input path="city" cssClass="form-control CheckField" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td><label class="col-xs-12 control-label">State</label></td>
                    <td>
                        <div class="col-xs-5">
                            <form:input path="state" cssClass="form-control CheckField" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td><label class="col-xs-12 control-label">Gender</label></td>
                    <td>
                        <div class="col-xs-5">
                            <form:radiobutton path="gender" value="M" cssClass="CheckField"/>Male
                            <form:radiobutton path="${model.Person.gender}" value="F"/>Female</td>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td><label class="col-xs-12 control-label">Collage Name</label></td>
                    <td>
                        <div class="col-xs-5">
                            <form:input path="clgName" cssClass="form-control CheckField" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td><label class="col-xs-12 control-label">Branch</label></td>
                    <td>
                        <div class="col-xs-5">
                            <form:input path="branch" cssClass="form-control CheckField" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td><label class="col-xs-12 control-label">Semester</label></td>
                    <td>
                        <div class="col-xs-5">
                            <form:input path="semester" cssClass="form-control CheckField" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td><label class="col-xs-12 control-label">Status</label></td>
                    <td>
                        <div class="col-xs-5">
                            <form:select path="status" cssClass="form-control CheckField">
                                <form:option tabindex="0" value="Default">---Select Any---</form:option>
                                <form:option value="Interested">Interested</form:option>
                                <form:option value="Partially Interested">Partially Interested</form:option>
                                <form:option value="Not Interested">Not Interested</form:option>
                            </form:select>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div class="form-group">
                            <div class="col-xs-5 col-xs-offset-3" style="margin-left: 150px;">
                                <button type="submit" id="btn" class="btn btn-success">Submit</button>     
                            </div>
                        </div>
                    </td>
                </tr>
                
                </table>
            </form:form>
        </div>
    </body>
</html>
