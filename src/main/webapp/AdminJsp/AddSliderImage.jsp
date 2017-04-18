<%-- 
    Document   : AddSliderImage
    Created on : Mar 26, 2017, 11:42:55 AM
    Author     : GOPIRAJ
--%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<jsp:include page="../IncludeResourse/jQuery.jsp"></jsp:include>
    <script>
        $(document).ready(function() {
            $("#Form").validate({
                rules: {
                    'file': {
                        required: true
                    },
                    'description': {
                        required: true
                    },
                    'files': {
                        required: true
                    }
                }
            });
        });
    </script>
    <div style="margin-left: 200px; margin-top: 20px;">   
        <h1>
            Add Slider Image.
        </h1>
        <div class="container">
            <div id="progressmain" class="progress" style="width: 400px;">
                <div id="progress" class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width:0%">
                    0%
                </div>
            </div>
        </div>
    <form:form method="POST" id="Form" commandName="command" action="admin_add_sliderimage_insert"enctype="multipart/form-data">
        <div class="form-horizontal" style="margin-top: 20px;">
            <div class="form-group">
                <label class="control-label col-sm-2" for="file">Image</label>
                <div class="col-sm-4">
                    <input type="file" name="file" required="required" class="CheckField file-upload"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="description">Small Description about Image</label>
                <div class="col-sm-4">
                    <form:textarea path="description" id="description" name="description" cssClass="form-control CheckField" placeholder="Small Description about slider"/>
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