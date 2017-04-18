<%-- 
    Document   : AddSocialLinks
    Created on : Feb 24, 2017, 3:35:45 PM
    Author     : GOPIRAJ
--%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<jsp:include page="../IncludeResourse/jQuery.jsp"></jsp:include>
    <script>
        $(document).ready(function() {
            $("#Form").validate({
                rules: {
                    'facebook': {
                        required: true
                    },
                    'gmail': {
                        required: true
                    },
                    'twitter': {
                        required: true
                    }
                }
            });
        });
    </script>

    <h1>
        Add/Update Social Links.
    </h1>
    <div class="container" style="margin-top: 20px;">
        <div id="progressmain" class="progress" style="width: 400px;">
            <div id="progress" class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width:0%">
                0%
            </div>
        </div>
    </div>
<form:form method="POST" id="Form" commandName="command" action="admin_add_social_links_insert">
    <form:hidden path="SocialLinkId" cssClass="form-control"/>
    <div class="form-horizontal">
        <div class="form-group">
            <label class="control-label col-sm-2" for="facebook">Facebook</label>
            <div class="col-sm-4">
                <form:input path="facebook" cssClass="form-control CheckField" placeholder="Facebook Link"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="gmail">Gmail</label>
            <div class="col-sm-4">
                <form:input path="gmail" cssClass="form-control CheckField" placeholder="gmail Link"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="twitter">Twitter</label>
            <div class="col-sm-4">
                <form:input path="twitter" cssClass="form-control CheckField" placeholder="twitter Link"/>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-success">Submit</button>
            </div>
        </div>
    </div>

</form:form>

