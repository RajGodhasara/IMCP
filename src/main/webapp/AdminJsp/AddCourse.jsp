<%-- 
    Document   : AddCourse
    Created on : Oct 10, 2016, 11:58:46 PM
    Author     : GOPIRAJ
--%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course</title>
<!--        <link href="AdminStyle/bootstrap.css" rel="stylesheet"/>
        <script src="JQGrid-JS/jquery-1.11.0.min.js"></script>
        <script src="AdminJS/bootstrap.js"></script>-->
        
    </head>
    <body>
       <div style="margin-left: 200px;">   
            <h1 style="margin-left: 180px;">Course</h1>
            <div id="mydiv">
            </div>
        
            <div class="container">
                <div id="progressmain" class="progress" style="width: 400px;">
                    <div id="progress" class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width:0%">
                     0%
                    </div>
                </div>
            </div>
            
            
        
            <form:form id="Form" method="POST" commandName="command" action="admin_insert_course">
<table>
    <tr>
        <td>
            <label class="col-xs-3 control-label">Name</label>
        </td>
        <td>
            <div class="col-xs-5">
                <form:input path="courseName" cssClass="form-control CheckField"/>
            </div>
        </td>
    </tr>
    <tr>
        <td>
            <label class="col-xs-3 control-label">Duration</label>
        </td>
        <td>
            <div class="col-xs-5">
                <form:input path="duration" cssClass="form-control CheckField" />
            </div>
            
        </td>
    </tr>
    <tr>
        <td>
            <label class="col-xs-3 control-label">Description</label>
        </td>
        <td>
            <div class="col-xs-5">
                <form:textarea path="Description" cssClass="form-control CheckField"/>
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
        
        <!--
        <div style="margin-left: 200px;">   
            <h1 style="margin-left: 180px;">Course</h1>
            <div id="mydiv">
                </div>
        
            
            <div class="form-group">
                <label class="col-xs-3 control-label">Name</label>
                <div class="col-xs-5">
                    <input type="text" class="form-control" name="name" id="name" required></input>
                </div>
            </div>
            <br/><br/>
            <div class="form-group">
                <label class="col-xs-3 control-label">Duration</label>
                <div class="col-xs-5">
                    <input type="number" class="form-control" name="duration" id="duration" required/>
                </div>
            </div>
            <br/>
            <div class="form-group">
                <label class="col-xs-3 control-label">Description</label>
                <div class="col-xs-5">
                    <textarea class="form-control" name="description" id="description" required></textarea>
                </div>
            </div>
            <br/><br/>
            <div class="form-group">
                <div class="col-xs-5 col-xs-offset-3" style="margin-left: 300px;">
                    <button type="submit" id="btn" class="btn btn-success">Submit</button>
                    
                </div>
            </div>
          
        
     </div>-->
    </body>
</html>
