<%-- 
    Document   : f1.jsp
    Created on : Oct 10, 2016, 3:34:56 PM
    Author     : GOPIRAJ
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <!-- Title and other stuffs -->
        <title>IMCP</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="">

        <link rel="stylesheet" href="Grid/css/demo_page.css">
        <link rel="stylesheet" href="Grid/css/demo_table.css">
        <link rel="stylesheet" href="Grid/css/demo_table_iui.css">
        <link rel="stylesheet" href="Grid/css/demo_table_iui.css">

        <!-- Grid JS Vaishali -->
        <script src="Grid/jquery.validate.js"></script>
        <script src="Grid/jquery.jeditable.js"></script>
        <script src="Grid/jquery.dataTables.min.js"></script>
        <script src="Grid/jquery.dataTables.editable.min.js"></script>
        <script src="Grid/jquery.colorbox-min.js"></script>
        <script src="Grid/jquery-ui-1.10.4.custom.min.js"></script>
        <script src="Grid/jquery-1.9.1.js"></script>


        <!-- Stylesheets -->
        <link href="AdminStyle/bootstrap.css" rel="stylesheet">
        <!-- Font awesome icon -->
        <link rel="Stylesheet" href="AdminStyle/font-awesome.css">
        <!-- jQuery UI -->
        <link rel="Stylesheet" href="AdminStyle/jquery-ui-1.9.2.custom.min.css">
        <!-- Calendar -->
        <link rel="Stylesheet" href="AdminStyle/fullcalendar.css">
        <!-- prettyPhoto -->
        <link rel="Stylesheet" href="AdminStyle/prettyPhoto.css">
        <!-- Star rating -->
        <link rel="Stylesheet" href="AdminStyle/rateit.css">
        <!-- Date picker -->
        <link rel="Stylesheet" href="AdminStyle/bootstrap-datetimepicker.min.css">
        <!-- CLEditor -->
        <link rel="Stylesheet" href="AdminStyle/jquery.cleditor.css">
        <!-- Uniform -->
        <link rel="Stylesheet" href="AdminStyle/uniform.default.css">
        <!-- Uniform -->
        <link rel="Stylesheet" href="AdminStyle/daterangepicker-bs3.css">
        <!-- Bootstrap toggle -->
        <link rel="Stylesheet" href="AdminStyle/bootstrap-switch.css">

        <link rel="Stylesheet" href="AdminStyle/dataTables.bootstrap.css">


        <!-- Main stylesheet -->
        <link href="AdminStyle/style.css" rel="stylesheet">
        <!-- Widgets stylesheet -->
        <link href="AdminStyle/widgets.css" rel="stylesheet">
        <!-- Gritter Notifications stylesheet -->
        <link href="AdminStyle/jquery.gritter.css" rel="stylesheet">

        <!-- Favicon -->
        <link rel="shortcut icon" href="img/favicon/favicon.png">

        <script src="Scripts/jquery-1.7.1.min.js"></script>
        <script src="Scripts/jquery.validate.min.js"></script>
        <script src="Scripts/jquery.validate.unobtrusive.min.js"></script>

        <script src="AdminJS/jquery-3.1.0.js"></script>
        <script src="AdminJS/jquery-ui-1.9.2.custom.min.js"></script> <!-- jQuery UI -->
        <script src="AdminJS/fullcalendar.min.js"></script> <!-- Full Google Calendar - Calendar -->
        <script src="AdminJS/jquery.rateit.min.js"></script> <!-- RateIt - Star rating -->
        <script src="AdminJS/jquery.prettyPhoto.js"></script> <!-- prettyPhoto -->

        <!-- Morris JS -->
        <script src="AdminJS/raphael-min.js"></script>
        <script src="AdminJS/morris.min.js"></script>

        <!-- jQuery Flot -->
        <script src="AdminJS/excanvas.min.js"></script>
        <script src="AdminJS/jquery.flot.js"></script>
        <script src="AdminJS/jquery.flot.resize.js"></script>
        <script src="AdminJS/jquery.flot.pie.js"></script>
        <script src="AdminJS/jquery.flot.stack.js"></script>

        <!-- jQuery Notification - Noty -->
        <script src="AdminJS/jquery.noty.js"></script> <!-- jQuery Notify -->
        <script src="AdminJS/default.js"></script> <!-- jQuery Notify -->
        <script src="AdminJS/bottom.js"></script> <!-- jQuery Notify -->
        <script src="AdminJS/topRight.js"></script> <!-- jQuery Notify -->
        <script src="AdminJS/top.js"></script> <!-- jQuery Notify -->
        <!-- jQuery Notification ends -->

        <!-- Daterangepicker -->
        <script src="AdminJS/moment.min.js"></script>
        <script src="AdminJS/daterangepicker.js"></script>

        <script src="AdminJS/jquery.dataTables.js"></script>


        <script src="AdminJS/sparklines.js"></script> <!-- Sparklines -->
        <script src="AdminJS/jquery.gritter.min.js"></script> <!-- jQuery Gritter -->
        <script src="AdminJS/jquery.cleditor.min.js"></script> <!-- CLEditor -->
        <script src="AdminJS/bootstrap-datetimepicker.min.js"></script> <!-- Date picker -->
        <script src="AdminJS/jquery.slimscroll.min.js"></script> <!-- jQuery SlimScroll -->
        <script src="AdminJS/bootstrap-switch.min.js"></script> <!-- Bootstrap Toggle -->
        <script src="AdminJS/jquery.maskedinput.min.js"></script> <!-- jQuery Masked Input -->
        <script src="AdminJS/dropzone.js"></script> <!-- jQuery Dropzone -->
        <script src="AdminJS/filter.js"></script> <!-- Filter for support page -->
        <script src="AdminJS/custom.js"></script> <!-- Custom codes -->
        <script src="AdminJS/charts.js"></script> <!-- Charts & Graphs -->

        <script src="AdminJS/index.js"></script> <!-- Index Javascripts -->

        <script>
            $(document).ready(function()
            {
                var totalElements = jQuery('.CheckField').length;
                var count = 0;
                $("#progressmain").hide();
                $("#Form").change(function()
                {
                    //alert("change");
                    $(".CheckField").each(function(index) {

                        if ($(this).val().length > 0) {

                            count++;

                        }


                    });
                    //alert(count);

                    var progress = (count / totalElements) * 100;
                    //alert("Progress"+progress);

                    $("#progress").attr("aria-valuenow", progress);
                    $("#progress").attr("style", "width:" + progress + "%");
                    $("#progress").text(progress + "%");

                    if (count > 0)
                    {
                        $("#progressmain").show();
                    }
                    else
                    {
                        $("#progressmain").hide();
                    }

                    count = 0;
                });
            });
        </script>

    </head>

    <body>

        <header>
            <div class="navbar navbar-fixed-top bs-docs-nav" role="banner">

                <div class="container">
                    <!-- Menu button for smallar screens -->
                    <div class="navbar-header">
                        <button class="navbar-toggle btn-navbar" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse"><span>Menu</span></button>
                        <a href="#" class="pull-left menubutton hidden-xs"><i class="fa fa-bars"></i></a>
                        <!-- Site name for smallar screens -->
                        <a href="index.html" class="navbar-brand"><span class="bold">IMCP</span></a>
                    </div>

                    <!-- Navigation starts -->
                    <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">

                        <!-- Links -->
                        <ul class="nav navbar-nav pull-right">
                            <li class="dropdown pull-right user-data">
                                <a data-toggle="dropdown" class="dropdown-toggle">

                                    <i class="fa fa-user"></i>
                                    <span class="bold">


                                    </span> <b class="caret"></b>
                                </a>

                                <!-- Dropdown menu -->
                                <ul class="dropdown-menu">
                                    <li><a href="#"><i class="fa fa-user"></i>Profile</a></li>
                                    <li><a href="#"><i class="fa fa-cogs"></i>Settings</a></li>
                                    <li><a href="logout"><i class="fa fa-key"></i>Logout</a></li>
                                </ul>
                            </li>
                            <!-- Upload to server link. Class "dropdown-big" creates big dropdown -->

                        </ul>
                    </nav>

                </div>
            </div>
        </header>
        <!-- Main content starts -->

        <div class="content">

            <!-- Sidebar -->
            <div class="sidebar">
                <div class="sidebar-dropdown"><a href="#">Navigation</a></div>
                <!-- Search form -->
                <form class="navbar-form" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                        <button class="btn search-button" type="submit"><i class="fa fa-search"></i></button>
                    </div>
                </form>
                <!--- Sidebar navigation -->
                <!-- If the main navigation has sub navigation, then add the class "has_sub" to "li" of main navigation. -->
                <ul id="nav">
                    <c:forEach items="${sessionScope.menu}" var="m">

                        <li class="has_sub"><a href="#"><i class="fa fa-home"></i><span>${m.menuName}</span><span class="pull-right"><i class="fa fa-chevron-left"></i></span></a>
                            <ul>
                                <c:forEach items="${m.subMenuTypes}" var="s">
                                    <li><a href="${s.subPageName}">${s.subMenuName}</a></li>
                                    </c:forEach> 
                            </ul>
                        </li>
                    </c:forEach>

                    <c:if test="${person.personType == 'AdminMaster'}">
                        <li class="has_sub"><a href="#" class="open"><i class="fa fa-home"></i><span>Manage Permissions</span><span class="pull-right"><i class="fa fa-chevron-left"></i></span></a>
                            <ul>
                                <li><a href="admin_add_permissions">Add Permissions</a></li>
                                <li><a href="#">Search Permissions</a></li>
                            </ul>
                        </li>    
                    </c:if>


                    <!--                 Main menu with font awesome icon 
                                    <li class="has_sub"><a href="#" class="open"><i class="fa fa-home"></i><span>Manage Post</span><span class="pull-right"><i class="fa fa-chevron-left"></i></span></a>
                                        <ul>
                                            <li><a href="admin_add_activity">Add Post</a></li>
                                            <li><a href="admin_search_activity">Search Post</a></li>
                                        </ul>
                                    </li>
                                    <li class="has_sub"><a href="#"><i class="fa fa-list-alt"></i><span>Send SMS</span> <span class="pull-right"><i class="fa fa-chevron-left"></i></span></a>
                                        <ul>
                                            <li><a href="admin_send_sms">Send SMS</a></li>
                                            <li><a href="admin_search_sms">Search sent SMS</a></li>
                                        </ul>
                                    </li>
                                    <li class="has_sub"><a href="#"><i class="fa fa-list-alt"></i><span>Send Email</span><span class="pull-right"><i class="fa fa-chevron-left"></i></span></a>
                                        <ul>
                                            <li><a href="admin_send_mail">Send Email</a></li>
                                            <li><a href="admin_search_mail">Search sent Email</a></li>
                                        </ul>
                                    </li>
                                    <li class="has_sub"><a href="#"><i class="fa fa-list-alt"></i><span>Assign Task</span><span class="pull-right"><i class="fa fa-chevron-left"></i></span></a>
                                        <ul>
                                            <li><a href="admin_assign_task">Assign Task to Emp</a></li>
                                            <li><a href="admin_search_task">Search Assigned task</a></li>
                                        </ul>
                                    </li>
                                    <li class="has_sub"><a href="#"><i class="fa fa-list-alt"></i><span>Manage Course</span><span class="pull-right"><i class="fa fa-chevron-left"></i></span></a>
                                        <ul>
                                            <li><a href="admin_add_course">Add Course</a></li>
                                            <li><a href="admin_search_course">Search Course</a></li>
                                        </ul>
                                    </li>
                                    <li class="has_sub"><a href="#"><i class="fa fa-list-alt"></i><span>Manage Pretext</span><span class="pull-right"><i class="fa fa-chevron-left"></i></span></a>
                                        <ul>
                                            <li><a href="admin_add_pretext">Add Pretext</a></li>
                                            <li><a href="admin_search_pretext">Search Pretext</a></li>
                                        </ul>
                                    </li>
                                    <li class="has_sub"><a href="#"><i class="fa fa-list-alt"></i><span>Manage Brochures</span><span class="pull-right"><i class="fa fa-chevron-left"></i></span></a>
                                        <ul>
                                            <li><a href="admin_add_prebrochures">Add Brochures</a></li>
                                            <li><a href="admin_search_prebrochures">Search Brochures</a></li>
                                        </ul>
                                    </li>
                                    <li class="has_sub"><a href="#"><i class="fa fa-list-alt"></i><span>Manage Employee</span><span class="pull-right"><i class="fa fa-chevron-left"></i></span></a>
                                        <ul>
                                            <li><a href="admin_add_employee">Add Employee</a></li>
                                            <li><a href="admin_search_employee">Search Employee</a></li>
                                        </ul>
                                    </li>
                                    <li class="has_sub"><a href="#"><i class="fa fa-list-alt"></i><span>Manage Admin</span><span class="pull-right"><i class="fa fa-chevron-left"></i></span></a>
                                        <ul>
                                            <li><a href="admin_add_admin">Add Admin</a></li>
                                            <li><a href="admin_search_admin">Search Admin</a></li>
                                        </ul>
                                    </li>
                                    
                    -->





                    <!--<li class="has_sub"><a href="#"><i class="fa fa-heart"></i><span>3 Level Menu</span> <span class="pull-right"><i class="fa fa-chevron-left"></i></span></a>
                        <ul>
                            <li><a href="#"><i class="fa fa-bookmark"></i>Subitem 1</a></li>
                            <li class="has_sub"><a href="#"><i class="fa fa-glass"></i>Subitem 2 <span class="pull-right"><i class="fa fa-chevron-left"></i></span></a>
                                <ul>
                                    <li><a href="#"><i class="fa fa-bell"></i>Subitem 1</a></li>
                                    <li><a href="#"><i class="fa fa-camera"></i>Subitem 2</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="has_sub"><a href="#"><i class="fa fa-folder"></i><span>4 Level Menu</span> <span class="pull-right"><i class="fa fa-chevron-left"></i></span></a>
                        <ul>
                            <li><a href="#"><i class="fa fa-thumb-tack"></i>Subitem 1</a></li>
                            <li class="has_sub"><a href="#"><i class="fa fa-thumbs-up"></i>Subitem 2 <span class="pull-right"><i class="fa fa-chevron-left"></i></span></a>
                                <ul>
                                    <li><a href="#"><i class="fa fa-trophy"></i>Subitem 1</a></li>
                                    <li class="has_sub"><a href="#"><i class="fa fa-share"></i>Subitem 2 <span class="pull-right"><i class="fa fa-chevron-left"></i></span></a>
                                        <ul>
                                            <li><a href="#"><i class="fa fa-microphone"></i>Subitem 1</a></li>
                                            <li><a href="#"><i class="fa fa-phone"></i>Subitem 2</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>-->
                </ul>
            </div>
            <!-- Sidebar ends -->
