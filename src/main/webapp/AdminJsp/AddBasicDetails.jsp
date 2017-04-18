<%-- 
    Document   : AddBasicDetails
    Created on : Feb 24, 2017, 4:37:43 PM
    Author     : GOPIRAJ
--%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<jsp:include page="../IncludeResourse/jQuery.jsp"></jsp:include>
    <script>
        $(document).ready(function() {
            $("#Form").validate({
                rules: {
                    'name': {
                        required: true
                    },
                    'emailId1': {
                        required: true
                    },
                    'emailId2': {
                        required: true
                    },
                    'mobileNo': {
                        required: true
                    },
                    'phoneNo': {
                        required: true
                    },
                    'address': {
                        required: true
                    },
                    'quoteAboutCompany': {
                        required: true
                    }
                }
            });
        });
    </script>

    <h1>
        Add/Update Basic Details of Institute.
    </h1>
    <div class="container" style="margin-top: 20px;">
        <div id="progressmain" class="progress" style="width: 400px;">
            <div id="progress" class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width:0%">
                0%
            </div>
        </div>
    </div>
<form:form method="POST" id="Form" commandName="command" action="admin_add_basic_details_insert"enctype="multipart/form-data">
    <div class="form-horizontal">
        <div class="form-group">
            <label class="control-label col-sm-2" for="file">Institute Logo</label>
            <div class="col-sm-4">
                <input type="file" name="file" id="file" required="required" class="CheckField file-upload"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="name">Institute Name</label>
            <div class="col-sm-4">
                <form:input path="name" id="name" name="name" cssClass="form-control CheckField"/>
                <form:hidden path="basicDetailsId" id="basicDetailsId" name="basicDetailsId" cssClass="form-control CheckField"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="emailId1">Email ID 1</label>
            <div class="col-sm-4">
                <form:input path="emailId1" id="emailId1" name="emailId1" cssClass="form-control CheckField"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="emailId2">Email ID 2</label>
            <div class="col-sm-4">
                <form:input path="emailId2" id="emailId2" name="emailId2" cssClass="form-control CheckField"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="mobileNo">Mobile Number</label>
            <div class="col-sm-4">
                <form:input path="mobileNo" id="mobileNo" name="mobileNo" cssClass="form-control CheckField"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="phoneNo">Phone Number</label>
            <div class="col-sm-4">
                <form:input path="phoneNo" id="phoneNo" name="phoneNo" cssClass="form-control CheckField"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="address">Full Address</label>
            <div class="col-sm-4">
                <form:input path="address" id="address" name="address" cssClass="form-control CheckField"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="quoteAboutCompany">institute Quote</label>
            <div class="col-sm-4">
                <form:input path="quoteAboutCompany" id="quoteAboutCompany" name="quoteAboutCompany" cssClass="form-control CheckField"/>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" id="btn" class="btn btn-success">Submit</button>
            </div>
        </div>
    </div>
</form:form>

