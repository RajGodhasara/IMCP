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
     <%--    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">%-->
     <%--  <link href="C:\Users\thakormehta\Documents\NetBeansProjects\IMCP\web\CSS\bootstrap.min.css" rel="stylesheet"/>--%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     
       
     <h2>Add Brochures1</h2>
     
      
        <form:form method="POST" commandName="command" action="admin_add_prebrochures_insert">
<table>
    <tr>
        <td>
            <label class="col-xs-3 control-label">Title:</label>
        </td>
        <td>
            <div class="col-xs-5">
                <form:input path="title" cssClass="form-control"/>
            </div>
        </td>
    </tr>
    <tr>
        <td>
            <label class="col-xs-3 control-label">Attachment:</label>
        </td>
        <td>
            <div class="col-xs-5">
                <form:input path="upload" cssClass="form-control" />
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

