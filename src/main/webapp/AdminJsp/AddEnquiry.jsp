<%-- 
    Document   : newjsp
    Created on : Feb 7, 2017, 7:46:22 PM
    Author     : GOPIRAJ
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<jsp:include page="../IncludeResourse/jQuery.jsp"></jsp:include>
<jsp:include page="../IncludeResourse/jQueryDatePicker.jsp"></jsp:include>
<jsp:include page="../IncludeResourse/DynamicContact.jsp"></jsp:include>
    <script>
        $(document).ready(function() {

            createdefault();

            jQuery.validator.addMethod("phoneUS", function(phone_number, element) {
                phone_number = phone_number.replace(/\s+/g, "");
                return this.optional(element) || phone_number.length > 9 && phone_number.match(/^(\+?1-?)?(\([2-9]\d{2}\)|[2-9]\d{2})-?[2-9]\d{2}-?\d{4}$/);
            }, "Please specify a valid phone number");

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
                        required: true,
                        email: true
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
                    'dynamic1': {
                        required: true,
                        phoneUS: true
                    }
                }
            });
        });
    </script>  

    <h2>Create new Enquiry by form or excel sheet</h2>
    <div style="margin-left: 200px;">  
        <div class="container">
            <div id="progressmain" class="progress" style="width: 400px;">
                <div id="progress" class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width:0%">
                    0%
                </div>
            </div>
        </div>
    <form:form method="POST" id="Form" action="admin_insert_enquiry" commandName="command">
        <div class="form-horizontal">
            <div class="form-group">
                <label class="control-label col-sm-2" for="firstName">First name</label>
                <div class="col-sm-4">
                    <form:input path="firstName" id="firstName" name="firstName" cssClass="form-control CheckField" placeholder="First Name"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="middleName">Middle name</label>
                <div class="col-sm-4">
                    <form:input path="middleName" id="middleName" name="middleName" cssClass="form-control CheckField" placeholder="Middle Name" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="lastName">Last name</label>
                <div class="col-sm-4">
                    <form:input path="lastName" id="lastName" name="lastName" cssClass="form-control CheckField" placeholder="Last Name" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="mailId">Mail ID</label>
                <div class="col-sm-4">
                    <form:input path="mailId" id="mailId" name="mailId" cssClass="form-control CheckField" placeholder="abc@xyz.com"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="">Mobile Number</label>
                <div class="col-sm-4">
                    <div id="mydiv"></div>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="date">Date of Birth</label>
                <div class="col-sm-4">
                    <div class="input-group date" data-provide="datepicker">
                        <form:input path="dob" id="dob" name="date" cssClass="form-control CheckField" placeholder="MM/DD/YYYY" />
                        <span class="input-group-addon"><span class="glyphicon-calendar glyphicon"></span></span>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="streetAddress">Street Address</label>
                <div class="col-sm-4">
                    <form:input path="streetAddress" id="streetAddress" name="streetAddress" cssClass="form-control CheckField" placeholder="F-404, ABC Society" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="city">City</label>
                <div class="col-sm-4">
                    <form:input path="city" id="city" name="city" cssClass="form-control CheckField" placeholder="Ahmedabad"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="state">State</label>
                <div class="col-sm-4">
                    <form:input path="state" id="state" name="state" cssClass="form-control CheckField" placeholder="Gujarat" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="gender">Gender</label>
                <div class="col-sm-4">
                    <label class="radio-inline"><form:radiobutton path="gender" name="gender" value="Male" id="genderMale" class="CheckField"></form:radiobutton>Male</label>
                    <label class="radio-inline"><form:radiobutton path="gender" name="gender" value="Female" id="genderFemale" class="CheckField"></form:radiobutton>Female</label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="clgName">Collage Name</label>
                    <div class="col-sm-4">
                    <form:input path="clgName" id="clgName" name="clgName" cssClass="form-control CheckField" placeholder="Sardar Vallabhbhai Institute" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="branch">Branch</label>
                <div class="col-sm-4">
                    <form:input path="branch" id="branch" name="branch" cssClass="form-control CheckField" placeholder="CSE" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="semester">Semester</label>
                <div class="col-sm-4">
                    <form:input path="semester" id="semester" name="semester" cssClass="form-control CheckField" placeholder="8" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="course">Enquiry For Course</label>
                <div class="col-sm-4">
                    <select id="course" name="course" class="form-control selectpicker" multiple data-selected-text-format="count > 3">    
                        <option value="Default" disabled="disabled">Select Multiple</option>
                        <c:forEach var="course" items="${course}">
                            <option value="${course.courseId}">${course.courseName}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="status">Status</label>
                <div class="col-sm-4">
                    <form:select path="status" id="status" name="status" cssClass="form-control CheckField">
                        <form:option tabindex="0" value="default" disabled="disabled">Select Multiple</form:option>
                        <form:option value="Interested">Interested</form:option>
                        <form:option value="Partially Interested">Partially Interested</form:option>
                        <form:option value="Not Interested">Not Interested</form:option>
                    </form:select>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-success" id="enquirySubmit">Submit</button>
                </div>
            </div>

        </div>
    </form:form>

    <form:form action="admin_add_excel_insert" commandName="command" enctype="multipart/form-data" method="POST">
        <div class="form-group">
            <label class="control-label col-sm-2" for="file">Select File for mutiple entry</label>
            <div class="col-sm-4">
                <input type="file" name="file" class="file-upload">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-success" id="employeeSubmit">Submit</button>
            </div>
        </div>
    </form:form>
</div>
