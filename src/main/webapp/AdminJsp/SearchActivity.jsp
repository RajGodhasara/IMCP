<%-- 
    Document   : SearchActivity
    Created on : Oct 22, 2016, 6:43:37 PM
    Author     : GOPIRAJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../style/dataTables.bootstrap.css" rel="stylesheet"/>
        
    </head>
    <body>
        
    <script src="js/bootstrap.js">
    <script type="text/ecmascript" src="JQGrid-JS/jquery-1.11.0.min.js"></script> 
    <script type="text/ecmascript" src="JQGrid-JS/i18n/grid.locale-en.js"></script>
    <script type="text/ecmascript" src="JQGrid-JS/jquery.jqGrid.min.js"></script>
    
   <script>
		$.jgrid.defaults.width = 780;
		$.jgrid.defaults.styleUI = 'Bootstrap';
	</script>     

<div style="margin-left:150px; margin-top: 100px;">
    <table id="jqGrid"></table>
    <div id="jqGridPager"></div>
</div>
<script type="text/javascript"> 
	$(document).ready(function () {

                
		$("#jqGrid").jqGrid({
                url: 'http://localhost:33245/IMCP/Activity?operation=search',
                datatype: "json",
                styleUI : 'Bootstrap',
                colModel: [
                    
                    { label: 'ActivityID', name: 'ActivityID', width: 150,key:true},
                    
                    { label: 'Description', name: 'Description', width: 150},
                    
                    { label: 'Person ID', name: 'PersonID', width: 150},
                     
                    { label: 'Attachment', name: 'Attachment', width: 150},
                     
                   // { label: 'Attachment', name: 'CreationTime', formatter: "date", width: 150}
                    
                    
                    
                    /*  { label: 'Activity ID', name: 'ActivityID', width: 150},
                        { label: 'Description', name: 'Description', width: 150, editable:true, editrules: { required:true }},
			{ label: 'Creation Time', name: 'CreationTime', width: 150, editable:true, editrules: { required: true } },
                        { label: 'Attachment', name: 'Attachment', width: 150, editable:true, editrules: { required: true }},
                        { label: 'Person Id', name: 'PersonID', width: 150, editable:true, editrules: { required: true }}              
                        */
                ],
		viewrecords: true, // show the current page, data rang and total records on the toolbar
		width: 780,
		height: 200,
		rowNum: 5,
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

 </script>
        
    </body>
</html>
