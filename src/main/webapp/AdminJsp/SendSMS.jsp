<%-- 
    Document   : SendSMS
    Created on : Oct 11, 2016, 12:00:41 AM
    Author     : GOPIRAJ
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sent SMS</title>
        <script type="text/javascript"
    src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function()
            {
                alert("welcome....");
                
                jQuery("#submit").click(function () {
                    jQuery.ajax({
                        url: 'admin_send_sms_insert',
                        async: false,
                        data: {
                            Enquiry: jQuery('#Enquiry').val(),
                            PreText:jQuery('#PreText').val()
                        },  
                        dataType: 'json',
                        success: function (params) {
                            alert('updated successfully');
                        },
                        error: function (error) {
                            alert('update failed !!'+error.val());
                        }
                    })
                });
                
                $( "#status" ).change(function () {
                    
                    $.ajax({
                        url : 'admin_search_enquiry_status',
                        data:{
                            Status: jQuery('#status').val()
                        },
                        success : function(data) {
                        $("#result").append(data);
                            $.each(data, function(index,value) { 
                     
                                  $('#Enquiry')
                                .append($("<option></option>")
                                .attr("value",value)
                                .text(value)); 
                                    
                            }); 
                        }
                    });
                });
            });
        </script>
        
    </head>
     
    <body>
        <div id="result"></div>
        <h1>Sent SMS</h1>
        ${answer}
        <%--<form:form method="POST" action="admin_send_sms_insert">--%>
        <form>
            <table border="0">
                <tr>
                    <td>
                        Status:
                    </td>
                    <td>
                        <div class="col-xs-5">
                           
                            <select id="status" class="form-control">
                                <option selected="selected">---Select---</option>
                                <option value="Interested">Interested</option>
                                <option value="Partially Interested">Partially Interested</option>
                                <option value="Not Interested">Not Interested</option>
                            </select>
                           
                        </div>                        
                    </td>
                </tr>
                
                <tr>
                    <td>
                        To:
                    </td>
                    <td>
                        <div class="col-xs-5">
                           
                                <select id="Enquiry" class="form-control">
  					<option selected="selected">---Select---</option>
                                        
                                </select>                
                           
                        </div>                        
                    </td>
                </tr>
                 <tr>
                    <td>
                        Selected PreText:
                    </td>
                    <td>
                        
                            <select id="PreText" class="form-control">
  					<option selected="selected">---Select---</option>
                                        <c:forEach var="list" items="${list}">
                                            <option value="${list}">${list}</option>
                                        </c:forEach>
                                </select>                
                    </td>
                 </tr>
                 
                        <tr>  <td><input type="submit" id="submit" class="btn btn-info" value="Send"></td>  </tr>
            </table>
                        <%--</form:form>--%>
        </form>
      
        <table id="enquiryTable">
            
        </table>
        
    </body>
</html>