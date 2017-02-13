<%-- 
    Document   : AddPretext
    Created on : Oct 11, 2016, 12:01:28 AM
    Author     : GOPIRAJ
--%>


<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Pretext</title>
    </head>
    <body><div class="form-group">
       
            <form:form method="POST" commandName="command" action="admin_add_pretext_insert">
<table>
    <tr>
        <td>
            <label class="col-xs-3 control-label">Title</label>
        </td>
        <td>
            <div class="col-xs-5">
                <form:input path="title" cssClass="form-control"/>
            </div>
        </td>
    </tr>
    
    <tr>
        <td>
            <label class="col-xs-3 control-label">Description</label>
        </td>
        <td>
            <div class="col-xs-5">
                <form:textarea path="message" cssClass="form-control"/>
            </div>
        </td>
    </tr>
    
    <tr>
        <td>
            <label class="col-xs-3 control-label">For What</label>
        </td>
        <td>
            <div class="col-xs-5">
                <form:select path="forWhat">
                            <form:option value="NONEE" label="--- Select ---"/>
                            <form:option label="SMS" value="SMS" />
                            <form:option label="EMAIL" value="EMAIL" />
                </form:select>
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
            </div>
    </body>
</html>
