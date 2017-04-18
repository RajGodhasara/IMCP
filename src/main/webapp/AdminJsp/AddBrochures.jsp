<%-- 
    Document   : AddBrochures
    Created on : Oct 11, 2016, 12:01:48 AM
    Author     : GOPIRAJ
--%>


<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<jsp:include page="../IncludeResourse/jQuery.jsp"></jsp:include>
    <script>
        $(document).ready(function() {
            $("#Form").validate({
                rules: {
                    'title': {
                        required: true
                    }
                }
            });
        });
    </script>
    <div style="margin-left: 200px;">   
        <h2>Add New Brochures</h2>
        <div class="container">
            <div id="progressmain" class="progress" style="width: 400px;">
                <div id="progress" class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width:0%">
                    0%
                </div>
            </div>
        </div>

    <form:form method="POST" id="Form" commandName="command" action="admin_add_prebrochures_insert" enctype="multipart/form-data">
        <div class="form-horizontal">
            <div class="form-group">
                <label class="control-label col-sm-2" for="title">Title</label>
                <div class="col-sm-4">
                    <form:input path="title" id="title" name="title" cssClass="form-control CheckField" placeholder="Prebrochures Title"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="title">Attachment</label>
                <div class="col-sm-4">
                    <input type="file" name="file" id="file" class="CheckField file-upload" required="required"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-success">Submit</button>
                </div>
            </div>
        </div>

        ${answer}

    </form:form>
</div>

