<%-- 
    Document   : SearchCourse
    Created on : Oct 10, 2016, 11:58:59 PM
    Author     : GOPIRAJ
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<jsp:include page="../IncludeResourse/DataTables.jsp"></jsp:include>
    <script type="text/javascript">

        function deleteSelectedCourse() {
            var checkboxx = document.getElementsByName('listSelectedCourse');
            var listSelectedCourse = "";
            for (var i = 0; i < checkboxx.length; i++) {
                if (checkboxx[i].checked) {
                    listSelectedCourse = listSelectedCourse + checkboxx[i].value + ":";
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
                                location.href = "admin_delete_multiple_course?listSelectedCourse=" + listSelectedCourse;
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

    <div class="datatable_container" style="min-width: 800px; max-width: 800px; margin: -15px 98px; margin-top: 20px;"> 
        <div id="dt_example">
            <div id="container">
                <div id="demo_jui">
                    <div id="dialog-confirm" title="Are you sure?"></div>
                    <table id="example" class="display" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>ID</th> 
                                <th>Name</th>
                                <th>Duration</th>
                                <th>Description</th>
                                <th>Updated By</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Duration</th>
                                <th>Description</th>
                                <th>Updated By</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                        </tfoot>
                        <tbody>
                        <c:forEach items="${list}" var="list">
                            <tr>
                                <td>${list.courseId}</td>
                                <td>${list.courseName}</td>
                                <td>${list.duration}</td>
                                <td>${list.description}</td>
                                <td>${list.organizationAdmin.person.firstName}</td>
                                <td><a class="edit" href="">Edit</a></td>
                                <td><input type="checkbox" name="listSelectedCourse"  id="listSelectedCourse"
                                           value="${list.courseId}" style="width:30px;" /></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
    <div style="margin-top: 80px; margin-left: 100px;">
        <input type="button" class="btn btn-primary" id="buttondelete"  onclick="deleteSelectedCourse()" value="Delete Selected Course"/>
    </div>

