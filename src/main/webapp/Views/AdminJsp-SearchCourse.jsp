<%-- 
    Document   : AdminJsp-SearchCourse
    Created on : Oct 11, 2016, 12:46:13 AM
    Author     : GOPIRAJ
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Course</title>
        
    </head>
    <body>
        <jsp:include page="../AdminTemp/AdminHeaderSide.jsp"></jsp:include>
            <div class="mainbar">
            <jsp:include page="../AdminJsp/SearchCourse.jsp"></jsp:include>
            </div>
        <jsp:include page="../AdminTemp/AdminFooter.jsp"></jsp:include>
    </body>
</html>
