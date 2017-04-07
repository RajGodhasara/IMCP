<%-- 
    Document   : newjsp
    Created on : Oct 10, 2016, 3:02:52 PM
    Author     : GOPIRAJ
--%>

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

        <!-- HTML5 Support for IE -->
        <!--[if lt IE 9]>
      <script src="js/html5shim.js"></script>
      <![endif]-->

        <!-- Favicon -->
        <link rel="shortcut icon" href="img/favicon/favicon.png">

        <script src="Scripts/jquery-1.7.1.min.js"></script>
        <script src="Scripts/jquery.validate.min.js"></script>
        <script src="Scripts/jquery.validate.unobtrusive.min.js"></script>
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
                                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                    <img src="img/user1.png">

                                    <span class="bold">


                                    </span> <b class="caret"></b>
                                </a>

                                <!-- Dropdown menu -->
                                <ul class="dropdown-menu">
                                    <li><a href="#"><i class="fa fa-user"></i>Profile</a></li>
                                    <li><a href="#"><i class="fa fa-cogs"></i>Settings</a></li>
                                    <li><a href=""><i class="fa fa-key"></i>Logout</a></li>
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
                    <!-- Main menu with font awesome icon -->
                    <li class="has_sub"><a href="#" class="open"><i class="fa fa-home"></i><span>Manage Post</span><span class="pull-right"><i class="fa fa-chevron-left"></i></span></a>
                        <ul>
                            <li><a href="">Add Post</a></li>
                            <li><a href="">Search Post</a></li>
                        </ul>
                    </li>
                    <li class="has_sub"><a href="#"><i class="fa fa-list-alt"></i><span>Send SMS</span> <span class="pull-right"><i class="fa fa-chevron-left"></i></span></a>
                        <ul>
                            <li><a href="">Send SMS</a></li>
                            <li><a href="">Search sent SMS</a></li>
                        </ul>
                    </li>
                    <li class="has_sub"><a href="#"><i class="fa fa-bar-chart-o"></i><span>Send Email</span><span class="pull-right"><i class="fa fa-chevron-left"></i></span></a>
                        <ul>
                            <li><a href="">Send Email</a></li>
                            <li><a href="">Search sent Email</a></li>
                        </ul>
                    </li>
                    <li class="has_sub"><a href="#"><i class="fa fa-bar-chart-o"></i><span>Assign Task</span><span class="pull-right"><i class="fa fa-chevron-left"></i></span></a>
                        <ul>
                            <li><a href="">Assign Task to Emp</a></li>
                            <li><a href="">Search Assigned task</a></li>
                        </ul>
                    </li>
                    <li class="has_sub"><a href="#"><i class="fa fa-bar-chart-o"></i><span>Manage Course</span><span class="pull-right"><i class="fa fa-chevron-left"></i></span></a>
                        <ul>
                            <li><a href="">Add Course</a></li>
                            <li><a href="">Search Course</a></li>
                        </ul>
                    </li>
                    <li class="has_sub"><a href="#"><i class="fa fa-bar-chart-o"></i><span>Manage Employee</span><span class="pull-right"><i class="fa fa-chevron-left"></i></span></a>
                        <ul>
                            <li><a href="">Add Employee</a></li>
                            <li><a href="">Search Employee</a></li>
                        </ul>
                    </li>
                    <li class="has_sub"><a href="#"><i class="fa fa-bar-chart-o"></i><span>Manage Admin</span><span class="pull-right"><i class="fa fa-chevron-left"></i></span></a>
                        <ul>
                            <li><a href="">Add Admin</a></li>
                            <li><a href="">Search Admin</a></li>
                        </ul>
                    </li>

                    <li class="has_sub"><a href=""><i class="fa fa-bar-chart-o"></i><span>Manage feedback</span><span class="pull-right"><i class="fa fa-chevron-left"></i></span></a>
                        <ul>
                            <li><a href="#">Add feedback</a></li>
                            <li><a href="">Search feedback</a></li>
                        </ul>
                    </li>





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

            <!-- Main bar -->
            <div class="mainbar">

                <!-- Page heading
                <div class="page-head">
                  <h2 class="pull-left">Dashboard</h2>
            <div class="pull-right">
               <div id="reportrange" class="pull-right">
                  <i class="fa fa-calendar"></i>
                  <span></span> <b class="caret"></b>
               </div>
            </div>
            <div class="clearfix"></div>
                <!-- Breadcrumb 
                <div class="bread-crumb">
                  <a href="#"><i class="fa fa-home"></i> Home</a> 
                <!-- Divider 
                <span class="divider">/</span> 
                <a href="#" class="bread-current">Dashboard</a>
              </div>
              
              <div class="clearfix"></div>
      
                  </div>-->
                <!-- Page heading ends -->

                <div style="margin-top: 50px; padding-right:10px;">





                </div>






            </div>

            <!-- Mainbar ends -->
            <div class="clearfix"></div>

        </div>
        <!-- Content ends -->

        <!-- Footer starts -->
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <!-- Copyright info -->
                        <p class="copy">Copyright &copy; 2013 | <a href="#">Your Site</a> </p>
                    </div>
                </div>
            </div>
        </footer>

        <!-- Footer ends -->

        <!-- Scroll to top -->
        <span class="totop"><a href="#"><i class="fa fa-chevron-up"></i></a></span>

        <!-- JS -->
        <!--<script src="js/jquery.js"></script> <!-- jQuery -->
        <!--<script src="js/bootstrap.js"></script> <!-- Bootstrap -->
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
        <script src="AdminJS/jquery.uniform.min.js"></script> <!-- jQuery Uniform -->
        <script src="AdminJS/jquery.slimscroll.min.js"></script> <!-- jQuery SlimScroll -->
        <script src="AdminJS/bootstrap-switch.min.js"></script> <!-- Bootstrap Toggle -->
        <script src="AdminJS/jquery.maskedinput.min.js"></script> <!-- jQuery Masked Input -->
        <script src="AdminJS/dropzone.js"></script> <!-- jQuery Dropzone -->
        <script src="AdminJS/filter.js"></script> <!-- Filter for support page -->
        <script src="AdminJS/custom.js"></script> <!-- Custom codes -->
        <script src="AdminJS/charts.js"></script> <!-- Charts & Graphs -->

        <script src="AdminJS/index.js"></script> <!-- Index Javascripts -->
    </body>
</html>
