<%-- 
    Document   : AddPieChart
    Created on : Apr 11, 2017, 12:37:12 PM
    Author     : GOPIRAJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="admin_add_piechart_generate">
                        <input type="submit" value="Refresh Pie Chart for Enquiry" class="btn btn-primary" style="margin-top: 20px; margin-left: 20px; margin-bottom: 20px; width: 200px;">
                    </form>
                    <img src="${pageContext.request.contextPath}/charts/PieChartEquiry.jpg" />
    </body>
</html>
