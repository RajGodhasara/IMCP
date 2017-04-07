<%-- 
    Document   : AddAdmin
    Created on : Oct 10, 2016, 11:59:34 PM
    Author     : GOPIRAJ
--%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create new Org_Admin</title>
    </head>
    <body>
        <div class="container" style="margin-top: 50px;">            
            <div class="container">
                <div id="progressmain" class="progress" style="width: 400px;">
                    <div id="progress" class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width:0%">
                        0%
                    </div>
                </div>
            </div>
            <form:form id="Form" method="POST" commandName="command">
                <table border="0">
                    <tr>
                        <td>
                            <label class="col-xs-3 control-label">First name:</label>
                        </td>
                        <td><form:input path="${model.Person.firstName}" cssClass="form-control CheckField"/></td>
                        <td><form:errors path="${model.Person.firstName}"/></td>
                    </tr>
                    <tr>
                        <td><label class="col-xs-3 control-label">Middle name:</label></td>
                        <td><form:input path="${model.Person.middleName}" cssClass="form-control CheckField"/></td>
                        <td><form:errors path="${model.Person.middleName}"/></td>
                    </tr>
                    <tr>
                        <td><label class="col-xs-3 control-label">Last name:</label></td>
                        <td><form:input path="${model.Person.lastName}" cssClass="form-control CheckField"/></td>
                        <td><form:errors path="${model.Person.lastName}"/></td>
                    </tr>
                    <tr>
                        <td><label class="col-xs-3 control-label">Date of Birth:</label></td>
                        <td><div class="input-group date" data-provide="datepicker">

                                <input type="date"  class="form-control CheckField" value=""/>
                                <span class="input-group-addon"><span class="glyphicon-calendar glyphicon"></span></span>
                            </div></td>    
                    </tr>
                    <tr>
                        <td><label class="col-xs-3 control-label">Mail ID:</label></td>
                        <td><form:input path="${model.Person.mailId}" cssClass="form-control CheckField"/></td>
                        <td><form:errors path="${model.Person.mailId}"/></td>
                    </tr>
                    <tr>
                        <td><label class="col-xs-3 control-label">Person Type:</label></td>
                        <td>
                            <form:select path="${model.Person.personType}" cssClass="form-control CheckField">
                                <form:option value="employee">Employee</form:option>
                                <form:option value="admin">Administrator</form:option>
                            </form:select>
                        </td>
                    </tr>
                    <tr>
                        <td><label class="col-xs-3 control-label">Password:</label></td>
                        <td><form:input path="password" cssClass="form-control CheckField"/></td>
                        <td><form:errors path="password"/></td>
                    </tr>
                    <tr>
                        <td><label class="col-xs-3 control-label">Street Address:</label></td>
                        <td><form:input path="${model.Person.streetAdd}" cssClass="form-control CheckField"/></td>
                        <td><form:errors path="${model.Person.streetAdd}"/></td>
                    </tr>
                    <tr>
                        <td><label class="col-xs-3 control-label">City:</label></td>
                        <td><form:input path="${model.Person.city}" cssClass="form-control CheckField"/></td>
                        <td><form:errors path="${model.Person.city}"/></td>
                    </tr>
                    <tr>
                        <td><label class="col-xs-3 control-label">State:</label></td>
                        <td><form:input path="${model.Person.state}" cssClass="form-control CheckField"/></td>
                        <td><form:errors path="${model.Person.state}"/></td>
                    </tr>
                    <tr>
                        <td><label class="col-xs-3 control-label">Gender:</label></td>
                        <td><form:radiobutton path="${model.Person.gender}" value="M" cssClass="CheckField"/>Male
                            <form:radiobutton path="${model.Person.gender}" value="F"/>Female</td>
                        <td><form:errors path="${model.Person.gender}"/></td>
                    </tr>
                    <tr>
                        <td><label class="col-xs-3 control-label">Contact Numebr:</label></td>
                        <td><form:input path="${model.Person.contactNo}" cssClass="form-control CheckField"/></td>
                        <td><form:errors path="${model.Person.contactNo}"/></td>
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

