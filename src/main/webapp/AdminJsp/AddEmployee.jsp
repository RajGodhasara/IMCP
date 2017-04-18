<%-- 
    Document   : AddEmployee
    Created on : Oct 10, 2016, 11:59:10 PM
    Author     : GOPIRAJ
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>

<jsp:include page="../IncludeResourse/jQueryDatePicker.jsp"></jsp:include>
<jsp:include page="../IncludeResourse/jQuery.jsp"></jsp:include>
<jsp:include page="../IncludeResourse/DynamicContact.jsp"></jsp:include>


    <script>
        $(document).ready(function() {

            jQuery.validator.addMethod("phoneUS", function(phone_number, element) {
                phone_number = phone_number.replace(/\s+/g, "");
                return this.optional(element) || phone_number.length > 9 && phone_number.match(/^(\+?1-?)?(\([2-9]\d{2}\)|[2-9]\d{2})-?[2-9]\d{2}-?\d{4}$/);
            }, "Please specify a valid phone number");

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
                        required: true,
                        email: true
                    },
                    'personType': {
                        required: true
                    },
                    'password': {
                        required: true,
                        minlength: 8
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
                    'dynamic1': {
                        required: true,
                        phoneUS: true
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
    <div style="margin-left: 200px;"> 
        <h1>Create new employee</h1>
        <div class="container">
            <div id="progressmain" class="progress" style="width: 400px;">
                <div id="progress" class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width:0%">
                    0%
                </div>
            </div>
        </div>
        <form id="Form" action="admin_add_employee_insert" method="post">
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="firstName">First name</label>
                    <div class="col-sm-4">
                        <input type="text" class="form-control CheckField" name="firstName" id="" placeholder="First Name"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="middleName">Middle name</label>
                    <div class="col-sm-4">
                        <input type="text" class="form-control CheckField" name="middleName" id="middleName" placeholder="Middle Name"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="lastName">Last name</label>
                    <div class="col-sm-4">
                        <input type="text" class="form-control CheckField" name="lastName" id="lastName" placeholder="Last Name"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="date">Date of Birth</label>
                    <div class="col-sm-4">
                        <div class="input-group date" data-provide="datepicker">
                            <input type="date" id="dob" name="date" class="form-control CheckField" placeholder="MM/DD/YYYY"/>
                            <span class="input-group-addon"><span class="glyphicon-calendar glyphicon"></span></span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="mailId">Mail ID</label>
                    <div class="col-sm-4">
                        <input type="email" class="form-control CheckField" name="mailId" id="mailId" placeholder="abc@xyz.com"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="personType">Person Type</label>
                    <div class="col-sm-4">
                        <select id="personType" name="personType" class="CheckField form-control">
                        <c:forEach items="${list}" var="list">
                            <option value="${list.personTypeName}">${list.personTypeName}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="password">Password:</label>
                <div class="col-sm-4">
                    <input type="password" class="form-control CheckField" name="password" id="password" placeholder="********"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="streetAdd">Street Address</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control CheckField" name="streetAdd" id="streetAdd" placeholder="F-404, ABC Society"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="city">City</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control CheckField" name="city" id="city" placeholder="Ahmedabad"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="state">State</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control CheckField" name="state" id="state" placeholder="Gujarat"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="gender">Gender</label>
                <div class="col-sm-4">
                    <label class="radio-inline"><input type="radio" name="gender" value="Male" id="genderMale" class="CheckField">Male</label>
                    <label class="radio-inline"><input type="radio" name="gender" value="Female" id="genderFemale">FeMale</label>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="">Mobile Number</label>
                <div class="col-sm-4">
                    <div id="mydiv"></div>
                </div>
            </div>
            
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-success" id="employeeSubmit">Submit</button>
                </div>
            </div>
        </div>
    </form>
</div>
