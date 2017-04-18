<%-- 
    Document   : SearchEnquiry
    Created on : Apr 6, 2017, 4:31:48 PM
    Author     : GOPIRAJ
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<jsp:include page="../IncludeResourse/DataTables.jsp"></jsp:include>
        <script type="text/javascript">

            function deleteSelectedEnquiry() {
                var checkboxx = document.getElementsByName('listSelectedEnquiry');
                var listSelectedEnquiry = "";
                for (var i = 0; i < checkboxx.length; i++) {
                    if (checkboxx[i].checked) {
                        listSelectedEnquiry = listSelectedEnquiry + checkboxx[i].value + ":";
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
                                    location.href = "admin_delete_multiple_enquiry?listSelectedEnquiry=" + listSelectedEnquiry;
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
                
                jqTds[4].innerHTML = '<a class="edit" href="">Save</a>';
            }


            function saveRow(oTable, nRow)
            {
                var jqInputs = $('input', nRow);
                var id = jqInputs[0].value;
                var name = jqInputs[1].value;
                var designation = jqInputs[2].value;
                var quote = jqInputs[3].value;

                location.href = "EditCorporates?id=" + id + "&name=" + name + "&designation=" + designation + "&quote=" + quote;

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
                    "iDisplayLength": 7
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

        <div class="datatable_container" style="min-width: 800px; max-width: 800px; margin: -15px 98px; margin-top: 50px;"> 
            <div id="dt_example">
                <div id="container">
                    <div id="demo_jui">
                        <div id="dialog-confirm" title="Are you sure?"></div>
                        <table id="example" class="display" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th>ID</th> 
                                    <th>Name</th>
                                    <th>Collage Name</th>
                                    <th>Branch</th>
                                    <th>Sem</th>
                                    <th>Mail</th>
                                    <th>Status</th>
                                    
                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>ID</th> 
                                    <th>Name</th>
                                    <th>Collage Name</th>
                                    <th>Branch</th>
                                    <th>Sem</th>
                                    <th>Mail</th>
                                    <th>Status</th>
                                    
                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                            </tfoot>
                            <tbody>
                                <c:forEach items="${list}" var="list">
                                    <tr>
                                        <td>${list.enqId}</td>
                                        <td>${list.firstName} ${list.middleName} ${list.lastName}</td>
                                        <td>${list.clgName}</td>
                                        <td>${list.branch}</td>
                                        <td>${list.semester}</td>
                                        <td>${list.mailId}</td>
                                        <td>${list.status}</td>
                                        
                                        <td><a class="edit" href="">Edit</a></td>
                                        <td><input type="checkbox" name="listSelectedEnquiry"  id="listSelectedEnquiry"
                                                   value="${list.enqId}" style="width:30px;" /></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        
<div style="margin-top: 80px; margin-left: 100px;">
            <input type="button" id="buttondelete" class="btn btn-primary" onclick="deleteSelectedEnquiry()" value="Delete Selected Enquiry"/>
    </div>