<%-- 
    Document   : AddEmployee
    Created on : Oct 10, 2016, 11:59:10 PM
    Author     : GOPIRAJ
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />

        <!-- Bootstrap Date-Picker Plugin -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>        
        <script src="https://cdn.jsdelivr.net/jquery.validation/1.15.0/jquery.validate.min.js"></script>
        <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
        <script>
            $(document).ready(function() {
                
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
            
        </script>
        <script>
            $(document).ready(function() {
                
                createdefault();
                
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
                        'date': {
                            required: true
                        },
                        'mailId': {
                            required: true
                        },
                        'personType': {
                            required: true
                        },
                        'password': {
                            required: true
                        },
                        'streetAdd': {
                            required: true
                        },
                        'city': {
                            required: true
                        },
                        'state': {
                            required: true
                        },
                        'gender': {
                            required: true
                        },
                        'position': {
                            required: true
                        },
                        'dynamic': {
                            required: true
                        }
                    }
                });
                
                var date_input = $('input[name="dob"]'); //our date input has the name "date"
                var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                var options = {
                    format: 'mm/dd/yyyy',
                    container: container,
                    todayHighlight: true,
                    autoclose: true
                };
                date_input.datepicker(options);
            });
        </script>
        <style type="text/css">
            #eventForm .form-control-feedback {
                top: 0;
                right: -15px;
            }
        </style>
<!--        <script>
            $(document).ready(function() {
                $('#eventForm').formValidation({
                    framework: 'bootstrap',
                    icon: {
                        valid: 'glyphicon glyphicon-ok',
                        invalid: 'glyphicon glyphicon-remove',
                        validating: 'glyphicon glyphicon-refresh'
                    },
                    fields: {
                        firstname: {
                            validators: {
                                notEmpty: {
                                    message: 'The name is required'
                                }
                            }
                        },
                        date: {
                            validators: {
                                notEmpty: {
                                    message: 'The date is required'
                                },
                                date: {
                                    format: 'MM/DD/YYYY',
                                    message: 'The date is not a valid'
                                }
                            }
                        }
                    }
                });
            });
        </script>-->
    </head>
    <body>
        <h1>Create new employee</h1>
        <div class="container">
            <div id="progressmain" class="progress" style="width: 400px;">
                <div id="progress" class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width:0%">
                    0%
                </div>
            </div>
        </div>
        <form id="Form" action="admin_add_employee_insert" method="post">
            <table border="0" style="width:500px; margin-left: 300px;">

                <tr>
                    <td>
                        <label class="col-xs-11 control-label">First name:</label>
                    </td>

                    <td><input type="text" class="form-control CheckField" name="firstName" id="firstName"/></td>
                </tr>
                <tr>
                    <td><label class="col-xs-11 control-label">Middle name:</label></td>

                    <td><input type="text" class="form-control CheckField" name="middleName" id="middleName"/></td>
                </tr>
                <tr>
                    <td><label class="col-xs-11 control-label">Last name:</label></td>

                    <td><input type="text" class="form-control CheckField" name="lastName" id="lastName"/></td>
                </tr>
                <tr>
                    <td><label class="col-xs-11 control-label">Date of Birth:</label></td>
                    <td><div class="input-group date" data-provide="datepicker">

                            <input type="date" id="dob" name="date" class="form-control CheckField"/>
                            <span class="input-group-addon"><span class="glyphicon-calendar glyphicon"></span></span>
                        </div></td>    
                </tr>
                <tr>
                    <td><label class="col-xs-11 control-label">Mail ID:</label></td>
                    <td><input type="email" class="form-control CheckField" name="mailId" id="mailId"/></td>
                </tr>

                <tr>
                    <td><label class="col-xs-11 control-label">Person Type:</label></td>
                    <td>
                        <select id="personType" name="personType" class="CheckField">
                            <c:forEach items="${list}" var="list">
                                <option value="${list.personTypeName}">${list.personTypeName}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label class="col-xs-11 control-label">Password:</label></td>
                    <td><input type="password" class="form-control CheckField" name="password" id="password"/></td>
                </tr>
                <tr>
                    <td><label class="col-xs-11 control-label">Street Address:</label></td>
                    <td><input type="text" class="form-control CheckField" name="streetAdd" id="streetAdd"/></td>
                </tr>
                <tr>
                    <td><label class="col-xs-11 control-label">City:</label></td>
                    <td><input type="text" class="form-control CheckField" name="city" id="city"/></td>
                </tr>
                <tr>
                    <td><label class="col-xs-11 control-label">State:</label></td>
                    <td><input type="text" class="form-control CheckField" name="state" id="state"/></td>
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
                    <td><label class="col-xs-11 control-label">Position:</label></td>
                    <td><input type="text" class="form-control CheckField" name="position" id="position"/></td>
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
        </form>
    </body>
</html>

