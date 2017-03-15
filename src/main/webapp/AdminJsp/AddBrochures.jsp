<%-- 
    Document   : AddBrochures
    Created on : Oct 11, 2016, 12:01:48 AM
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
        'title' : {
                required : true
            }
        }
    });
});
</script>
</head>
<body>
    <h2>Add Brochures1</h2>
        <div class="container">
            <div id="progressmain" class="progress" style="width: 400px;">
                <div id="progress" class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width:0%">
                     0%
                </div>
            </div>
        </div>
      
<form:form method="POST" id="Form" commandName="command" action="admin_add_prebrochures_insert" enctype="multipart/form-data">
<table>
    <tr>
        <td>
            <label class="col-xs-3 control-label">Title:</label>
        </td>
        <td>
            <div class="col-xs-5">
                <form:input path="title" id="title" name="title" cssClass="form-control CheckField"/>
            </div>
        </td>
    </tr>
    <tr>
        <td>
            <label class="col-xs-3 control-label">Attachment:</label>
        </td>
        <td>
            <div class="col-xs-5">
                <input type="file" name="file" class="CheckField" required="required"/>
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

