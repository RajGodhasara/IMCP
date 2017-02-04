<%-- 
    Document   : SendSMS
    Created on : Oct 11, 2016, 12:00:41 AM
    Author     : GOPIRAJ
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sent SMS</title>
    </head>
     
    <body>
      
        <h1>Sent SMS</h1>
        <form name="sms" action="#" method="post">
            <table border="0">
                <tr>
                    <td>
                        To:
                    </td>
                    <td><input type="text" placeholder="first name" class="form-control"/></td>
                </tr>
                 <tr>
                     <td>
                        Selected PreText:
                    </td>
                     <td><input type="text" class="form-control"></button></td>
                 <tr>
                     <td><input type="button" value="Pre Text" placeholder="first name" class="btn btn-success"/></td>
                 </tr>
                 <tr>  <td><input type="submit" class="btn btn-info" value="Send"></td>  </tr>
            </table>
      
    </body>
</html>