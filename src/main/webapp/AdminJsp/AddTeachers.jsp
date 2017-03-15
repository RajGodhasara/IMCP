<%-- 
    Document   : AddTeachers
    Created on : Feb 24, 2017, 9:57:25 PM
    Author     : GOPIRAJ
--%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            Add Basic Details of Company to make effect on your main index page.
        </h1>
        <form:form method="POST" commandName="command" action="admin_add_teachers_insert" enctype="multipart/form-data">
            <table>
                <tr>
                    <td>
                        <label class="col-xs-3 control-label">Photograph</label>
                    </td>
                    <td>
                        <div class="col-xs-5">
                            <div class="col-xs-5">
                                <input type="file" name="file"/>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="col-xs-3 control-label">Faculty Name</label>
                    </td>
                    <td>
                        <div class="col-xs-5">
                            <form:input path="name" cssClass="form-control"/>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="col-xs-3 control-label">Quotes</label>
                    </td>
                    <td>
                        <div class="col-xs-5">
                            <form:input path="thought" cssClass="form-control"/>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="col-xs-3 control-label">Designation</label>
                    </td>
                    <td>
                        <div class="col-xs-5">
                            <form:input path="designation" cssClass="form-control"/>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="col-xs-3 control-label">Facebook Link</label>
                    </td>
                    <td>
                        <div class="col-xs-5">
                            <form:input path="facebook" cssClass="form-control"/>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="col-xs-3 control-label">Gmail Link</label>
                    </td>
                    <td>
                        <div class="col-xs-5">
                            <form:input path="gmail" cssClass="form-control"/>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="col-xs-3 control-label">Twitter Link</label>
                    </td>
                    <td>
                        <div class="col-xs-5">
                            <form:input path="twitter" cssClass="form-control"/>
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
