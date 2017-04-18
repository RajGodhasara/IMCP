<%-- 
    Document   : SendSMS
    Created on : Oct 11, 2016, 12:00:41 AM
    Author     : GOPIRAJ
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>

<script type="text/javascript"
src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script type="text/javascript">
    $(document).ready(function()
    {
        jQuery("#submit").click(function() {
            jQuery.ajax({
                url: 'admin_send_sms_insert',
                async: false,
                data: {
                    Enquiry: jQuery('#Enquiry').val(),
                    PreText: jQuery('#PreText').val()
                },
                success: function(params) {
                    alert('SMS Sending successful');
                },
                error: function(error) {
                    alert('SMS Sending failed !!' + error.val());
                }
            });
        });

        $("#status").change(function() {

            $.ajax({
                url: 'admin_search_enquiry_status',
                data: {
                    Status: jQuery('#status').val()
                },
                success: function(data) {
                    $("#result").append(data);
                    $.each(data, function(index, value) {

                        $('#Enquiry')
                                .append($("<option></option>")
                                        .attr("value", value)
                                        .text(value));

                    });
                }
            });
        });
    });
</script>

<div style="margin-left: 200px;">   

    <h1>Sent SMS</h1>
    ${answer}
    <form>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="control-label col-sm-2" for="status">Sort By Status</label>
                <div class="col-sm-4">
                    <select id="status" class="form-control" >
                        <option selected="selected" disabled="disabled">Select Status</option>
                        <option value="Interested">Interested</option>
                        <option value="Partially Interested">Partially Interested</option>
                        <option value="Not Interested">Not Interested</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="course">All Enquirer</label>
                <div class="col-sm-4">
                    <Button id="customerButton" class="btn btn-default">All Customers</Button>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="course">Sort By Course</label>
                <div class="col-sm-4">
                    <select id="course" name="course" class="form-control">    
                        <option value="Default" disabled="disabled">Select Course</option>
                        <c:forEach var="listCourse" items="${listCourse}">
                            <option value="${listCourse.courseId}">${listCourse.courseName}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="course">Send TO</label>
                <div class="col-sm-4">
                    <select id="Enquiry" class="form-control">
                        <option selected="selected" disabled="disabled">Select Enquirer</option>
                    </select>                
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="PreText">Select PreText</label>
                <div class="col-sm-4">
                    <select id="PreText" class="form-control" onchange="setText();">
                        <option selected="selected">---Select---</option>
                        <c:forEach var="list" items="${list}">
                            <option value="${list.message}">${list.title}</option>
                        </c:forEach>
                    </select>                   
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="messagedesc">Selected PreText Description</label>
                <div class="col-sm-4">
                    <textarea id="messagedesc" name="messagedesc" readonly="readonly"></textarea>                  
                </div>
            </div>
            <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" id="submit" class="btn btn-success">Submit</button>
                    </div>
                </div>
        </div>
    </form>
</div>
<table id="enquiryTable">

</table>

<script>
    function setText() {
        $("#messagedesc").val($('#PreText').val());
    }
</script>
<script>
    jQuery('#status').change(function() {
        jQuery('#Enquiry').find('option').remove();
    <c:forEach var="listEnquiryCN" items="${listEnquiryCN}">
        if ("${listEnquiryCN.enquiry.status}" === jQuery('#status').val()) {
            jQuery('#Enquiry').append("<option value="+${listEnquiryCN.contactNumber}+">" + "${listEnquiryCN.contactNumber}" + "</option>");
        }
    </c:forEach>
    });
</script>
<script>
    function customerButton(event) {
        document.getElementById('customerMsg').style.display = 'block';

    }
</script>
