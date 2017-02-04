<%-- 
    Document   : SendMail
    Created on : Oct 11, 2016, 12:00:50 AM
    Author     : GOPIRAJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mail</title>
    </head>
   
    <body>
       
    <body><div class="form-group">
            <form name="name" action="#" method="post">
                 <h1>Mail</h1>
                 <table border="0">
            <tr>
            <td>To: </td> 
                <td>
                    <input type="text"  class="form-control" />
                </td>
            </tr>
            <tr>
            <td>cc: </td> 
                <td>
                    <input type="text"  class="form-control" />
                </td>
            </tr>
            <tr>
            <td>Bcc: </td> 
                <td>
                    <input type="text"  class="form-control" />
                </td>
            </tr>
            <tr>
            <td>Subject: </td> 
                <td>
                    <input type="text"  class="form-control" />
                </td>
            </tr>
            <tr>
            <td>Description: </td> 
                <td>
                    <input type="textarea" rows="2" cols="35" class="form-control" />
                </td>
            </tr>
            <tr>
            <td>Attachment: </td> 
                <td>
                    <input type="file" class="btn btn" value="Browser" />
                </td>
            </tr>
            
                 </table>
                 <p> <input type="button" class="btn btn-success" value="submit"></p>
            </form>
        </div>
    </body>
</html>
