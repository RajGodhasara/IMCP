<%-- 
    Document   : SearchEmployee
    Created on : Oct 10, 2016, 11:59:20 PM
    Author     : GOPIRAJ
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>

       <jsp:include page="../IncludeResourse/DataTables.jsp"></jsp:include>
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
        <div class="datatable_container" style="min-width: 800px; max-width: 1200px; margin: -15px 95px;margin-top: 20px;"> 
            <div id="dt_example">
                <div id="container" style="width: 900px;">
                    <div id="demo_jui">
                        <table id="example" class="display" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Mail ID</th>
                                    <th>DOB</th>
                                    <th>Street Address</th>
                                    <th>City</th>
                                    <th>State</th>
                                    <th>Gender</th>
                                    <th>Person Type</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Mail ID</th>
                                    <th>DOB</th>
                                    <th>Street Address</th>
                                    <th>City</th>
                                    <th>State</th>
                                    <th>Gender</th>
                                    <th>Person Type</th>
                                </tr>
                            </tfoot>
                            <tbody>
                                <c:forEach items="${list}" var="list">
                                    <tr>
                                        <td>${list.employeeId}</td>
                                        <td>${list.person.firstName} ${list.person.middleName} ${list.person.lastName}</td>
                                        <td>${list.person.mailId}</td>
                                        <td>${list.person.dateOfBirth}</td>
                                        <td>${list.person.streetAdd}</td>
                                        <td>${list.person.city}</td>
                                        <td>${list.person.state}</td>
                                        <td>${list.person.gender}</td>
                                        <td>${list.person.personType}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
   
