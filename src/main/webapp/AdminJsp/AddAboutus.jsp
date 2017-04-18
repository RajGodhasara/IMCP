<%-- 
    Document   : AddAboutus
    Created on : Mar 26, 2017, 11:12:54 AM
    Author     : GOPIRAJ
--%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<jsp:include page="../IncludeResourse/jQuery.jsp"></jsp:include>
    <script>
        $(document).ready(function() {
            $("#Form").validate({
                rules: {
                    'smallIntro': {
                        required: true
                    },
                    'teachersNo': {
                        required: true,
                        number: true
                    },
                    'studentsNo': {
                        required: true,
                        number: true
                    },
                    'courseNo': {
                        required: true,
                        number: true
                    },
                    'citiesNo': {
                        required: true,
                        number: true
                    }
                }
            });
        });
    </script>

    <h1>
        Add Details of Institute
    </h1>
    <div class="container">
        <div id="progressmain" class="progress" style="width: 400px;">
            <div id="progress" class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width:0%">
                0%
            </div>
        </div>
    </div>
<form:form method="POST" id="Form" commandName="command" action="admin_add_aboutus_insert"enctype="multipart/form-data">
    <div class="form-horizontal">
        <div class="form-group">
            <label class="control-label col-sm-2" for="file">Image</label>
            <div class="col-sm-4">
                <input type="file" name="file" required="required" class="CheckField"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="smallIntro">Small Introduction of Institute</label>
            <div class="col-sm-4">
                <form:textarea path="smallIntro" id="smallIntro" name="smallIntro" cssClass="form-control CheckField" placeholder="Institute History"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="teachersNo">Number of Teachers</label>
            <div class="col-sm-4">
                <form:input path="teachersNo" id="teachersNo" name="teachersNo" cssClass="form-control CheckField" placeholder="i.e: 10"/>
                <form:hidden path="aboutusId" id="aboutusId" name="aboutusId" cssClass="form-control CheckField"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="courseNo">Number of Students</label>
            <div class="col-sm-4">
                <form:input path="studentsNo" id="studentsNo" name="studentsNo" cssClass="form-control CheckField" placeholder="i.e: 10"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="courseNo">Number of Courses</label>
            <div class="col-sm-4">
                <form:input path="courseNo" id="courseNo" name="courseNo" cssClass="form-control CheckField" placeholder="i.e: 10"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="citiesNo">Number of Cities where your branch exist</label>
            <div class="col-sm-4">
                <form:input path="citiesNo" id="citiesNo" name="citiesNo" cssClass="form-control CheckField" placeholder="i.e: 10"/>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-success" id="employeeSubmit">Submit</button>
            </div>
        </div>
    </div>
</form:form>
