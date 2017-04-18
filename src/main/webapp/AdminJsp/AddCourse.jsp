<%-- 
    Document   : AddCourse
    Created on : Oct 10, 2016, 11:58:46 PM
    Author     : GOPIRAJ
--%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<jsp:include page="../IncludeResourse/jQuery.jsp"></jsp:include>

    <script>
        $(document).ready(function() {
            $("#Form").validate({
                rules: {
                    'courseName': {
                        required: true
                    },
                    'duration': {
                        required: true,
                        number: true
                    },
                    'Description': {
                        required: true
                    }
                }
            });
        });
    </script>
    <div style="margin-left: 200px;">   
        <h1 style="margin-left: 180px;">Add New Course</h1>
        <div class="container">
            <div id="progressmain" class="progress" style="width: 400px;">
                <div id="progress" class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width:0%">
                    0%
                </div>
            </div>
        </div>
    <form:form id="Form" method="POST" commandName="command" action="admin_insert_course">
        <div class="form-horizontal">
            <div class="form-group">
                <label class="control-label col-sm-2" for="courseName">Course Name</label>
                <div class="col-sm-4">
                    <form:input path="courseName" id="courseName" name="courseName" cssClass="form-control CheckField" placeholder="Course Name" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="duration">Duration</label>
                <div class="col-sm-4">
                    <form:input path="duration" id="duration" name="duration" value="" cssClass="form-control CheckField" placeholder="Course Duration"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="email">Description</label>
                <div class="col-sm-4">
                    <form:textarea path="Description" id="Description" name="Description" cssClass="form-control CheckField" placeholder="Course Descriptions"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-success">Submit</button>
                </div>
            </div>
        </div>

    </form:form>
</div>
