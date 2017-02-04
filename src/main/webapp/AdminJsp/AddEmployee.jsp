<%-- 
    Document   : AddEmployee
    Created on : Oct 10, 2016, 11:59:10 PM
    Author     : GOPIRAJ
--%>


<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html>
    <head>
       <!--  jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Isolated Version of Bootstrap, not needed if your site already uses Bootstrap -->
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />

<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
  j=0;
function createdefault()
 {
	j++;
	ctrl0 = $(document.createElement('input')).attr({'type':'text','id':'txtt'+j,'class':'form-control'});
	ctrl1 = $(document.createElement('input')).attr({'type':'button','value':'+','class':'btnp'+j,'id':'btnp'+j});
	ctrl2 = $(document.createElement('input')).attr({'type':'button','value':'-','class':'btnm'+j,'id':'btnm'+j});
	br = $(document.createElement('br'));
	$("#mydiv").append(ctrl0,ctrl1,ctrl2,br);
	
	$(ctrl1).attr({'onClick':function ()
	{
			$( this ).on( "click", function(elem) 
				{ 
					$("#btnp"+j).remove();
					createdefault();
				});
	}});
	$(ctrl2).attr({'onClick':function ()
	{
			$( this ).on( "click", function(elem) 
				{ 
					 var currentId = $(this).attr('id');
			//		 alert(currentId);
					 
					 p=currentId.charAt(4);
					 alert(p);
					 
					x=$("#btnp"+p);
					// here length property will check in whole document whether that jquery obj is present or not.
			//		alert(x.length+"plus");
					y = x.length;
					if(y == "1")
					{
						//with plus
						$("#btnp"+p).remove();
						//and add another plus to previous element.
			//			alert("creating element");
						ctrl1 = $(document.createElement('input')).attr({'type':'button','value':'+','class':'btnp'+(j-1),'id':'btnp'+(j-1)});
						$(ctrl1).attr({'onClick':function ()
						{
							$( this ).on( "click", function(elem) 
							{ 
								$("#btnp"+(j-1)).remove();
								createdefault();
							});
						}
						});
						$("#mydiv").append(ctrl1);
                                                
					}
				
					$("#txtt"+p).remove();
					$("#btnm"+p).remove();
		
				});
	}});
	
 }

 $(document).ready(function()
 {
	
	alert("welcome");
	
	$("#generate").click(function()
	{
		  createdefault();
			$("#generate").hide();
	});
	
	$( "#mydiv" ).on( "click","input.btnm"+j, function(elem) 
							{ 
									createdefault();
							});		
	
});
</script>


<script>
    $(document).ready(function(){
      var date_input=$('input[name="dob"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'mm/dd/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
</script>

<style type="text/css">
/**
 * Override feedback icon position
 * See http://formvalidation.io/examples/adjusting-feedback-icon-position/
 */
#eventForm .form-control-feedback {
    top: 0;
    right: -15px;
}


</style>

<script>
$(document).ready(function() {

    $('#eventForm').formValidation({
        framework: 'bootstrap',
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            firstname: {
                validators: {
                    notEmpty: {
                        message: 'The name is required'
                    }
                }
            },
            date: {
                validators: {
                    notEmpty: {
                        message: 'The date is required'
                    },
                    date: {
                        format: 'MM/DD/YYYY',
                        message: 'The date is not a valid'
                    }
                }
            }
        }
    });
});
</script>

    </head>
    <body>
    
    <form:form method="POST" commandName="command">
        <table>
           <h1>Create new employee</h1>
           <tr>
                    <td>
                        <label class="col-xs-3 control-label">First name:</label>
                    </td>
                    <td><form:input path="${model.Person.firstName}" cssClass="form-control"/></td>
                </tr>
                <tr>
                    <td><label class="col-xs-3 control-label">Middle name:</label></td>
                    <td><form:input path="${model.Person.middleName}" cssClass="form-control"/></td>
                </tr>
                <tr>
                    <td><label class="col-xs-3 control-label">Last name:</label></td>
                    <td><form:input path="${model.Person.lastName}" cssClass="form-control"/></td>
                </tr>
                <tr>
                    <td><label class="col-xs-3 control-label">Date of Birth:</label></td>
                    <td><div class="input-group date" data-provide="datepicker">
                           
                            <input type="date"  class="form-control" value=""/>
                         <span class="input-group-addon"><span class="glyphicon-calendar glyphicon"></span></span>
                        </div></td>    
            </tr>
            <tr>
                    <td><label class="col-xs-3 control-label">Mail ID:</label></td>
                    <td><form:input path="${model.Person.mailId}" cssClass="form-control"/></td>
            </tr>
            
                <tr>
                    <td><label class="col-xs-3 control-label">Person Type:</label></td>
                    <td>
                        <form:select path="${model.Person.personType}" cssClass="form-control">
                            <form:option value="employee">Employee</form:option>
                            <form:option value="admin">Administrator</form:option>
                        </form:select>
                    </td>
                </tr>
                
            <tr>
                    <td><label class="col-xs-3 control-label">Password:</label></td>
                    <td><form:input path="${model.emp.password}" cssClass="form-control"/></td>
            </tr>
            <tr>
                    <td><label class="col-xs-3 control-label">Street Address:</label></td>
                    <td><form:input path="${model.Person.streetAdd}" cssClass="form-control"/></td>
            </tr>
            <tr>
                    <td><label class="col-xs-3 control-label">City:</label></td>
                    <td><form:input path="${model.Person.city}" cssClass="form-control"/></td>
            </tr>
            <tr>
                    <td><label class="col-xs-3 control-label">State:</label></td>
                    <td><form:input path="${model.Person.state}" cssClass="form-control"/></td>
            </tr>
            <tr>
                    <td><label class="col-xs-3 control-label">Gender:</label></td>
                    <td><form:radiobutton path="${model.Person.gender}" value="M"/>Male
                        <form:radiobutton path="${model.Person.gender}" value="F"/>Female</td>
            </tr>
            <tr>
                    <td><label class="col-xs-3 control-label">Contact Numebr:</label></td>
                    <td><form:input path="${model.Person.contactNo}" cssClass="form-control"/></td>
            </tr>
<!--         
            
    -->        <tr>
                <td></td>
                <td><div id="mydiv"></div></td>
            </tr>
            <tr>
                    <td><label class="col-xs-3 control-label">Position:</label></td>
                    <td><form:input path="${model.emp.position}" cssClass="form-control"/></td>
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
    
    </body>
</html>

