<%-- 
    Document   : AddBarChart
    Created on : Apr 11, 2017, 10:22:59 AM
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
        <div class="container">
            <div class="row">
                <div class="col-xs-6">
                    <form action="admin_add_barchart_Email">
                        <input type="submit" value="Refresh Bar Chart for Email" class="btn btn-primary" style="margin-top: 20px; margin-left: 20px; margin-bottom: 20px; width: 200px;">
                    </form>
                    <img src="${pageContext.request.contextPath}/charts/BarChartEmail.jpg" />
                </div>
                <div class="col-xs-6">
                    <form action="admin_add_barchart_SMS">
                        <input type="submit" value="Refresh Bar Chart for SMS" class="btn btn-primary" style="margin-top: 20px; margin-left: 20px; margin-bottom: 20px; width: 200px;">
                    </form>
                    <img src="${pageContext.request.contextPath}/charts/BarChartSMS.jpg" />
                </div>
            </div>
        </div>
    </body>
</html>
