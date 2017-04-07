<%-- 
    Document   : newjsp
    Created on : Feb 7, 2017, 7:46:22 PM
    Author     : GOPIRAJ
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/jquery.validation/1.15.0/jquery.validate.min.js"></script>
        <script>
            $(document).ready(function() {
                $("#Form").validate({
                    rules: {
                        'firstName': {
                            required: true
                        },
                        'middleName': {
                            required: true
                        },
                        'lastName': {
                            required: true
                        },
                        'mailId': {
                            required: true
                        },
                        'date': {
                            required: true
                        },
                        'streetAddress': {
                            required: true
                        },
                        'city': {
                            required: true
                        },
                        'state': {
                            required: true
                        },
                        'clgName': {
                            required: true
                        },
                        'branch': {
                            required: true
                        },
                        'semester': {
                            required: true
                        },
                        'status': {
                            required: true
                        },
                        'dynamic': {
                            required: true
                        }
                    }
                });
            });
        </script>
        <script>
            j = 0;
            function createdefault()
            {
                j++;
                ctrl0 = $(document.createElement('input')).attr({'type': 'text', 'id': 'txtt' + j, 'name': 'dynamic' + j, 'class': 'form-control CheckField'});
                ctrl1 = $(document.createElement('input')).attr({'type': 'button', 'value': '+', 'class': 'btnp' + j + ' btn', 'id': 'btnp' + j});
                ctrl2 = $(document.createElement('input')).attr({'type': 'button', 'value': '-', 'class': 'btnm' + j + ' btn', 'id': 'btnm' + j});
                br = $(document.createElement('br'));
                $("#mydiv").append(ctrl0, ctrl1, ctrl2, br);

                $(ctrl1).attr({'onClick': function()
                    {
                        $(this).on("click", function(elem)
                        {
                            $("#btnp" + j).remove();
                            createdefault();
                        });
                    }});

                $(ctrl2).attr({'onClick': function()
                    {
                        $(this).on("click", function(elem)
                        {
                            var currentId = $(this).attr('id');
                            p = currentId.charAt(4);
                            x = $("#btnp" + p);
                            // here length property will check in whole document whether that jquery obj is present or not.
                            y = x.length;
                            if (y == "1")
                            {
                                //with plus
                                $("#btnp" + p).remove();
                                //and add another plus to previous element.
                                ctrl1 = $(document.createElement('input')).attr({'type': 'button', 'value': '+', 'class': 'btnp' + (j - 1), 'id': 'btnp' + (j - 1)});
                                $(ctrl1).attr({'onClick': function()
                                    {
                                        $(this).on("click", function(elem)
                                        {
                                            $("#btnp" + (j - 1)).remove();
                                            createdefault();
                                        });
                                    }
                                });
                                $("#mydiv").append(ctrl1);
                            }
                            $("#txtt" + p).remove();
                            $("#btnm" + p).remove();
                        });
                    }});
            }
            $(document).ready(function()
            {
                createdefault();
                $("#mydiv").on("click", "input.btnm" + j, function(elem)
                {
                    createdefault();
                });
            });
        </script>
    </head>
    <body>
        <div style="margin-left: 200px;">  
            <div class="container">
                <div id="progressmain" class="progress" style="width: 400px;">
                    <div id="progress" class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width:0%">
                        0%
                    </div>
                </div>
            </div>
            <form:form method="POST" id="Form" action="admin_insert_enquiry" commandName="command">
                <table>
                    <tr>
                        <td><label class="col-xs-12 control-label">First Name</label></td>
                        <td>
                            <div class="col-xs-5">
                                <form:input path="firstName" id="firstName" name="firstName" cssClass="form-control CheckField"/>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><label class="col-xs-12 control-label">Middle Name</label></td>
                        <td>
                            <div class="col-xs-5">
                                <form:input path="middleName" id="middleName" name="middleName" cssClass="form-control CheckField" />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><label class="col-xs-12 control-label">Last Name</label></td>
                        <td>
                            <div class="col-xs-5">
                                <form:input path="lastName" id="lastName" name="lastName" cssClass="form-control CheckField" />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><label class="col-xs-12 control-label">Mail ID</label></td>
                        <td>
                            <div class="col-xs-5">
                                <form:input path="mailId" id="mailId" name="mailId" cssClass="form-control CheckField" />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><label class="col-xs-12 control-label">Contact Number</label></td>
                        <td>
                            <div class="col-xs-5">
                                <div id="mydiv"></div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><label class="col-xs-12 control-label">DOB</label></td>
                        <td>
                            <div class="col-xs-5">
                                <div class="input-group date" data-provide="datepicker">
                                    <input type="date" id="date" name="date"  class="form-control CheckField" value=""/>
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
                                <form:input path="streetAddress" id="streetAddress" name="streetAddress" cssClass="form-control CheckField" />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><label class="col-xs-12 control-label">City</label></td>
                        <td>
                            <div class="col-xs-5">
                                <form:input path="city" id="city" name="city" cssClass="form-control CheckField" />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><label class="col-xs-12 control-label">State</label></td>
                        <td>
                            <div class="col-xs-5">
                                <form:input path="state" id="state" name="state" cssClass="form-control CheckField" />
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
                                <form:input path="clgName" id="clgName" name="clgName" cssClass="form-control CheckField" />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><label class="col-xs-12 control-label">Branch</label></td>
                        <td>
                            <div class="col-xs-5">
                                <form:input path="branch" id="branch" name="branch" cssClass="form-control CheckField" />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><label class="col-xs-12 control-label">Semester</label></td>
                        <td>
                            <div class="col-xs-5">
                                <form:input path="semester" id="semester" name="semester" cssClass="form-control CheckField" />
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td><label class="col-xs-12 control-label">Enquiry For Course</label></td>
                        <td>
                            <div class="col-xs-5">
                                <select id="course" name="course" class="form-control selectpicker" multiple data-selected-text-format="count > 3">    
                                    <option value="Default" readonly>---Select Multiple---</option>
                                    <c:forEach var="course" items="${course}">
                                        <option value="${course.courseId}">${course.courseName}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><label class="col-xs-12 control-label">Status</label></td>
                        <td>
                            <div class="col-xs-5">
                                <form:select path="status" id="status" name="status" cssClass="form-control CheckField">
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
            <form:form action="admin_add_excel_insert" commandName="command" enctype="multipart/form-data" method="POST">
                Select File for mutiple entry:<input type="file" name="file">
                <div class="form-group">
                                <div class="col-xs-5 col-xs-offset-3" style="margin-left: 150px;">
                                    <button type="submit" id="btn" class="btn btn-success">Submit</button>     
                                </div>
                            </div>
            </form:form>
        </div>
    </body>
</html>
