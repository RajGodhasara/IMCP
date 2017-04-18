<%-- 
    Document   : AddCorporates
    Created on : Feb 24, 2017, 9:57:40 PM
    Author     : GOPIRAJ
--%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<jsp:include page="../IncludeResourse/jQuery.jsp"></jsp:include>
<jsp:include page="../IncludeResourse/DataTables.jsp"></jsp:include>

    <script>
        $(document).ready(function() {
            $("#Form").validate({
                rules: {
                    'file': {
                        required: true
                    },
                    'name': {
                        required: true
                    },
                    'designation': {
                        required: true
                    },
                    'thought': {
                        required: true
                    }
                }
            });
        });

    </script>
    <script type="text/javascript">

        function deleteSelectedCorporates() {
            var checkboxx = document.getElementsByName('listSelectedCorporates');
            var listSelectedCorporates = "";
            for (var i = 0; i < checkboxx.length; i++) {
                if (checkboxx[i].checked) {
                    listSelectedCorporates = listSelectedCorporates + checkboxx[i].value + ":";
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
                                location.href = "admin_delete_multiple_corporates?listSelectedCorporates=" + listSelectedCorporates;
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
    <h3>
        Add Corporates Details of Institute.
    </h3>
    <div style="margin-left: 200px; margin-top: 20px;">   
        <div class="container">
            <div id="progressmain" class="progress" style="width: 400px;">
                <div id="progress" class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width:0%">
                    0%
                </div>
            </div>
        </div>
    <form:form method="POST" id="Form" commandName="command" action="admin_add_corporates_insert"enctype="multipart/form-data">

        <div class="form-horizontal">
            <div class="form-group">
                <label class="control-label col-sm-2" for="file">Photograph</label>
                <div class="col-sm-4">
                    <input type="file" name="file" required="required" class="CheckField file-upload"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="name">Coporater Name</label>
                <div class="col-sm-4">
                    <form:input path="name" id="name" name="name" cssClass="form-control CheckField" placeholder="Corporater Name"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="name">Designation</label>
                <div class="col-sm-4">
                    <form:input path="designation" id="designation" name="designation" cssClass="form-control CheckField" placeholder="Corporater Designation"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="name">Quote</label>
                <div class="col-sm-4">
                    <form:input path="thought" id="thought" name="thought" cssClass="form-control CheckField" placeholder="Corporater Quotes"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-success" id="employeeSubmit">Submit</button>
                </div>
            </div>
        </div>
    </form:form>
</div>
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
                            <th>Designation</th>
                            <th>Quote</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>ID</th> 
                            <th>Name</th>
                            <th>Designation</th>
                            <th>Quote</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                    </tfoot>
                    <tbody>
                        <c:forEach items="${list}" var="list">
                            <tr>
                                <td>${list.corporatesId}</td>
                                <td>${list.name}</td>
                                <td>${list.designation}</td>
                                <td>${list.thought}</td>
                                <td><a class="edit" href="">Edit</a></td>
                                <td><input type="checkbox" name="listSelectedCorporates"  id="listSelectedCorporates"
                                           value="${list.corporatesId}" style="width:30px;" /></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<div style="margin-top: 80px; margin-left: 100px;">
    <input type="button" id="buttondelete"  onclick="deleteSelectedCorporates()" value="Delete Selected Corporate" class="btn btn-primary"/>
</div>
