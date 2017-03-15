<%-- 
    Document   : SearchEmployee
    Created on : Oct 10, 2016, 11:59:20 PM
    Author     : GOPIRAJ
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="AdminJS/bootstrap.js"></script>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css"/>
        <script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" charset="utf-8">
	$(document).ready(function() {
            $('#example').dataTable({"bPaginate": true,
                "sPaginationType": "full_numbers",
                "bJQueryUI": true,
                "aLengthMenu": [[2, 5, 10, -1], [2, 5, 10, "All"]],
                "iDisplayLength": 15
            });
        });
        </script>
</head>
<body>
        <div class="datatable_container" style="min-width: 800px; max-width: 800px; margin: -15px 98px"> 
            <div id="dt_example">
                <div id="container">
                    <div id="demo_jui">
                        <table id="example" class="display" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Age</th>
                                    <th>Start date</th>
                                    <th>Salary</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>Name</th>
                                    <th>Age</th>
                                    <th>Start date</th>
                                    <th>Salary</th>
                                </tr>
                            </tfoot>
                        <tbody>
                            <c:forEach items="${list}" var="list">
                                <tr>
                                    <td>${list.employeeId}</td>
                                    <td>${list.person.firstName}</td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
