<%-- 
    Document   : test
    Created on : Feb 17, 2017, 9:53:52 PM
    Author     : GOPIRAJ
--%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
          <script>
  
  // When the browser is ready...
  $(document).ready(function(){
	alert("welcome");
	
    // Setup form validation on the #register-form element
    $("#form").validate();

  });
  
  </script>
        
    </head>
    <body>
        <form:form id="form" method="POST" commandName="command">
            Name:<form:input path="${model.Person.firstName}" id="name" name="name" cssClass="form-control"/>
            <input type="submit" value="submit">
        </form:form>
    </body>
</html>
