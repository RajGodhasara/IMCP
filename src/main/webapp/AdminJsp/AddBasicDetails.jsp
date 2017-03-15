<%-- 
    Document   : AddBasicDetails
    Created on : Feb 24, 2017, 4:37:43 PM
    Author     : GOPIRAJ
--%>
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
        rules : {
        'name' : {
                required : true
            },
            'emailId1' : {
                required : true
            },
            'emailId2' : {
                required : true
            },
            'mobileNo' : {
                required : true
            },
            'phoneNo' : {
                required : true
            },
            'address' : {
                required : true
            },
            'quoteAboutCompany' : {
                required : true
            }
        }
    });
});
</script>
</head>
<body>
    <h1>
        Add Basic Details of Company to make effect on your main index page.
    </h1>
    <div class="container">
        <div id="progressmain" class="progress" style="width: 400px;">
            <div id="progress" class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width:0%">
                0%
            </div>
        </div>
    </div>
    <form:form method="POST" id="Form" commandName="command" action="admin_add_basic_details_insert"enctype="multipart/form-data">
        <table>
            <tr>
                <td>
                    <label class="col-xs-11 control-label">Logo</label>
                </td>
                <td>
                    <div class="col-xs-5">
                        <div class="col-xs-5">
                            <input type="file" name="file" id="file" required="required" class="CheckField"/>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <label class="col-xs-11 control-label">Comapny Name</label>
                </td>
                <td>
                    <div class="col-xs-5">
                        <form:input path="name" id="name" name="name" cssClass="form-control CheckField"/>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <label class="col-xs-11 control-label">Email ID 1</label>
                </td>
                <td>
                    <div class="col-xs-5">
                        <form:input path="emailId1" id="emailId1" name="emailId1" cssClass="form-control CheckField"/>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                   <label class="col-xs-11 control-label">Email ID 2</label>
                </td>
                <td>
                    <div class="col-xs-5">
                        <form:input path="emailId2" id="emailId2" name="emailId2" cssClass="form-control CheckField"/>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <label class="col-xs-11 control-label">Mobile Number</label>
                </td>
                <td>
                    <div class="col-xs-5">
                        <form:input path="mobileNo" id="mobileNo" name="mobileNo" cssClass="form-control CheckField"/>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <label class="col-xs-11 control-label">Phone Number</label>
                </td>
                <td>
                    <div class="col-xs-5">
                        <form:input path="phoneNo" id="phoneNo" name="phoneNo" cssClass="form-control CheckField"/>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <label class="col-xs-11 control-label">Address</label>
                </td>
                <td>
                    <div class="col-xs-5">
                        <form:input path="address" id="address" name="address" cssClass="form-control CheckField"/>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <label class="col-xs-11 control-label">Company Quote</label>
                </td>
                <td>
                    <div class="col-xs-5">
                        <form:input path="quoteAboutCompany" id="quoteAboutCompany" name="quoteAboutCompany" cssClass="form-control CheckField"/>
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
</body>
</html>
