<%-- 
    Document   : AdminJsp-AddEmployee
    Created on : Oct 11, 2016, 12:43:58 AM
    Author     : GOPIRAJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="../AdminTemp/AdminHeaderSide.jsp"></jsp:include>
      <div class="mainbar">
          <jsp:include page="../AdminJsp/AddEmployee.jsp"></jsp:include>
      </div>
          <jsp:include page="../AdminTemp/AdminFooter.jsp"></jsp:include>
    </body>
</html>
