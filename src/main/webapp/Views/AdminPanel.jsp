<%-- 
    Document   : AdminPanel
    Created on : Jan 17, 2017, 3:24:23 PM
    Author     : GOPIRAJ
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <ul>

            <c:forEach items="${sessionScope.menu}" var="m">
                <li><a href="${m.pageName}">${m.menuName}</a></li>
                </c:forEach>
        </ul>
    </body>
</html>
