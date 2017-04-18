<%-- 
    Document   : Index
    Created on : Dec 23, 2016, 1:59:01 PM
    Author     : GOPIRAJ
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
    <head><title>IMCP | Home</title>
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
                                <li class="active"><a href="index" class="main-menu">Home</a>
                                </li>
                                <li><a href="courses-detail" class="main-menu">Courses</a>
                                </li>
                                <li><a href="aboutus-us" class="main-menu">About Us</a>
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
                    <div class="content"><!-- SLIDER BANNER-->
                        <div class="section slider-banner set-height-top">
                            <c:forEach items="${SliderImageTextList}" var="SliderImageTextList" varStatus="status">
                                <div class="slider-item">
                                    <div class="slider-1" style="background-image: url('data:image/jpeg;base64,${SliderImageByteList[status.index]}')">
                                        <div class="slider-caption">
                                            <div class="container"><h5 class="text-info-2">${SliderImageTextList}</h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <!-- CHOOSE COURSES-->
                        <div class="section section-padding choose-course">
                            <div class="container">
                                <div class="group-title-index"><h4 class="top-title">CHOOSE YOUR COURSE</h4>

                                    <h2 class="center-title">GET THE WORLD CLASS & VERIFIED COURSE</h2>

                                    <div class="bottom-title"><i class="bottom-icon icon-a-1-01-01"></i></div>
                                </div>
                                <div class="choose-course-wrapper row">
                                    <c:set var="count" value="0" scope="page" />
                                    <c:forEach items="${courses}" var="course">
                                        <c:set var="count" value="${count + 1}" scope="page"/>
                                        <div class="col-md-4 col-xs-6">
                                            <div class="item-course item-${count}">
                                                <div class="icon-circle">
                                                    <div class="icon-background"><i class="icons-img icon-globe"></i></div>
                                                    <div class="info">
                                                        <div class="info-back"><a href="#">${course.courseName}</a></div>
                                                    </div>
                                                </div>
                                                <div class="name-course"><a href="#">${course.courseName}</a><i class="fa fa-long-arrow-right"></i></div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <!-- TOP COURSES-->
                        <div class="section section-padding top-courses">
                            <div class="container">
                                <div class="group-title-index"><h4 class="top-title">CHOOSE YOUR COURSE</h4>

                                    <h2 class="center-title">the top popular courses for you</h2>

                                    <div class="bottom-title"><i class="bottom-icon icon-icon-04"></i></div>
                                </div>
                                <div class="top-courses-wrapper">
                                    <div class="top-courses-slider">
                                        <c:set var="count" value="0" scope="page" />
                                        <c:forEach items="${courses}" var="course">
                                            <c:set var="count" value="${count + 1}" scope="page"/>
                                            <div class="top-courses-item">
                                                <div class="edugate-layout-2">
                                                    <div class="edugate-layout-2-wrapper">
                                                        <div class="edugate-content"><a href="courses-detail.html" class="title">${course.courseName}</a>

                                                            <div class="info">
                                                                <div class="author item"><a href="#">${course.organizationAdmin.person.firstName}</a></div>
                                                                <div class="date-time item"><a href="#">17 sep 2015</a></div>
                                                            </div>
                                                            <div title="Rated 5.00 out of 5" class="star-rating"><span class="width-80"><strong class="rating">5.00</strong> out of 5</span></div>
                                                            <div class="description">${course.courseName}</div>
                                                            <button onclick="window.location.href = 'contact'" class="btn btn-green"><span>learn now</span></button>
                                                        </div>
                                                        <div class="edugate-image"><img src="assets/images/courses/courses-1.jpg" alt="" class="img-responsive"/></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>

                                    </div>
                                    <div class="group-btn-top-courses-slider">
                                        <div class="btn-prev">&lsaquo;</div>
                                        <div class="btn-next">&rsaquo;</div>
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
        <div class="body-2 loading">
            <div class="dots-loader"></div>
        </div>
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
        <script src="assets/libs/isotope/isotope.pkgd.min.js"></script>
        <script src="assets/libs/isotope/fit-columns.js"></script>
        <script src="assets/js/pages/homepage.js"></script>
    </body>
</html>