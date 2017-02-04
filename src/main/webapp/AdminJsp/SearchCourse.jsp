<%-- 
    Document   : SearchCourse
    Created on : Oct 10, 2016, 11:58:59 PM
    Author     : GOPIRAJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="AdminJS/bootstrap.js"></script>
        <link rel="stylesheet" href="<%=application.getContextPath()%>/Grid/css/demo_page.css"/>
        <link rel="stylesheet" href="<%=application.getContextPath()%>/Grid/css/demo_table.css"/>
        <link rel="stylesheet" href="<%=application.getContextPath()%>/Grid/css/demo_table_ui.css"/>
        <link rel="stylesheet" href="<%=application.getContextPath()%>/Grid/css/jquery-ui-1.10.4.custom.min.css"/>
        <script src="<%=application.getContextPath()%>/Grid/js/jquery-1.9.1.js"></script>
        <script src="<%=application.getContextPath()%>/Grid/js/jquery-ui-1.10.4.custom.min.js"></script>
        <script src="<%=application.getContextPath()%>/Grid/js/jquery.colorbox-min.js"></script>
        <script src="<%=application.getContextPath()%>/Grid/js/jquery.dataTables.editable.js"></script>
        <script src="<%=application.getContextPath()%>/Grid/js/jquery.dataTables.min.js"></script>
        <script src="<%=application.getContextPath()%>/Grid/js/jquery.jeditable.js"></script>
        <script src="<%=application.getContextPath()%>/Grid/js/jquery.validate.js"></script>
    </head>
    <body>
        
<script type="text/javascript" charset="utf-8">
	$(document).ready(function() {
                $("#example").hide();
               $("#btn").click(function(){
                         $("#example").show();
		var oTable = $('#example').dataTable(
						{
							"processing" : true,
							"ajax" : {
								"url" : "http://localhost:33245/IntegratedMarketing/admin_search_course_grid",
								"dataSrc" : "rows",
								"type" : "GET"
							},
                                                         "bPaginate": true,
                "sPaginationType": "full_numbers",
                "bJQueryUI": true,
                "aLengthMenu": [[2, 5, 10, -1], [2, 5, 10, "All"]],
                "iDisplayLength": 10
						});
	});
         $(document).bind('resize', function () {
               // oTable.fnAdjustColumnSizing();
            });});
</script>

<div class="datatable_container" style="min-width: 800px; max-width: 800px;margin-top: 50px;">   
	<div id="dt_example">
                <div id="container">  
            <div id="demo_jui">
		<table  class="display"
			id="example" border="1" >
			<thead>
				<tr>
					<th style="width: 100px;">First Name</th>
					<th style="width: 100px;">Last Name</th>
					<th style="width: 100px;">Address 1</th>
					<th style="width: 100px;">Address 2</th>
                                        <th style="width: 100px;">Address 1</th>
                                </tr>
			</thead>
                        <tbody></tbody>
		</table>
            </div></div></div>
      </div>
    <input type="button" id="btn" value="show"/>
        
        
        
<!--        
        
   <script>
		$.jgrid.defaults.width = 780;
		$.jgrid.defaults.styleUI = 'Bootstrap';
	</script>     


<div style="margin-left:50px; margin-top: 50px;">
    <table id="jqGrid"></table>
    <div id="jqGridPager"></div>
</div>
        
<script type="text/javascript"> 
	$(document).ready(function () {
                alert("Welcome");
		$("#jqGrid").jqGrid({
                url: 'http://localhost:33245/IntegratedMarketing/admin_search_course_grid',
                datatype: "json",
                styleUI : 'Bootstrap',
                colModel: [
                    
                    { label: 'CourseID', name: 'CourseID', width: 150,key:true},
                    
                    { label: 'CourseName', name: 'CourseName', width: 150},
                    
                    { label: 'Description', name: 'Description', width: 150},
                    
                    { label: 'OrganizationAdmin', name: 'OrganizationAdmin', width: 150},
                     
                    { label: 'Duration', name: 'Duration', width: 150}
                     
                ],
		viewrecords: true, // show the current page, data rang and total records on the toolbar
		width: 850,
		height: 400,
		rowNum: 20,
		loadonce: true, // this is just for the demo
        	pager: "#jqGridPager"                 
            
	});
        $('#jqGrid').navGrid('#jqGridPager',
                // the buttons to appear on the toolbar of the grid
                { edit: true, add: true, del: true, search: true, refresh: false, view: false, position: "left", cloneToTop: false },
                // options for the Edit Dialog
                {
                    editCaption: "The Edit Dialog",
                    recreateForm: true,
                    checkOnUpdate : true,
                    checkOnSubmit : true,
                    closeAfterEdit: true,
                    errorTextFormat: function (data) {
                        return 'Error: ' + data.responseText;
                    }
                },
                // options for the Add Dialog
                {
                    closeAfterAdd: true,
                    recreateForm: true,
                    errorTextFormat: function (data) {
                        return 'Error: ' + data.responseText;
                    }
                },
                // options for the Delete Dailog
                {
                    errorTextFormat: function (data) {
                        return 'Error: ' + data.responseText;
                    }
                });  
});
 </script>-->
   
    </body>
</html>
