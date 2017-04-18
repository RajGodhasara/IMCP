<%-- 
    Document   : AboutUs
    Created on : Dec 23, 2016, 3:06:49 PM
    Author     : GOPIRAJ
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
    <head><title>About Us</title>
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
                        <div class="group-sign-in"><a href="login.html" class="login">login</a></div>
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
                                <li><a href="courses-detail" class="main-menu">Courses</a>
                                </li>
                                <li class="active"><a href="aboutus-us" class="main-menu">About Us</a>
                                </li>
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
                        <!--INTRO EDUGATE-->
                        <div class="section intro-edu">
                            <div class="container">
                                <div class="intro-edu-wrapper">
                                    <div class="row">
                                        <div class="col-md-5"><img src="assets/images/people-avatar-8.png" alt="" class="intro-image fadeInLeft animated wow"/></div>
                                        <div class="col-md-7">
                                            <div class="intro-title">WHAT IS <b>${name}</b> ?</div>
                                            <div class="intro-content"><p>${aboutus.smallIntro}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section section-padding edu-ab">
                            <div class="container">
                                <div class="edu-ab">
                                    <div class="group-title-index edu-ab-title"><h2 class="center-title">WITH <b>${name}</b> YOU CAN</h2></div>
                                    <div class="edu-ab-content">
                                        <ul class="list-unstyled list-inline">
                                            <li>
                                                <div class="circle-icon"><i class="fa fa-wifi fa-2x"></i></div>
                                                <span>Learning online 100%</span></li>
                                            <li>
                                                <div class="circle-icon fa-2x"><i class="fa fa-search"></i></div>
                                                <span>Learn everything you want</span></li>
                                            <li>
                                                <div class="circle-icon fa-2x"><i class="fa fa-thumbs-up"></i></div>
                                                <span>Learn from top expert</span></li>
                                            <li>
                                                <div class="circle-icon fa-2x"><i class="fa fa-user"></i></div>
                                                <span>Training internal HR</span></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- PROGRESS BARS-->
                        <div class="section progress-bars section-padding">
                            <div class="container">
                                <div class="progress-bars-content">
                                    <div class="progress-bar-wrapper"><h2 class="title-2">Some important facts about us</h2>

                                        <div class="row">
                                            <div class="content">
                                                <div class="col-sm-3">
                                                    <div class="progress-bar-number">
                                                        <div data-from="0" data-to="${aboutus.teachersNo}" data-speed="1000" class="num">0</div>
                                                        <p class="name-inner">teachers</p></div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="progress-bar-number">
                                                        <div data-from="0" data-to="${aboutus.courseNo}" data-speed="1000" class="num">0</div>
                                                        <p class="name-inner">courses</p></div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="progress-bar-number">
                                                        <div data-from="0" data-to="${aboutus.studentsNo}" data-speed="1000" class="num">0</div>
                                                        <p class="name-inner">members</p></div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="progress-bar-number">
                                                        <div data-from="0" data-to="${aboutus.citiesNo}" data-speed="1000" class="num">0</div>
                                                        <p class="name-inner">Cities</p></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="group-btn-slider">
                                            <div class="btn-prev"><i class="fa fa-angle-left"></i></div>
                                            <div class="btn-next"><i class="fa fa-angle-right"></i></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- BEST STAFF-->
                        <div class="section section-padding staff-list best-staff">
                            <div class="container">
                                <div class="group-title-index"><h4 class="top-title">touch them if you want</h4>

                                    <h2 class="center-title">learn from the best</h2>

                                    <div class="bottom-title"><i class="bottom-icon icon-icon-05"></i></div>
                                </div>
                                <div class="best-staff-wrapper">
                                    <div class="best-staff-content">
                                        <c:forEach items="${teachers}" var="teachers" varStatus="status">
                                            <div class="staff-item customize">
                                                <div class="staff-item-wrapper"><!--data:image/jpeg;utf8;base64,-->
                                                    <!-- insted use file system for image and while getting download image from database into file system and then fetch that file from the file system to print image on jsp file.-->
                                                    <!-- for low Server-client operation you can download all the images at the time of initialize project and use latter from the file system.-->
                                                    <div class="staff-info"><a href="#" class="staff-avatar"><img src="data:image/jpeg;base64,${userImage[status.index]}" alt="" style="border-color: red; border: 1px;" class=""/></a><a href="#" class="staff-name">${teachers.name}</a>

                                                        <div class="staff-job">${teachers.designation}</div>
                                                        <div class="staff-desctiption">${teachers.thought}</div>
                                                    </div>
                                                </div>
                                                <div class="staff-socials"><a href="${teachers.facebook}" class="facebook"><i class="fa fa-facebook"></i></a><a href="${teachers.gmail}" class="google"><i class="fa fa-google-plus"></i></a><a href="${teachers.twitter}" class="twitter"><i class="fa fa-twitter"></i></a></div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <div class="group-btn-slider">
                                <div class="btn-prev"><i class="fa fa-angle-left"></i></div>
                                <div class="btn-next"><i class="fa fa-angle-right"></i></div>
                            </div>
                        </div>
                        <!-- SLIDER TALK ABOUT US-->
                        <div class="section background-opacity slider-talk-about-us">
                            <div class="container">
                                <div id="people-talk" data-ride="carousel" data-interval="5000" class="slider-talk-about-us-wrapper carousel slide">
                                    <div role="listbox" class="slider-talk-about-us-content carousel-inner">
                                        <c:forEach items="${corporates}" var="corporates" varStatus="status">
                                            <div class="peopel-item item active"><p class="peopel-comment">" ${corporates.thought}"</p>

                                                <div class="group-peole-info">
                                                    <div class="peopel-avatar"><img src="data:image/jpeg;base64,${corporatesImage[status.index]}" alt="" class="img-responsive"/></div>
                                                    <div class="peopel-name">${corporates.name}</div>
                                                    <div class="people-job">${corporates.designation}</div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <div class="group-btn-slider"><a href="#people-talk" role="button" data-slide="prev">
                                    <div class="btn-prev carousel-control left"><i class="fa fa-angle-left"></i></div>
                                </a><a href="#people-talk" role="button" data-slide="next">
                                    <div class="btn-next carousel-control right"><i class="fa fa-angle-right"></i></div>
                                </a></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- BUTTON BACK TO TOP-->
            <div id="back-top"><a href="#top"><i class="fa fa-angle-double-up"></i></a></div>
        </div>
        <!-- FOOTER-->
        <footer>
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
                            </div>
                            <div class="col-2">
                                <div class="col-md-4 col-sm-6 col-xs-6 sd380">
                                    <div class="gallery-widget widget">
                                        <div class="title-widget">SHORT LINKS</div>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6 col-xs-6 sd380">
                                    <div class="mailing-widget widget">
                                        <div class="title-widget">MAILING</div>
                                        <div class="content-wiget"><p>Sign up for our mailing list to get latest updates and offers.</p>

                                            <form action="#">
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
        <!-- LOADING SCRIPTS FOR PAGE-->
        <script src="assets/js/pages/homepage.js"></script>
    </body>
</html>
