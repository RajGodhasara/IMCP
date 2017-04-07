<%-- 
    Document   : CourseList
    Created on : Dec 23, 2016, 3:15:26 PM
    Author     : GOPIRAJ
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from swlabs.co/edugate/courses-detail.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 23 Dec 2016 05:49:58 GMT -->
    <head><title>Edugate | Courses Detail</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- LIBRARY FONT-->
        <link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,400italic,700,900,300">
        <link type="text/css" rel="stylesheet" href="assets/font/font-icon/font-awesome-4.4.0/css/font-awesome.css">
        <link type="text/css" rel="stylesheet" href="assets/font/font-icon/font-svg/css/Glyphter.css">
        <!-- LIBRARY CSS-->
        <link type="text/css" rel="stylesheet" href="assets/libs/animate/animate.css">
        <link type="text/css" rel="stylesheet" href="assets/libs/bootstrap-3.3.5/css/bootstrap.css">
        <link type="text/css" rel="stylesheet" href="assets/libs/owl-carousel-2.0/assets/owl.carousel.css">
        <link type="text/css" rel="stylesheet" href="assets/libs/selectbox/css/jquery.selectbox.css">
        <link type="text/css" rel="stylesheet" href="assets/libs/fancybox/css/jquery.fancybox.css">
        <link type="text/css" rel="stylesheet" href="assets/libs/fancybox/css/jquery.fancybox-buttons.css">
        <link type="text/css" rel="stylesheet" href="assets/libs/media-element/build/mediaelementplayer.min.css">
        <!-- STYLE CSS    --><!--link(type="text/css", rel='stylesheet', href='assets/css/color-1.css', id="color-skins")-->
        <link type="text/css" rel="stylesheet" href="#" id="color-skins">
        <script src="assets/libs/jquery/jquery-2.1.4.min.js"></script>
        <script src="assets/libs/js-cookie/js.cookie.js"></script>
        <script>if ((Cookies.get('color-skin') != undefined) && (Cookies.get('color-skin') != 'color-1')) {
                $('#color-skins').attr('href', 'assets/css/' + Cookies.get('color-skin') + '.css');
            } else if ((Cookies.get('color-skin') == undefined) || (Cookies.get('color-skin') == 'color-1')) {
                $('#color-skins').attr('href', 'assets/css/color-1.css');
            }


        </script>
    </head>
    <body><!-- HEADER-->
        <header>
            <div class="header-topbar">
                <div class="container">
                    <div class="topbar-left pull-left">
                        <c:forEach items="${details}" var="details">
                            <div class="email"><a href="#"><i class="topbar-icon fa fa-envelope-o"></i><span>${details.emailId1}</span></a></div>
                            <div class="hotline"><a href="#"><i class="topbar-icon fa fa-phone"></i><span>${details.mobileNo}</span></a></div>
                                    </c:forEach>
                    </div>
                    <div class="topbar-right pull-right">
                        <c:forEach items="${link}" var="link">
                            <div class="socials"><a href="${link.facebook}" class="facebook"><i class="fa fa-facebook"></i></a><a href="${link.gmail}" class="google"><i class="fa fa-google-plus"></i></a><a href="${link.twitter}" class="twitter"><i class="fa fa-twitter"></i></a></div>
                                </c:forEach>
                        <div class="group-sign-in"><a href="login" class="login">login</a></div>
                    </div>
                </div>
            </div>
            <div class="header-main homepage-01">
                <div class="container">
                    <div class="header-main-wrapper">
                        <div class="navbar-heade">
                            <div class="logo pull-left"><a href="index.html" class="header-logo"><img src="data:image/jpeg;base64,${logo}" alt=""/></a></div>
                            <button type="button" data-toggle="collapse" data-target=".navigation" class="navbar-toggle edugate-navbar"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                        </div>
                        <nav class="navigation collapse navbar-collapse pull-right">
                            <ul class="nav-links nav navbar-nav">
                                <li><a href="index" class="main-menu">Home</a>
                                </li>
                                <li class="active"><a href="courses-detail" class="main-menu">Courses</a>
                                </li>
<!--                                <li><a href="#" class="main-menu">gallery</a>
                                </li>-->
                                <li><a href="aboutus-us" class="main-menu">About Us</a>
                                </li>
<!--                                <li><a href="#" class="main-menu">News</a>
                                </li>-->
                                <li><a href="contact" class="main-menu">Contact</a>
                                </li>

                                <li class="button-search"><p class="main-menu"><i class="fa fa-search"></i></p></li>
                                <div class="nav-search hide">
                                    <form><input type="text" placeholder="Search" class="searchbox"/>
                                        <button type="submit" class="searchbutton fa fa-search"></button>
                                    </form>
                                </div>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <!-- WRAPPER-->
        <div id="wrapper-content"><!-- PAGE WRAPPER-->
            <div id="page-wrapper"><!-- MAIN CONTENT-->
                <div class="main-content"><!-- CONTENT-->
                    <div class="content">
                        <!--                <div class="section background-opacity page-title set-height-top">
                                            <div class="container">
                                                <div class="page-title-wrapper">.page-title-content<h2 class="captions">course detail</h2>
                                                    <ol class="breadcrumb">
                                                        <li><a href="index.html">Home</a></li>
                                                        <li><a href="categories.html">Categories</a></li>
                                                        <li><a href="courses.html">Courses</a></li>
                                                        <li class="active"><a href="#">Courses Detail</a></li>
                                                    </ol>
                                                </div>
                                            </div>
                                        </div>-->
                        <!--                <div class="section">
                                            <div class="search-input">
                                                <div class="container">
                                                    <div class="search-input-wrapper">
                                                        <form><select class="form-select style-1 selectbox">
                                                            <option value="all">all categories</option>
                                                            <option value="languages">languages</option>
                                                            <option value="science">science</option>
                                                        </select><select class="form-select style-2 selectbox">
                                                            <option value="price">price</option>
                                                            <option value="datetime">datetime</option>
                                                            <option value="teacher">teacher</option>
                                                        </select><input type="text" placeholder="Do you want to learn today?" class="form-input"/>
                                                            <button type="submit" class="form-submit btn btn-blue"><span>search now<i class="fa fa-search"></i></span></button>
                                                            <div class="clearfix"></div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>-->
                        <div class="section section-padding courses-detail">
                            <div class="container">
                                <div class="courses-detail-wrapper">
                                    <div class="row">
                                        <div class="col-md-9 layout-left">
                                            <!--                                    <h1 class="course-title">GETTING STARTED WITH DJANGO</h1>
                                            
                                                                                <div class="course-info info">
                                                                                    <div class="author item"><a href="#"><span>By&nbsp;</span><span>Emma Watson</span></a></div>
                                                                                    <div class="date-time item"><a href="#">20 Aug 2015</a></div>
                                                                                </div>
                                                                                <div class="course-video">
                                                                                    <iframe src="https://www.youtube.com/embed/xo1VInw-SKc?list=PL7JgdmQ0zTfatnGhUnRBnhMwYEraSIRdD" allowfullscreen="allowfullscreen"></iframe>
                                                                                    <div class="video-btn">
                                                                                        <button class="btn btn-grey video-btn-right pull-right"><span>next lesson</span><i class="fa fa-angle-right"></i></button>
                                                                                        <button class="btn btn-grey video-btn-left pull-right"><i class="fa fa-angle-left"></i><span>previous lesson</span></button>
                                                                                    </div>
                                                                                    <div class="clearfix"></div>
                                                                                </div>
                                                                                <div class="course-des">
                                                                                    <div class="course-des-title underline">Courses Info</div>
                                                                                    <div class="course-des-content"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed varius ultricies metus. Donec ac ex porta libero venenatis sodales. Sed efficitur eget risus sed molestie. Nulla blandit bibendum metus ut sagittis. Etiam quis semper justo. Sed tristique facilisis felis ut tincidunt. Phasellus auctor convallis nisl ut accumsan. Suspendisse ullamcorper fermentum lectus, vel tincidunt ligula mollis sit amet. Aliquam at ante at elit efficitur tincidunt a quis neque. Donec ut pulvinar metus. Pellentesque lobortis volutpat eros sed sagittis. Nunc rutrum ex eu auctor tristique. Maecenas suscipit vestibulum nunc nec placerat. Phasellus blandit augue nunc, consequat consectetur augue placerat sed. Aenean fermentum scelerisque lectus, sit amet ultricies ex interdum bibendum. Quisque porttitor, enim maximus convallis gravida, dui
                                                                                        arcu lacinia libero, quis ornare nibh elit pharetra massa.</p>
                                            
                                                                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed varius ultricies metus. Donec ac ex porta libero venenatis sodales. Sed efficitur eget risus sed molestie. Nulla blandit bibendum metus ut sagittis. Etiam quis semper justo. Sed tristique facilisis felis ut tincidunt. Phasellus auctor convallis nisl ut accumsan. Suspendisse ullamcorper fermentum lectus, vel tincidunt ligula mollis sit amet. Aliquam at ante at elit efficitur tincidunt a quis neque. Donec ut pulvinar metus. Pellentesque lobortis volutpat eros sed sagittis.</p>
                                                                                        <blockquote>
                                                                                            <div class="main-quote">Video courses to build new skills from start to finish.</div>
                                                                                            <div class="sub-quote">Lorem ipsum dolor sit amet, feugiat delicata liberavisse id cum, no quo maiorum intellegebat, liber regione eu sit. Mea cu case ludus integre.</div>
                                                                                            <footer>Amber Ivy&nbsp;
                                                                                                <small>(Grancie Company)</small>
                                                                                            </footer>
                                                                                        </blockquote>
                                                                                    </div>
                                                                                    <div class="news-list">
                                                                                        <div class="list-expand-title">Requirements</div>
                                                                                        <div class="row">
                                                                                            <div class="col-md-6 col-sm-6 col-xs-6">
                                                                                                <ul class="list-unstyled list-detail">
                                                                                                    <li><i class="fa fa-angle-right"></i><a href="#">Phasellus sit amet velit auctor turpis rhoncus.</a></li>
                                                                                                    <li><i class="fa fa-angle-right"></i><a href="#">Phasellus sed dolor sodales, eleifend ipsum eu.</a></li>
                                                                                                    <li><i class="fa fa-angle-right"></i><a href="#">Nullam id dolor in ex eleifend tempus.</a></li>
                                                                                                    <li><i class="fa fa-angle-right"></i><a href="#">Etiam id lorem vel neque faucibus fermentum.</a></li>
                                                                                                    <li><i class="fa fa-angle-right"></i><a href="#">Nunc tincidunt augue in enim sollicitudin feugiat.</a></li>
                                                                                                </ul>
                                                                                            </div>
                                                                                            <div class="col-md-6 col-sm-6 col-xs-6">
                                                                                                <ul class="list-unstyled list-detail">
                                                                                                    <li><i class="fa fa-angle-right"></i><a href="#">Phasellus sit amet velit auctor turpis rhoncus.</a></li>
                                                                                                    <li><i class="fa fa-angle-right"></i><a href="#">Phasellus sed dolor sodales, eleifend ipsum eu.</a></li>
                                                                                                    <li><i class="fa fa-angle-right"></i><a href="#">Nullam id dolor in ex eleifend tempus.</a></li>
                                                                                                    <li><i class="fa fa-angle-right"></i><a href="#">Etiam id lorem vel neque faucibus fermentum.</a></li>
                                                                                                    <li><i class="fa fa-angle-right"></i><a href="#">Nunc tincidunt augue in enim sollicitudin feugiat.</a></li>
                                                                                                </ul>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>-->
                                            <div class="course-syllabus">
                                                <div class="course-syllabus-title underline">Courses syllabus</div>
                                                <div class="course-table">
                                                    <div class="outer-container">
                                                        <div class="inner-container">
                                                            <div class="table-header">
                                                                <table class="edu-table-responsive">
                                                                    <thead>
                                                                        <tr class="heading-table">
                                                                            <th class="col-1">title</th>
                                                                            <th class="col-2">estimate time</th>
                                                                            <th class="col-3">spent time</th>
                                                                            <th class="col-4">Description</th>
                                                                        </tr>
                                                                    </thead>
                                                                </table>
                                                            </div>
                                                            <div class="table-body">
                                                                <table class="edu-table-responsive table-hover">
                                                                    <tbody>
                                                                        <!--                                                            <tr class="heading-content">
                                                                                                                                        <td colspan="4" class="left heading-content">1. Introduction</td>
                                                                                                                                    </tr>-->

                                                                        <c:forEach items="${courses}" var="course">

                                                                            <tr class="table-row">
                                                                                <td class="left col-1"><a href="#"><i class="bg-green mr25 fa fa-caret-right"></i><span>${course.courseName}</span></a></td>
                                                                                <td class="col-2"><i class="w20 fa fa-clock-o"></i><span>${course.duration}</span></td>
                                                                                <td class="col-3"><i class="w20 fa fa-clock-o"></i><span>${course.duration}</span></td>
                                                                                <td class="green-color col-4"><i class="w27 fa fa-check-square"></i><span>${course.description}</span></td>
                                                                            </tr>
                                                                        </c:forEach>

                                                                        <!--                                                            <tr class="table-row">
                                                                                                                                        <td class="left col-1"><a href="#"><i class="bg-green mr25 fa fa-caret-right"></i><span>1.1 Introduction</span></a></td>
                                                                                                                                        <td class="col-2"><i class="w20 fa fa-clock-o"></i><span>50:20</span></td>
                                                                                                                                        <td class="col-3"><i class="w20 fa fa-clock-o"></i><span>40:20</span></td>
                                                                                                                                        <td class="green-color col-4"><i class="w27 fa fa-check-square"></i><span>Complete</span></td>
                                                                                                                                    </tr>
                                                                                                                                    <tr class="table-row">
                                                                                                                                        <td class="left col-1"><a href="#"><i class="bg-green mr25 fa fa-caret-right"></i><span>1.1 Creating your project</span></a></td>
                                                                                                                                        <td class="col-2"><i class="w20 fa fa-clock-o"></i><span>50:20</span></td>
                                                                                                                                        <td class="col-3"><i class="w20 fa fa-clock-o"></i><span>20:20</span></td>
                                                                                                                                        <td class="bold-color col-4"><i class="w27 fa fa-pencil-square-o"></i><span>Learning</span></td>
                                                                                                                                    </tr>
                                                                                                                                    <tr class="table-row">
                                                                                                                                        <td class="left col-1"><a href="#"><i class="mr18 fa fa-file-text"></i><span>1.1 Document setup and background</span></a></td>
                                                                                                                                        <td class="col-2"><i class="w20 fa fa-clock-o"></i><span>50:20</span></td>
                                                                                                                                        <td class="col-3"></td>
                                                                                                                                        <td class="col-4">
                                                                                                                                            <div class="bg-yellow">FREE</div>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr class="table-row">
                                                                                                                                        <td class="left col-1"><a href="#"><i class="mr18 fa fa-file-text"></i><span>1.1 Introduction</span></a></td>
                                                                                                                                        <td class="col-2"><i class="w20 fa fa-clock-o"></i><span>50:20</span></td>
                                                                                                                                        <td class="col-3"></td>
                                                                                                                                        <td class="bolder-color col-4"><i class="w27 fa fa-lock"></i><span>Private</span></td>
                                                                                                                                    </tr>
                                                                                                                                    <tr class="spacing-table">
                                                                                                                                        <td colspan="4"></td>
                                                                                                                                    </tr>
                                                                                                                                    <tr class="heading-content">
                                                                                                                                        <td colspan="4" class="left heading-content">2. Creating your project</td>
                                                                                                                                    </tr>
                                                                                                                                    <tr class="table-row">
                                                                                                                                        <td class="left col-1"><a href="#"><i class="bg-green mr25 fa fa-caret-right"></i><span>2.1 Introduction</span></a></td>
                                                                                                                                        <td class="col-2"><i class="w20 fa fa-clock-o"></i><span>50:20</span></td>
                                                                                                                                        <td class="col-3"><i class="w20 fa fa-clock-o"></i><span>40:20</span></td>
                                                                                                                                        <td class="green-color col-4"><i class="w27 fa fa-check-square"></i><span>Complete</span></td>
                                                                                                                                    </tr>
                                                                                                                                    <tr class="table-row">
                                                                                                                                        <td class="left col-1"><a href="#"><i class="bg-green mr25 fa fa-caret-right"></i><span>2.2 Creating your project</span></a></td>
                                                                                                                                        <td class="col-2"><i class="w20 fa fa-clock-o"></i><span>50:20</span></td>
                                                                                                                                        <td class="col-3"><i class="w20 fa fa-clock-o"></i><span>20:20</span></td>
                                                                                                                                        <td class="bold-color col-4"><i class="w27 fa fa-pencil-square-o"></i><span>Learning</span></td>
                                                                                                                                    </tr>
                                                                                                                                    <tr class="table-row">
                                                                                                                                        <td class="left col-1"><a href="#"><i class="mr18 fa fa-file-text"></i><span>2.3 Document setup and background</span></a></td>
                                                                                                                                        <td class="col-2"><i class="w20 fa fa-clock-o"></i><span>50:20</span></td>
                                                                                                                                        <td class="col-3"></td>
                                                                                                                                        <td class="col-4">
                                                                                                                                            <div class="bg-yellow">FREE</div>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr class="table-row">
                                                                                                                                        <td class="left col-1"><a href="#"><i class="mr18 fa fa-file-text"></i><span>2.4 Introduction</span></a></td>
                                                                                                                                        <td class="col-2"><i class="w20 fa fa-clock-o"></i><span>50:20</span></td>
                                                                                                                                        <td class="col-3"></td>
                                                                                                                                        <td class="bolder-color col-4"><i class="w27 fa fa-lock"></i><span>Private</span></td>
                                                                                                                                    </tr>
                                                                                                                                    <tr class="table-row">
                                                                                                                                        <td class="left col-1"><a href="#"><i class="mr18 fa fa-file-text"></i><span>2.5 Document setup and background</span></a></td>
                                                                                                                                        <td class="col-2"><i class="w20 fa fa-clock-o"></i><span>50:20</span></td>
                                                                                                                                        <td class="col-3"></td>
                                                                                                                                        <td class="bolder-color col-4"><i class="w27 fa fa-lock"></i><span>Private</span></td>
                                                                                                                                    </tr>
                                                                                                                                    <tr class="table-row">
                                                                                                                                        <td class="left col-1"><a href="#"><i class="mr18 fa fa-file-text"></i><span>2.6 Document setup and background</span></a></td>
                                                                                                                                        <td class="col-2"><i class="w20 fa fa-clock-o"></i><span>50:20</span></td>
                                                                                                                                        <td class="col-3"></td>
                                                                                                                                        <td class="col-4">
                                                                                                                                            <div class="bg-yellow">FREE</div>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr class="table-row">
                                                                                                                                        <td class="left col-1"><a href="#"><i class="bg-green mr25 fa fa-caret-right"></i><span>2.7 Document setup and background</span></a></td>
                                                                                                                                        <td class="col-2"><i class="w20 fa fa-clock-o"></i><span>50:20</span></td>
                                                                                                                                        <td class="col-3"></td>
                                                                                                                                        <td class="bolder-color col-4"><i class="w27 fa fa-lock"></i><span>Private</span></td>
                                                                                                                                    </tr>
                                                                                                                                    <tr class="table-row">
                                                                                                                                        <td class="left col-1"><a href="#"><i class="bg-green mr25 fa fa-caret-right"></i><span>2.8 Document setup and background</span></a></td>
                                                                                                                                        <td class="col-2"><i class="w20 fa fa-clock-o"></i><span>50:20</span></td>
                                                                                                                                        <td class="col-3"></td>
                                                                                                                                        <td class="bolder-color col-4"><i class="w27 fa fa-lock"></i><span>Private</span></td>
                                                                                                                                    </tr>
                                                                                                                                    <tr class="spacing-table">
                                                                                                                                        <td colspan="4"></td>
                                                                                                                                    </tr>
                                                                                                                                    <tr class="heading-content">
                                                                                                                                        <td colspan="4" class="left heading-content">3. Creating your apps</td>
                                                                                                                                    </tr>
                                                                                                                                    <tr class="table-row">
                                                                                                                                        <td class="left col-1"><a href="#"><i class="bg-green mr25 fa fa-caret-right"></i><span>3.1 Introduction</span></a></td>
                                                                                                                                        <td class="col-2"><i class="w20 fa fa-clock-o"></i><span>50:20</span></td>
                                                                                                                                        <td class="col-3"><i class="w20 fa fa-clock-o"></i><span>40:20</span></td>
                                                                                                                                        <td class="green-color col-4"><i class="w27 fa fa-check-square"></i><span>Complete</span></td>
                                                                                                                                    </tr>
                                                                                                                                    <tr class="table-row">
                                                                                                                                        <td class="left col-1"><a href="#"><i class="bg-green mr25 fa fa-caret-right"></i><span>3.2 Creating your project</span></a></td>
                                                                                                                                        <td class="col-2"><i class="w20 fa fa-clock-o"></i><span>50:20</span></td>
                                                                                                                                        <td class="col-3"><i class="w20 fa fa-clock-o"></i><span>20:20</span></td>
                                                                                                                                        <td class="bold-color col-4"><i class="w27 fa fa-pencil-square-o"></i><span>Learning</span></td>
                                                                                                                                    </tr>
                                                                                                                                    <tr class="table-row">
                                                                                                                                        <td class="left col-1"><a href="#"><i class="mr18 fa fa-file-text"></i><span>3.3 Document setup and background</span></a></td>
                                                                                                                                        <td class="col-2"><i class="w20 fa fa-clock-o"></i><span>50:20</span></td>
                                                                                                                                        <td class="col-3"></td>
                                                                                                                                        <td class="col-4">
                                                                                                                                            <div class="bg-yellow">FREE</div>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr class="table-row">
                                                                                                                                        <td class="left col-1"><a href="#"><i class="mr18 fa fa-file-text"></i><span>3.4 Introduction</span></a></td>
                                                                                                                                        <td class="col-2"><i class="w20 fa fa-clock-o"></i><span>50:20</span></td>
                                                                                                                                        <td class="col-3"></td>
                                                                                                                                        <td class="bolder-color col-4"><i class="w27 fa fa-lock"></i><span>Private</span></td>
                                                                                                                                    </tr>
                                                                                                                                    <tr class="table-row">
                                                                                                                                        <td class="left col-1"><a href="#"><i class="mr18 fa fa-file-text"></i><span>3.5 Document setup and background</span></a></td>
                                                                                                                                        <td class="col-2"><i class="w20 fa fa-clock-o"></i><span>50:20</span></td>
                                                                                                                                        <td class="col-3"></td>
                                                                                                                                        <td class="bolder-color col-4"><i class="w27 fa fa-lock"></i><span>Private</span></td>
                                                                                                                                    </tr>
                                                                                                                                    <tr class="table-row">
                                                                                                                                        <td class="left col-1"><a href="#"><i class="mr18 fa fa-file-text"></i><span>3.6 Document setup and background</span></a></td>
                                                                                                                                        <td class="col-2"><i class="w20 fa fa-clock-o"></i><span>50:20</span></td>
                                                                                                                                        <td class="col-3"></td>
                                                                                                                                        <td class="col-4">
                                                                                                                                            <div class="bg-yellow">FREE</div>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr class="table-row">
                                                                                                                                        <td class="left col-1"><a href="#"><i class="bg-green mr25 fa fa-caret-right"></i><span>3.7 Document setup and background</span></a></td>
                                                                                                                                        <td class="col-2"><i class="w20 fa fa-clock-o"></i><span>50:20</span></td>
                                                                                                                                        <td class="col-3"></td>
                                                                                                                                        <td class="bolder-color"><i class="w27 fa fa-lock"></i><span>Private</span></td>
                                                                                                                                    </tr>
                                                                                                                                    <tr class="table-row col-4">
                                                                                                                                        <td class="left col-1"><a href="#"><i class="bg-green mr25 fa fa-caret-right"></i><span>3.8 Document setup and background</span></a></td>
                                                                                                                                        <td class="col-2"><i class="w20 fa fa-clock-o"></i><span>50:20</span></td>
                                                                                                                                        <td class="col-3"></td>
                                                                                                                                        <td class="bolder-color col-4"><i class="w27 fa fa-lock"></i><span>Private</span></td>
                                                                                                                                    </tr>
                                                                                                                                    <tr class="table-row">
                                                                                                                                        <td class="left col-1"><a href="#"><i class="bg-green mr25 fa fa-caret-right"></i><span>3.9 Document setup and background</span></a></td>
                                                                                                                                        <td class="col-2"><i class="w20 fa fa-clock-o"></i><span>50:20</span></td>
                                                                                                                                        <td class="col-3"></td>
                                                                                                                                        <td class="bolder-color col-4"><i class="w27 fa fa-lock"></i><span>Private</span></td>
                                                                                                                                    </tr>
                                                                                                                                    <tr class="table-row">
                                                                                                                                        <td class="left col-1"><a href="#"><i class="bg-green mr25 fa fa-caret-right"></i><span>3.10 Document setup and background</span></a></td>
                                                                                                                                        <td class="col-2"><i class="w20 fa fa-clock-o"></i><span>50:20</span></td>
                                                                                                                                        <td class="col-3"></td>
                                                                                                                                        <td class="bolder-color col-4"><i class="w27 fa fa-lock"></i><span>Private</span></td>
                                                                                                                                    </tr>-->
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!--                                <div class="col-md-3 sidebar layout-right">
                                                                            <div class="row">
                                                                                <div class="course-price-widget widget col-sm-6 col-md-12 col-xs-6 sd380">
                                                                                    <div class="title-widget"><p>35</p></div>
                                                                                    <div class="content-widget">
                                                                                        <div class="course-price-widget-wrapper">
                                                                                            <div class="row">
                                                                                                <div class="col-md-12 info-row col-sm-12 col-xs-12">
                                                                                                    <div class="pull-left title">Length:</div>
                                                                                                    <div class="pull-right length">4.2</div>
                                                                                                </div>
                                                                                                <div class="col-md-12 info-row col-sm-12 col-xs-12">
                                                                                                    <div class="pull-left title">Level:</div>
                                                                                                    <div class="pull-right level">Advanced</div>
                                                                                                </div>
                                                                                                <div class="col-md-12 info-row col-sm-12 col-xs-12">
                                                                                                    <div class="pull-left title">Finished:</div>
                                                                                                    <div class="pull-right firgue">42</div>
                                                                                                </div>
                                                                                                <div class="col-md-12 info-row col-sm-12 col-xs-12">
                                                                                                    <div class="pull-left title">Rate:</div>
                                                                                                    <div title="Rated 5.00 out of 5" class="pull-right star-rating"><span class="width-80"><strong class="rating">5.00</strong> out of 5</span></div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <button class="btn btn-green"><span>join now</span></button>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="author-widget widget col-sm-6 col-md-12 col-xs-6 sd380">
                                                                                    <div class="title-widget">about emma watson</div>
                                                                                    <div class="content-widget">
                                                                                        <div class="staff-item author-widget-wrapper customize">
                                                                                            <div class="staff-item-wrapper">
                                                                                                <div class="staff-info"><a href="#" class="staff-avatar"><img src="assets/images/people-avatar-3.jpg" alt="" class="img-responsive"/></a><a href="#" class="staff-name">lana simth</a>
                                        
                                                                                                    <div class="staff-job">vice head teacher</div>
                                                                                                    <div class="staff-desctiption">Nam libelo tempore, cum soluta nobis est eligendi optio cumque nilhi impedil quo minus end maximie fade posimus the end.</div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="staff-socials"><a href="#" class="facebook"><i class="fa fa-facebook"></i></a><a href="#" class="google"><i class="fa fa-google-plus"></i></a><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="clearfix"></div>
                                                                                <div class="popular-course-widget widget col-sm-6 col-md-12 col-xs-6 sd380">
                                                                                    <div class="title-widget">popular courses</div>
                                                                                    <div class="content-widget">
                                                                                        <div class="media">
                                                                                            <div class="media-left"><a href="courses-detail.html" class="link"><img src="assets/images/popular/popular-1.jpg" alt="" class="media-image"/></a></div>
                                                                                            <div class="media-right">
                                                                                                <div class="cur">35</div>
                                                                                                <a href="courses-detail.html" class="link title">Adobe Lightroom CC for Photographers</a>
                                        
                                                                                                <div class="info">
                                                                                                    <div class="author item"><a href="#"><span>By Sandara</span></a></div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="media">
                                                                                            <div class="media-left"><a href="courses-detail.html" class="link"><img src="assets/images/popular/popular-2.jpg" alt="" class="media-image"/></a></div>
                                                                                            <div class="media-right">
                                                                                                <div class="cur">40</div>
                                                                                                <a href="courses-detail.html" class="link title">Adobe Lightroom CC for Photographers</a>
                                        
                                                                                                <div class="info">
                                                                                                    <div class="author item"><a href="#"><span>By Sandara</span></a></div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="media">
                                                                                            <div class="media-left"><a href="courses-detail.html" class="link"><img src="assets/images/popular/popular-3.jpg" alt="" class="media-image"/></a></div>
                                                                                            <div class="media-right">
                                                                                                <div class="cur">34</div>
                                                                                                <a href="courses-detail.html" class="link title">Adobe Lightroom CC for Photographers</a>
                                        
                                                                                                <div class="info">
                                                                                                    <div class="author item"><a href="#"><span>By Sandara</span></a></div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="media">
                                                                                            <div class="media-left"><a href="courses-detail.html" class="link"><img src="assets/images/popular/popular-4.jpg" alt="" class="media-image"/></a></div>
                                                                                            <div class="media-right">
                                                                                                <div class="cur">27</div>
                                                                                                <a href="courses-detail.html" class="link title">Adobe Lightroom CC for Photographers</a>
                                        
                                                                                                <div class="info">
                                                                                                    <div class="author item"><a href="#"><span>By Sandara</span></a></div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="category-widget widget col-sm-6 col-md-12 col-xs-6 sd380">
                                                                                    <div class="title-widget">categories</div>
                                                                                    <div class="content-widget">
                                                                                        <ul class="category-widget list-unstyled">
                                                                                            <li><a href="categories.html" class="link cat-item"><span class="pull-left">Web Design</span><span class="pull-right">125</span></a></li>
                                                                                            <li><a href="categories.html" class="link cat-item"><span class="pull-left">Wordpress Themes</span><span class="pull-right">97</span></a></li>
                                                                                            <li><a href="categories.html" class="link cat-item"><span class="pull-left">Photography</span><span class="pull-right">56</span></a></li>
                                                                                            <li><a href="categories.html" class="link cat-item"><span class="pull-left">Video</span><span class="pull-right">24</span></a></li>
                                                                                            <li><a href="categories.html" class="link cat-item"><span class="pull-left">Miscellaneous</span><span class="pull-right">13</span></a></li>
                                                                                        </ul>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="clearfix"></div>
                                                                                <div class="tag-widget widget col-sm-6 col-md-12 col-xs-6 sd380">
                                                                                    <div class="title-widget">tags</div>
                                                                                    <div class="content-widget">
                                                                                        <ul class="tag-widget list-unstyled">
                                                                                            <li><a href="#" class="tag-item">Software</a></li>
                                                                                            <li><a href="#" class="tag-item">Music</a></li>
                                                                                            <li><a href="#" class="tag-item">Photography</a></li>
                                                                                            <li><a href="#" class="tag-item">Communication</a></li>
                                                                                            <li><a href="#" class="tag-item">Tutorial</a></li>
                                                                                            <li><a href="#" class="tag-item">Biology</a></li>
                                                                                            <li><a href="#" class="tag-item">Photoshop</a></li>
                                                                                            <li><a href="#" class="tag-item">Economics</a></li>
                                                                                            <li><a href="#" class="tag-item">Statistics</a></li>
                                                                                        </ul>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="clearfix"></div>
                                                                            </div>
                                                                        </div>-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- BUTTON BACK TO TOP-->
            <div id="back-top"><a href="#top"><i class="fa fa-angle-double-up"></i></a></div>
        </div>
        <!-- FOOTER-->
       <footer>
            <!--    <div class="footer-top">
                    <div class="container">
                        <div class="footer-top-wrapper">
                            <div class="footer-top-left"><p class="footer-top-focus">BECOME AN INSTRUCTOR</p>
            
                                <p class="footer-top-text">Join thousand of instructors and earn money hassle free!</p></div>
                            <div class="footer-top-right">
                                <button onclick="window.location.href='contact.html'" class="btn btn-blue btn-bold"><span>GET STARTED NOW</span></button>
                            </div>
                        </div>
                    </div>
                </div>-->
            <div class="footer-main">
                <div class="container">
                    <div class="footer-main-wrapper">
                        <div class="row">
                            <div class="col-2">
                                <div class="col-md-4 col-sm-6 col-xs-6 sd380">
                                    <c:forEach items="${details}" var="details">
                                    <div class="edugate-widget widget">
                                        <div class="title-widget">${details.name}</div>
                                        <div class="content-widget"><p></p>

                                            <div class="info-list">
                                                <ul class="list-unstyled">
                                                    
                                                        <li><i class="fa fa-envelope-o"></i><a href="#">${details.emailId1}</a></li>
                                                        <li><i class="fa fa-phone"></i><a href="#">${details.mobileNo}</a></li>
                                                        <li><i class="fa fa-map-marker"></i><a href="#"><p>${details.address}</p>
                                                                
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                                        </c:forEach>
                                </div>
                                <!--                                <div class="col-md-3 col-sm-6 col-xs-6 sd380">
                                                                    <div class="useful-link-widget widget">
                                                                        <div class="title-widget">USEFUL LINKS</div>
                                                                        <div class="content-widget">
                                                                            <div class="useful-link-list">
                                                                                <div class="row">
                                                                                    <div class="col-md-6 col-sm-6 col-xs-6">
                                                                                        <ul class="list-unstyled">
                                                                                            <li><i class="fa fa-angle-right"></i><a href="#">Teachers</a></li>
                                                                                            <li><i class="fa fa-angle-right"></i><a href="#">Courses</a></li>
                                                                                            <li><i class="fa fa-angle-right"></i><a href="#">Support</a></li>
                                                                                            <li><i class="fa fa-angle-right"></i><a href="#">Why Edugate</a></li>
                                                                                            <li><i class="fa fa-angle-right"></i><a href="#">Social Media</a></li>
                                                                                            <li><i class="fa fa-angle-right"></i><a href="#">Site Map</a></li>
                                                                                        </ul>
                                                                                    </div>
                                                                                    <div class="col-md-6 col-sm-6 col-xs-6">
                                                                                        <ul class="list-unstyled">
                                                                                            <li><i class="fa fa-angle-right"></i><a href="#">Company</a></li>
                                                                                            <li><i class="fa fa-angle-right"></i><a href="#">Latest Courses</a></li>
                                                                                            <li><i class="fa fa-angle-right"></i><a href="#">Partners</a></li>
                                                                                            <li><i class="fa fa-angle-right"></i><a href="#">Blog Post</a></li>
                                                                                            <li><i class="fa fa-angle-right"></i><a href="#">Help Topic</a></li>
                                                                                            <li><i class="fa fa-angle-right"></i><a href="#">Policies</a></li>
                                                                                        </ul>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>-->
                            </div>
                            <div class="col-2">
                                <div class="col-md-4 col-sm-6 col-xs-6 sd380">
                                    <div class="gallery-widget widget">
                                        <div class="title-widget">SHORT LINKS</div>
<!--                                        <div class="content-widget">
                                            <div class="gallery-list"><a href="#" class="thumb"><img src="assets/images/gallery/gallery-01.jpg" alt="" class="img-responsive"/></a><a href="#" class="thumb"><img src="assets/images/gallery/gallery-02.jpg" alt="" class="img-responsive"/></a><a href="#" class="thumb"><img src="assets/images/gallery/gallery-03.jpg" alt="" class="img-responsive"/></a><a href="#" class="thumb"><img src="assets/images/gallery/gallery-04.jpg" alt="" class="img-responsive"/></a><a href="#" class="thumb"><img src="assets/images/gallery/gallery-05.jpg" alt="" class="img-responsive"/></a><a href="#" class="thumb"><img src="assets/images/gallery/gallery-06.jpg" alt="" class="img-responsive"/></a><a href="#" class="thumb"><img src="assets/images/gallery/gallery-07.jpg" alt="" class="img-responsive"/></a><a href="#" class="thumb"><img src="assets/images/gallery/gallery-08.jpg"
                                                                                                                                                                                                        alt="" class="img-responsive"/></a></div>
                                            <div class="clearfix"></div>
                                            <a href="/gallery" class="view-more">View more&nbsp;<i class="fa fa-angle-double-right mls"></i></a></div>-->
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6 col-xs-6 sd380">
                                    <div class="mailing-widget widget">
                                        <div class="title-widget">MAILING</div>
                                        <div class="content-wiget"><p>Sign up for our mailing list to get latest updates and offers.</p>

                                            <form action="http://swlabs.co/edugate/index.html">
                                                <div class="input-group"><input type="text" placeholder="Email address" class="form-control form-email-widget"/><span class="input-group-btn"><input type="submit" value="✓" class="btn btn-email"/></span></div>
                                            </form>
                                            <p>We respect your privacy</p>

                                            <c:forEach items="${link}" var="link">
                                                <div class="socials"><a href="${link.facebook}" class="facebook"><i class="fa fa-facebook"></i></a><a href="${link.gmail}" class="google"><i class="fa fa-google-plus"></i></a><a href="${link.twitter}" class="twitter"><i class="fa fa-twitter"></i></a></div>
                                                    </c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </footer>

        <script src="assets/libs/bootstrap-3.3.5/js/bootstrap.min.js"></script>
        <script src="assets/libs/smooth-scroll/jquery-smoothscroll.js"></script>
        <script src="assets/libs/owl-carousel-2.0/owl.carousel.min.js"></script>
        <script src="assets/libs/appear/jquery.appear.js"></script>
        <script src="assets/libs/count-to/jquery.countTo.js"></script>
        <script src="assets/libs/wow-js/wow.min.js"></script>
        <script src="assets/libs/selectbox/js/jquery.selectbox-0.2.min.js"></script>
        <script src="assets/libs/fancybox/js/jquery.fancybox.js"></script>
        <script src="assets/libs/fancybox/js/jquery.fancybox-buttons.js"></script>
        <!-- MAIN JS-->
        <script src="assets/js/main.js"></script>
        <!-- LOADING SCRIPTS FOR PAGE--></body>

    <!-- Mirrored from swlabs.co/edugate/courses-detail.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 23 Dec 2016 05:51:22 GMT -->
</html>