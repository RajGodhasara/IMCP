<%-- 
    Document   : SearchSendMail
    Created on : Apr 7, 2017, 11:49:38 AM
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
    <script src="AdminJS/bootstrap.js"></script>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css"/>
        <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
              rel = "stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
        <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
        <script type="text/javascript">

            function deleteSelectedMail() {
                var checkboxx = document.getElementsByName('listSelectedSendMail');
                var listSelectedSendMail = "";
                for (var i = 0; i < checkboxx.length; i++) {
                    if (checkboxx[i].checked) {
                        listSelectedSendMail = listSelectedSendMail + checkboxx[i].value + ":";
                    }
                }
                $("#dialog-confirm").dialog({
                    resizable: false,
                    height: 140,
                    dialogClass: "mycolor",
                    modal: true,
                    show: {
                        effect: "blind",
                        duration: 1000
                    },
                    hide: {
                        effect: "explode",
                        duration: 1000
                    },
                    buttons:
                            {
                                "Delete data": function() {
                                    $(this).dialog("close");
                                    location.href = "admin_delete_multiple_sendmail?listSelectedSendMail=" + listSelectedSendMail;
                                },
                                Cancel: function() {
                                    $(this).dialog("close");
                                }
                            }
                });
                $("#dialog-confirm").dialog("open");
            }

            function editRow(oTable, nRow)
            {
                var aData = oTable.fnGetData(nRow);
                var jqTds = $('>td', nRow);

                jqTds[0].innerHTML = '<input type="text" value="' + aData[0] + '" readOnly>';
                jqTds[1].innerHTML = '<input type="text" value="' + aData[1] + '">';
                jqTds[2].innerHTML = '<input type="text" value="' + aData[2] + '">';
                jqTds[3].innerHTML = '<input type="text" value="' + aData[3] + '">';
                jqTds[4].innerHTML = '<input type="text" value="' + aData[4] + '">';

                jqTds[5].innerHTML = '<a class="edit" href="">Save</a>';
            }


            function saveRow(oTable, nRow)
            {
                var jqInputs = $('input', nRow);
                var id = jqInputs[0].value;
                var name = jqInputs[1].value;
                var dur = jqInputs[2].value;
                var desc = jqInputs[3].value;
                var admin = jqInputs[4].value;

                location.href = "EditCourse?id=" + id + "&name=" + name + "&dur=" + dur + "&desc=" + desc + "&admin=" + admin;

                oTable.fnUpdate('<a class="edit" href="">Edit</a>', nRow, 5, false);
                oTable.fnDraw();
            }

            function restoreRow(oTable, nRow) {
                var aData = oTable.fnGetData(nRow);
                var jqTds = $('>td', nRow);

                for (var i = 0, iLen = jqTds.length; i < iLen; i++) {
                    oTable.fnUpdate(aData[i], nRow, i, false);
                }
                oTable.fnDraw();
            }

            $(document).ready(function() {
                oTable = $("#example").dataTable({
                    "bScrollCollapse": true,
                    "bPaginate": true,
                    "sPaginationType": "full_numbers",
                    "bJQueryUI": true,
                    "aLengthMenu": [[3, 5, 10, -1], [3, 5, 10, "All"]],
                    "iDisplayLength": 3
                });

                var nEditing = null;

                $(document).on('click', '#example a.edit', function(e) {

                    e.preventDefault();

                    var nRow = $(this).parents('tr')[0];
                    if (nEditing !== null && nEditing != nRow) {
                        /* Currently editing - but not this row - restore the old before continuing to edit mode */
                        restoreRow(oTable, nEditing);
                        editRow(oTable, nRow);
                        nEditing = nRow;
                    }
                    else if (nEditing == nRow && this.innerHTML == "Save") {
                        /* Editing this row and want to save it */
                        saveRow(oTable, nEditing);
                        nEditing = null;
                    }
                    else {
                        /* No edit in progress - let's start one */
                        editRow(oTable, nRow);
                        nEditing = nRow;
                    }
                });
            });
        </script>
    <body>
        <div class="datatable_container" style="min-width: 800px; max-width: 800px; margin: -15px 98px"> 
            <div id="dt_example">
                <div id="container">
                    <div id="demo_jui">
                        <div id="dialog-confirm" title="Are you sure?"></div>
                        <table id="example" class="display" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Enquiry Mail</th>
                                    <th>Sent By</th>
                                    <th>Message</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>ID</th>
                                    <th>Enquiry Mail</th>
                                    <th>Sent By</th>
                                    <th>Message</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                            </tfoot>
                            <tbody>
                                <c:forEach items="${list}" var="list">
                                    <tr>
                                        <td>${list.sentMailId}</td>
                                        <td>${list.enquiry.mailId}</td>
                                        <td>${list.person.firstName}</td>
                                        <td>${list.preText.title}</td>
                                        
                                        <td><a class="edit" href="">Edit</a></td>
                                        <td><input type="checkbox" name="listSelectedSendMail"  id="listSelectedSendMail"
                                                   value="${list.sentMailId}" style="width:30px;" /></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <input type="button" id="buttondelete"  onclick="deleteSelectedMail()" value="Delete Selected Course"/>
    </body>
</html>
