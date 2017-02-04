<%-- 
    Document   : AddActivity
    Created on : Oct 19, 2016, 12:13:24 PM
    Author     : GOPIRAJ
--%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script>


 $(document).ready(function()
 {
     $("#tr").hide();
     	
     
        
        
                var url = "http://localhost:33245/IMCP/Activity?operation=selectperson";
                 
                
				$("#selector").load(url,function(){
                                    $("#tr").show();
                                    alert(rt);
                                    //$("#selector").html(rt);
                                });

        $("#btn").click(function()
	{
            var desc= $("#desc").val();
            
                var url = "http://localhost:33245/IMCP/Activity?operation=add";
                var data = {
                    "desc": desc
                    
                }; 
                $.get(url,data,function(rt,st,xht){
                                    $("#mydiv").html(rt);
                                });
				
		
	});
	
});
</script>
        
        
        
    </head>
     <body>
        <div class="container" style="margin-top: 50px;">
            <h1 style="margin-left: 180px;">Activity</h1>
            <div id="mydiv">
                </div>
            <form:form method="POST" commandName="command">
            <table border="0">
                <tr>
                    <td>
                       <label class="col-xs-3 control-label">Description</label>
                    </td>
                    <td>
                        <div class="col-xs-5">
                            <form:textarea path="Description" cssClass="form-control"/>
                        </div>
                    </td>
                </tr>
                
                <tr id="tr">
                    <td>
                       <label class="col-xs-3 control-label">Person ID:</label>
                    </td>
                    <td>                        
                        <div class="col-xs-5">
                            <form:select path="person" cssClass="dropdown" id="selector"></form:select>
                        </div>      
                    </td>
                </tr>
                
                <tr>
        <td colspan="2">
            <div class="form-group">
                <div class="col-xs-5 col-xs-offset-3" style="margin-left: 150px;">
                    <button type="submit" id="btn" class="btn btn-success">Submit</button>     
                </div>
            </div>
        </td>
    </tr>
              
            </table>
            
        </form:form>
            </div>
    </body>
</html>
