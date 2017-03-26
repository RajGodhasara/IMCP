<%-- 
    Document   : SendMail
    Created on : Oct 11, 2016, 12:00:50 AM
    Author     : GOPIRAJ
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mail</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <style>
               body{margin-top:20px;
background:#eee;
}
.inbox .inbox-menu ul {
    margin-top: 30px;
    padding: 0;
    list-style: none
}

.inbox .inbox-menu ul li {
    height: 30px;
    padding: 5px 15px;
    position: relative
}

.inbox .inbox-menu ul li:hover,
.inbox .inbox-menu ul li.active {
    background: #e4e5e6
}

.inbox .inbox-menu ul li.title {
    margin: 20px 0 -5px 0;
    text-transform: uppercase;
    font-size: 10px;
    color: #d1d4d7
}

.inbox .inbox-menu ul li.title:hover {
    background: 0 0
}

.inbox .inbox-menu ul li a {
    display: block;
    width: 100%;
    text-decoration: none;
    color: #3d3f42
}

.inbox .inbox-menu ul li a i {
    margin-right: 10px
}

.inbox .inbox-menu ul li a .label {
    position: absolute;
    top: 10px;
    right: 15px;
    display: block;
    min-width: 14px;
    height: 14px;
    padding: 2px
}

.inbox ul.messages-list {
    list-style: none;
    margin: 15px -15px 0 -15px;
    padding: 15px 15px 0 15px;
    border-top: 1px solid #d1d4d7
}

.inbox ul.messages-list li {
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px;
    cursor: pointer;
    margin-bottom: 10px;
    padding: 10px
}

.inbox ul.messages-list li a {
    color: #3d3f42
}

.inbox ul.messages-list li a:hover {
    text-decoration: none
}

.inbox ul.messages-list li.unread .header,
.inbox ul.messages-list li.unread .title {
    font-weight: 700
}

.inbox ul.messages-list li:hover {
    background: #e4e5e6;
    border: 1px solid #d1d4d7;
    padding: 9px
}

.inbox ul.messages-list li:hover .action {
    color: #d1d4d7
}

.inbox ul.messages-list li .header {
    margin: 0 0 5px 0
}

.inbox ul.messages-list li .header .from {
    width: 49.9%;
    white-space: nowrap;
    overflow: hidden!important;
    text-overflow: ellipsis
}

.inbox ul.messages-list li .header .date {
    width: 50%;
    text-align: right;
    float: right
}

.inbox ul.messages-list li .title {
    margin: 0 0 5px 0;
    white-space: nowrap;
    overflow: hidden!important;
    text-overflow: ellipsis
}

.inbox ul.messages-list li .description {
    font-size: 12px;
    padding-left: 29px
}

.inbox ul.messages-list li .action {
    display: inline-block;
    width: 16px;
    text-align: center;
    margin-right: 10px;
    color: #d1d4d7
}

.inbox ul.messages-list li .action .fa-check-square-o {
    margin: 0 -1px 0 1px
}

.inbox ul.messages-list li .action .fa-square {
    float: left;
    margin-top: -16px;
    margin-left: 4px;
    font-size: 11px;
    color: #fff
}

.inbox ul.messages-list li .action .fa-star.bg {
    float: left;
    margin-top: -16px;
    margin-left: 3px;
    font-size: 12px;
    color: #fff
}

.inbox .message .message-title {
    margin-top: 30px;
    padding-top: 10px;
    font-weight: 700;
    font-size: 14px
}

.inbox .message .header {
    margin: 20px 0 30px 0;
    padding: 10px 0 10px 0;
    border-top: 1px solid #d1d4d7;
    border-bottom: 1px solid #d1d4d7
}

.inbox .message .header .avatar {
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px;
    height: 34px;
    width: 34px;
    float: left;
    margin-right: 10px
}

.inbox .message .header i {
    margin-top: 1px
}

.inbox .message .header .from {
    display: inline-block;
    width: 50%;
    font-size: 12px;
    margin-top: -2px;
    color: #d1d4d7
}

.inbox .message .header .from span {
    display: block;
    font-size: 14px;
    font-weight: 700;
    color: #3d3f42
}

.inbox .message .header .date {
    display: inline-block;
    width: 29%;
    text-align: right;
    float: right;
    font-size: 12px;
    margin-top: 18px
}

.inbox .message .attachments {
    border-top: 3px solid #e4e5e6;
    border-bottom: 3px solid #e4e5e6;
    padding: 10px 0;
    margin-bottom: 20px;
    font-size: 12px
}

.inbox .message .attachments ul {
    list-style: none;
    margin: 0 0 0 -40px
}

.inbox .message .attachments ul li {
    margin: 10px 0
}

.inbox .message .attachments ul li .label {
    padding: 2px 4px
}

.inbox .message .attachments ul li span.quickMenu {
    float: right;
    text-align: right
}

.inbox .message .attachments ul li span.quickMenu .fa {
    padding: 5px 0 5px 25px;
    font-size: 14px;
    margin: -2px 0 0 5px;
    color: #d1d4d7
}

.inbox .contacts ul {
    margin-top: 30px;
    padding: 0;
    list-style: none
}

.inbox .contacts ul li {
    height: 30px;
    padding: 5px 15px;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis!important;
    position: relative;
    cursor: pointer
}

.inbox .contacts ul li .label {
    display: inline-block;
    width: 6px;
    height: 6px;
    padding: 0;
    margin: 0 5px 2px 0
}

.inbox .contacts ul li:hover {
    background: #e4e5e6
}
        </style>
<!--        <script>
            $(document).ready(function()
            {
               jQuery("#submit").click(function () {
                   alert(jQuery('#To').val());
                    jQuery.ajax({
                        url: 'admin_send_mail_send',
                        async: false,
                        data: {
                            TO: jQuery('#To').val(),
                            CC:jQuery('#CC').val(),
                            BCC:jQuery('#BCC').val(),
                            DESC:jQuery('#message').val()
                        },
                        dataType:'text',
                        success: function (params) {
                            alert('Sent Success.');
                        },
                        error: function (error) {
                            alert('update failed !!'+error.val());
                        }
                    });
                }); 
            });
    </script>-->
    <script>
        function setText(){
            $("#message").val($('#PreTextMessage').val());
        }
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<body>
    <div class="container">
        <div class="row inbox">
            <div class="col-md-9">
		<div class="panel panel-default">
			<div class="panel-body message">
				<p class="text-center">New Message</p>
                                <div style="margin-bottom: 10px;">
                                Select Status of Enquiry for Sorting:
                                
                                <select id="status" class="form-control">
                                    <option value="Interested">Interested</option>
                                    <option value="Partially Interested">Partially Interested</option>
                                    <option value="Not Interested">Not Interested</option>
                                </select>
                                </div>
                                <form class="form-horizontal" action="admin_send_mail_send" role="form">
					<div class="form-group">
				    	<label for="to" class="col-sm-1 control-label">To:</label>
				    	<div class="col-sm-11">
                                            <select id="To" name="TO" class="form-control selectpicker" multiple data-selected-text-format="count > 3">    
                                            </select>
            			    	</div>
				  	</div>
					<div class="form-group">
            			    	<label for="cc" class="col-sm-1 control-label">CC:</label>
				    	<div class="col-sm-11">
                                            <select id="CC" name="CC" class="form-control selectpicker" multiple data-selected-text-format="count > 3">
                                            </select>
				    	</div>
				  	</div>
					<div class="form-group">
				    	<label for="bcc" class="col-sm-1 control-label">BCC:</label>
				    	<div class="col-sm-11">
                                            <select id="BCC" name="BCC" class="form-control selectpicker" multiple data-selected-text-format="count > 3">
                                            </select>
				    	</div>
				  	</div>
				  
				
				<div class="col-sm-11 col-sm-offset-1">
					<div class="btn-toolbar" role="toolbar">
						<div class="btn-group">
						  	<button class="btn btn-default"><span class="fa fa-bold"></span></button>
						  	<button class="btn btn-default"><span class="fa fa-italic"></span></button>
							<button class="btn btn-default"><span class="fa fa-underline"></span></button>
						</div>
            					<div class="btn-group">
						  	<button class="btn btn-default"><span class="fa fa-align-left"></span></button>
						  	<button class="btn btn-default"><span class="fa fa-align-right"></span></button>
						  	<button class="btn btn-default"><span class="fa fa-align-center"></span></button>
							<button class="btn btn-default"><span class="fa fa-align-justify"></span></button>
						</div>
						<div class="btn-group">
						  	<button class="btn btn-default"><span class="fa fa-indent"></span></button>
						  	<button class="btn btn-default"><span class="fa fa-outdent"></span></button>
						</div>
						
						<div class="btn-group">
						  	<button class="btn btn-default"><span class="fa fa-list-ul"></span></button>
						  	<button class="btn btn-default"><span class="fa fa-list-ol"></span></button>
						</div>
						<button class="btn btn-default"><span class="fa fa-trash-o"></span></button>	
                                                <button class="btn btn-default"><span class="fa fa-paperclip"></span></button>
                                                <div style="margin-top:10px;">
                                                <input type="file" name="file" class="file-upload" />
						</div>
					</div>
						
					<div class="form-group">
                                            
                                            <select id="PreTextMessage" class="form-control" onchange="setText();" name="message">
                                                          <option selected="selected" >Select Message</option>
                                        <c:forEach var="list" items="${listPretext}">
                                            <option value="${list.message}" id="${list.message}" class="option">${list.title}</option>
                                        </c:forEach>
                                </select><br/>
                                <!-- if we add disable to textarea then the value of it wont be sent by the form as its readonly property -->
                                <textarea class="form-control" id="message" rows="12" placeholder="Click here to reply"></textarea>
        				</div>
					<div class="form-group">	
                                            <button type="submit" id="submit" class="btn btn-success">Send</button>
                                            
						<button type="submit" class="btn btn-default">Draft</button>
						<button type="submit" class="btn btn-danger">Discard</button>
					</div>
				</div>	
                                    </form>
			</div>	
		</div>	
	</div><!--/.col-->		
</div>
</div>

<script>
jQuery('#status').change(function (){
    jQuery('#To').find('option').remove();
    jQuery('#CC').find('option').remove();
    jQuery('#BCC').find('option').remove();
    <c:forEach var="list" items="${listEnquiry}">
            if("${list.status}" === jQuery('#status').val()){
                jQuery('#To').append("<option>"+"${list.mailId}"+"</option>");
                jQuery('#CC').append("<option>"+"${list.mailId}"+"</option>");
                jQuery('#BCC').append("<option>"+"${list.mailId}"+"</option>");
            }
    </c:forEach>
});       
</script>    
    
</body>
</html>
