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
                                <li class="active"><a href="index" class="main-menu">Home</a>
                                </li>
                                <li><a href="courses-detail" class="main-menu">Courses</a>
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
                        <!-- PROGRESS BARS-->
                        <!--                <div class="section progress-bars section-padding">
                                            <div class="container">
                                                <div class="progress-bars-content">
                                                    <div class="progress-bar-wrapper"><h2 class="title-2">Some important facts about us</h2>
                        
                                                        <div class="row">
                                                            <div class="content">
                                                                <div class="col-sm-3">
                                                                    <div class="progress-bar-number">
                                                                        <div data-from="0" data-to="16" data-speed="1000" class="num">0</div>
                                                                        <p class="name-inner">teachers</p></div>
                                                                </div>
                                                                <div class="col-sm-3">
                                                                    <div class="progress-bar-number">
                                                                        <div data-from="0" data-to="8" data-speed="1000" class="num">0</div>
                                                                        <p class="name-inner">courses</p></div>
                                                                </div>
                                                                <div class="col-sm-3">
                                                                    <div class="progress-bar-number">
                                                                        <div data-from="0" data-to="125" data-speed="1000" class="num">0</div>
                                                                        <p class="name-inner">members</p></div>
                                                                </div>
                                                                <div class="col-sm-3">
                                                                    <div class="progress-bar-number">
                                                                        <div data-from="0" data-to="15" data-speed="1000" class="num">0</div>
                                                                        <p class="name-inner">Countries</p></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="group-button">
                                                            <button onclick="window.location.href='contact'" class="btn btn-transition-3"><span>start Enquiry now</span></button>
                                                            <button onclick="window.location.href='contact'" class="btn btn-green-3"><span>start Learn now</span></button>
                                                        </div>
                                                        <div class="group-btn-slider">
                                                            <div class="btn-prev"><i class="fa fa-angle-left"></i></div>
                                                            <div class="btn-next"><i class="fa fa-angle-right"></i></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>-->
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
                                                            <!--                                                <div class="info-more">
                                                                                                                <div class="view item"><i class="fa fa-user"></i>
                                                            
                                                                                                                    <p> 56</p></div>
                                                                                                                <div class="comment item"><i class="fa fa-comment"></i>
                                                            
                                                                                                                    <p> 239</p></div>
                                                                                                            </div>-->
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
                        <!-- WHY CHOOSE US-->
                        <!--                <div class="section why-choose-us">
                                            <div class="why-choose-us-wrapper-top">
                                                <div class="container">
                                                    <div class="why-choose-us-wrapper"><h2 class="title-2">Why Edugate?</h2>
                        
                                                        <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>
                                                        <button onclick="window.location.href='categories.html'" class="btn btn-green-2"><span>start Learn now</span></button>
                                                    </div>
                                                    <div data-wow-delay="0.2s" data-wow-duration="1.2s" class="background-girl-1 wow fadeInUp"><img src="assets/images/girl-1.png" alt="" class="img-responsive"/></div>
                                                </div>
                                            </div>
                                            <div class="why-choose-us-wrapper-bottom background-opacity">
                                                <div class="container">
                                                    <div data-wow-delay="0.4s" data-wow-duration="1s" class="row why-choose-us-wrapper wow zoomIn">
                                                        <div class="customs-row">
                                                            <div class="col-sm-4 col-xs-6 section-icon"><i class="fa fa-pencil-square-o"></i>
                        
                                                                <p> Over 600 free tutorial</p></div>
                                                            <div class="col-sm-4 col-xs-6 section-icon"><i class="fa fa-compress"></i>
                        
                                                                <p> Refund if not Satisfied</p></div>
                                                        </div>
                                                        <div class="customs-row">
                                                            <div class="col-sm-4 col-xs-6 section-icon"><i class="fa fa-paper-plane"></i>
                        
                                                                <p> Easy to learning everytime, everywhere</p></div>
                                                            <div class="col-sm-4 col-xs-6 section-icon"><i class="fa fa-folder-open"></i>
                        
                                                                <p> Over 3000 Ebook a-vailable</p></div>
                                                        </div>
                                                        <div class="customs-row">
                                                            <div class="col-sm-4 col-xs-6 section-icon"><i class="fa fa-external-link"></i>
                        
                                                                <p> Free updates & support</p></div>
                                                            <div class="col-sm-4 col-xs-6 section-icon"><i class="fa fa-stumbleupon-circle"></i>
                        
                                                                <p> Flexible payment methods</p></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>-->

                        <!-- PRICING-->
                        <!--<div class="section section-padding pricing">
                            <div class="container">
                                <div class="group-title-index"><h4 class="top-title">chooses your pricing</h4>
        
                                    <h2 class="center-title">the best pricing we offered</h2>
        
                                    <div class="bottom-title"><i class="bottom-icon icon-a-1-01-01"></i></div>
                                </div>
                                <div class="row">
                                    <div class="pricing-wrapper">
                                        <div class="col-sm-4">
                                            <div class="pricing-widget">
                                                <div class="pricing-header">
                                                    <div class="price-cost">
                                                        <div class="inner"><p data-from="0" data-to="0" data-speed="1000" class="inner-number">0</p></div>
                                                    </div>
                                                </div>
                                                <div class="pricing-content"><h3 class="pricing-title">trial</h3>
        
                                                    <p class="pricing-subtitle">30 days free trial</p>
                                                    <ul class="pricing-list">
                                                        <li><p><strong>One day</strong> trial</p></li>
                                                        <li><p><strong>Limited</strong> courses</p></li>
                                                        <li><p><strong>Free</strong> 3 lessons</p></li>
                                                        <li><p><strong>No</strong> supporter</p></li>
                                                        <li><p><strong>No</strong> ebook</p></li>
                                                        <li><p><strong>No</strong> tutorial</p></li>
                                                        <li><p><strong>Limited</strong> registered user</p></li>
                                                    </ul>
                                                    <div class="pricing-button"><a href="#">choose plan</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="pricing-widget main active">
                                                <div class="pricing-header">
                                                    <div class="price-cost">
                                                        <div class="inner"><p data-from="0" data-to="35" data-speed="1000" class="inner-number">0</p></div>
                                                    </div>
                                                </div>
                                                <div class="pricing-content"><h3 class="pricing-title">Standard</h3>
        
                                                    <p class="pricing-subtitle">per month when paid annually</p>
                                                    <ul class="pricing-list">
                                                        <li><p><strong>One year</strong> standard access</p></li>
                                                        <li><p><strong>Limited</strong> courses</p></li>
                                                        <li><p><strong>300+</strong> lessons</p></li>
                                                        <li><p><strong>Random</strong> supporter</p></li>
                                                        <li><p><strong>View only</strong> ebook</p></li>
                                                        <li><p><strong>Standard</strong> tutorials</p></li>
                                                        <li><p><strong>Unlimited</strong> registered user</p></li>
                                                    </ul>
                                                    <div class="pricing-button"><a href="#">choose plan</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="pricing-widget">
                                                <div class="pricing-header">
                                                    <div class="price-cost">
                                                        <div class="inner"><p data-from="0" data-to="89" data-speed="1000" class="inner-number">0</p></div>
                                                    </div>
                                                </div>
                                                <div class="pricing-content"><h3 class="pricing-title">Premiere</h3>
        
                                                    <p class="pricing-subtitle">per month when paid annually</p>
                                                    <ul class="pricing-list">
                                                        <li><p><strong>Life time</strong> access</p></li>
                                                        <li><p><strong>Unlimited</strong> All courses</p></li>
                                                        <li><p><strong>3000+</strong> lessons & growing</p></li>
                                                        <li><p><strong>Free</strong> supporter</p></li>
                                                        <li><p><strong>Free</strong> Ebook Downloads</p></li>
                                                        <li><p><strong>Premium</strong> tutorials</p></li>
                                                        <li><p><strong>Unlimited</strong> registered user</p></li>
                                                    </ul>
                                                    <div class="pricing-button"><a href="#">choose plan</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="group-btn-slider">
                                    <div class="btn-prev"><i class="fa fa-angle-left"></i></div>
                                    <div class="btn-next"><i class="fa fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div>
                        <!-- SLIDER TALK ABOUT US-->
                        <!--                <div class="section background-opacity slider-talk-about-us">
                                            <div class="container">
                                                <div id="people-talk" data-ride="carousel" data-interval="5000" class="slider-talk-about-us-wrapper carousel slide">
                                                    <div role="listbox" class="slider-talk-about-us-content carousel-inner">
                                                        <div class="peopel-item item active"><p class="peopel-comment">" There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. "</p>
                        
                                                            <div class="group-peole-info">
                                                                <div class="peopel-avatar"><img src="assets/images/people-avatar-1.jpg" alt="" class="img-responsive"/></div>
                                                                <div class="peopel-name">john doe</div>
                                                                <div class="people-job">Microshop Crop.SEO</div>
                                                            </div>
                                                        </div>
                                                        <div class="peopel-item item"><p class="peopel-comment">" There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. "</p>
                        
                                                            <div class="group-peole-info">
                                                                <div class="peopel-avatar"><img src="assets/images/people-avatar-1.jpg" alt="" class="img-responsive"/></div>
                                                                <div class="peopel-name">john doe</div>
                                                                <div class="people-job">Microshop Crop.SEO</div>
                                                            </div>
                                                        </div>
                                                        <div class="peopel-item item"><p class="peopel-comment">" There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. "</p>
                        
                                                            <div class="group-peole-info">
                                                                <div class="peopel-avatar"><img src="assets/images/people-avatar-1.jpg" alt="" class="img-responsive"/></div>
                                                                <div class="peopel-name">john doe</div>
                                                                <div class="people-job">Microshop Crop.SEO</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="group-btn-slider"><a href="#people-talk" role="button" data-slide="prev">
                                                <div class="btn-prev carousel-control left"><i class="fa fa-angle-left"></i></div>
                                            </a><a href="#people-talk" role="button" data-slide="next">
                                                <div class="btn-next carousel-control right"><i class="fa fa-angle-right"></i></div>
                                            </a></div>
                                        </div>-->
                        <!--LATEST NEW-->
                        <!--                <div class="section section-padding latest-news">
                                            <div class="container">
                                                <div class="group-title-index"><h4 class="top-title">latest news</h4>
                        
                                                    <h2 class="center-title">all about edugate updates</h2>
                        
                                                    <div class="bottom-title"><i class="bottom-icon icon-a-01-01"></i></div>
                                                </div>
                                                <div class="latest-news-wrapper">
                                                    <div class="edugate-layout-1">
                                                        <div class="edugate-image"><img src="assets/images/news/news-1.jpg" alt="" class="img-responsive"/></div>
                                                        <div class="edugate-content"><a href="news-detail.html" class="title">Effective researching method</a>
                        
                                                            <div class="info">
                                                                <div class="author item"><a href="#">By Admin</a></div>
                                                                <div class="date-time item"><a href="#">17 sep 2015</a></div>
                                                            </div>
                                                            <div class="info-more">
                                                                <div class="view item"><i class="fa fa-user"></i>
                        
                                                                    <p> 56</p></div>
                                                                <div class="comment item"><i class="fa fa-comment"></i>
                        
                                                                    <p> 239</p></div>
                                                            </div>
                                                            <div class="description">Dalmatian hello amazing the rmore flung as thanks a manta dealt to under emu some the and one baldbe dear sobbingly save and spitefully less Dalmatian hello amazing the rmore flung as thanks a manta dealt to under emu some the and one baldbe dear sobbingly save and spitefully Dalmatian hello amazing the...</div>
                                                            <button onclick="window.location.href='news-detail.html'" class="btn btn-green"><span>learn now</span></button>
                                                        </div>
                                                    </div>
                                                    <div class="edugate-layout-1">
                                                        <div class="edugate-image"><img src="assets/images/news/news-2.jpg" alt="" class="img-responsive"/></div>
                                                        <div class="edugate-content"><a href="news-detail.html" class="title">Effective researching method</a>
                        
                                                            <div class="info">
                                                                <div class="author item"><a href="#">By Admin</a></div>
                                                                <div class="date-time item"><a href="#">17 sep 2015</a></div>
                                                            </div>
                                                            <div class="info-more">
                                                                <div class="view item"><i class="fa fa-user"></i>
                        
                                                                    <p> 56</p></div>
                                                                <div class="comment item"><i class="fa fa-comment"></i>
                        
                                                                    <p> 239</p></div>
                                                            </div>
                                                            <div class="description">Dalmatian hello amazing the rmore flung as thanks a manta dealt to under emu some the and one baldbe dear sobbingly save and spitefully less Dalmatian hello amazing the rmore flung as thanks a manta dealt to under emu some the and one baldbe dear sobbingly save and spitefully Dalmatian hello amazing the...</div>
                                                            <button onclick="window.location.href='news-detail.html'" class="btn btn-green"><span>learn now</span></button>
                                                        </div>
                                                    </div>
                                                    <div class="edugate-layout-1">
                                                        <div class="edugate-image"><img src="assets/images/news/news-3.jpg" alt="" class="img-responsive"/></div>
                                                        <div class="edugate-content"><a href="news-detail.html" class="title">Effective researching method</a>
                        
                                                            <div class="info">
                                                                <div class="author item"><a href="#">By Admin</a></div>
                                                                <div class="date-time item"><a href="#">17 sep 2015</a></div>
                                                            </div>
                                                            <div class="info-more">
                                                                <div class="view item"><i class="fa fa-user"></i>
                        
                                                                    <p> 56</p></div>
                                                                <div class="comment item"><i class="fa fa-comment"></i>
                        
                                                                    <p> 239</p></div>
                                                            </div>
                                                            <div class="description">Dalmatian hello amazing the rmore flung as thanks a manta dealt to under emu some the and one baldbe dear sobbingly save and spitefully less Dalmatian hello amazing the rmore flung as thanks a manta dealt to under emu some the and one baldbe dear sobbingly save and spitefully Dalmatian hello amazing the...</div>
                                                            <button onclick="window.location.href='news-detail.html'" class="btn btn-green"><span>learn now</span></button>
                                                        </div>
                                                    </div>
                                                    <button class="btn btn-green btn-latest-new"><span>Browser All Post<i class="fa fa-long-arrow-right"></i></span></button>
                                                </div>
                                            </div>
                                        </div>-->
                        <!-- BEST STAFF-->
                        <!--                <div class="section section-padding background-opacity best-staff">
                                            <div class="container">
                                                <div class="group-title-index"><h4 class="top-title">touch them if you want</h4>
                        
                                                    <h2 class="center-title">learn from the best</h2>
                        
                                                    <div class="bottom-title"><i class="bottom-icon icon-icon-05"></i></div>
                                                </div>
                                                <div class="best-staff-wrapper">
                                                    <div class="best-staff-content">
                                                        <div class="staff-item">
                                                            <div class="staff-item-wrapper">
                                                                <div class="staff-info"><a href="#" class="staff-avatar"><img src="assets/images/people-avatar-2.jpg" alt="" class="img-responsive"/></a><a href="#" class="staff-name">Alex trevor</a>
                        
                                                                    <div class="staff-job">head teacher</div>
                                                                    <div class="staff-desctiption">Nam libelo tempore, cum soluta nobis est eligendi optio cumque nilhi impedil quo minus end maximie fade posimus the end.</div>
                                                                </div>
                                                            </div>
                                                            <div class="staff-socials"><a href="#" class="facebook"><i class="fa fa-facebook"></i></a><a href="#" class="google"><i class="fa fa-google-plus"></i></a><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></div>
                                                        </div>
                                                        <div class="staff-item">
                                                            <div class="staff-item-wrapper">
                                                                <div class="staff-info"><a href="#" class="staff-avatar"><img src="assets/images/people-avatar-3.jpg" alt="" class="img-responsive"/></a><a href="#" class="staff-name">lana simth</a>
                        
                                                                    <div class="staff-job">vice head teacher</div>
                                                                    <div class="staff-desctiption">Nam libelo tempore, cum soluta nobis est eligendi optio cumque nilhi impedil quo minus end maximie fade posimus the end.</div>
                                                                </div>
                                                            </div>
                                                            <div class="staff-socials"><a href="#" class="facebook"><i class="fa fa-facebook"></i></a><a href="#" class="google"><i class="fa fa-google-plus"></i></a><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></div>
                                                        </div>
                                                        <div class="staff-item">
                                                            <div class="staff-item-wrapper">
                                                                <div class="staff-info"><a href="#" class="staff-avatar"><img src="assets/images/people-avatar-4.jpg" alt="" class="img-responsive"/></a><a href="#" class="staff-name">barry join</a>
                        
                                                                    <div class="staff-job">advisory professor</div>
                                                                    <div class="staff-desctiption">Nam libelo tempore, cum soluta nobis est eligendi optio cumque nilhi impedil quo minus end maximie fade posimus the end.</div>
                                                                </div>
                                                            </div>
                                                            <div class="staff-socials"><a href="#" class="facebook"><i class="fa fa-facebook"></i></a><a href="#" class="google"><i class="fa fa-google-plus"></i></a><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></div>
                                                        </div>
                                                        <div class="staff-item">
                                                            <div class="staff-item-wrapper">
                                                                <div class="staff-info"><a href="#" class="staff-avatar"><img src="assets/images/people-avatar-5.jpg" alt="" class="img-responsive"/></a><a href="#" class="staff-name">Ven Tomarme</a>
                        
                                                                    <div class="staff-job">Design teacher</div>
                                                                    <div class="staff-desctiption">Nam libelo tempore, cum soluta nobis est eligendi optio cumque nilhi impedil quo minus end maximie fade posimus the end.</div>
                                                                </div>
                                                            </div>
                                                            <div class="staff-socials"><a href="#" class="facebook"><i class="fa fa-facebook"></i></a><a href="#" class="google"><i class="fa fa-google-plus"></i></a><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="group-btn-slider">
                                                <div class="btn-prev"><i class="fa fa-angle-left"></i></div>
                                                <div class="btn-next"><i class="fa fa-angle-right"></i></div>
                                            </div>
                                        </div>-->
                        <!-- PICTURE AND GALLERY-->
<!--                        <div class="section section-padding picture-gallery">
                            <div class="group-title-index"><h4 class="top-title">see and feel it</h4>

                                <h2 class="center-title">Pictures and gallery</h2>

                                <div class="bottom-title"><i class="bottom-icon icon-a-1-01"></i></div>
                            </div>
                            <div class="picture-gallery-wrapper"> Nav tabs
                                <ul role="tablist" class="nav nav-tabs edugate-tabs">
                                    <li role="presentation" class="active"><a href="#campus" data-toggle="tab" class="text">Campus</a></li>
                                    <li role="presentation"><a href="#education" data-toggle="tab" class="text">Education</a></li>
                                    <li role="presentation"><a href="#building" data-toggle="tab" class="text">Building</a></li>
                                    <li role="presentation"><a href="#teachers" data-toggle="tab" class="text">Teachers</a></li>
                                    <li role="presentation"><a href="#students" data-toggle="tab" class="text">Students</a></li>
                                </ul>
                                 Tab panes
                                <div class="tab-content gallery-content">
                                    <div id="campus" role="tabpanel" class="tab-pane fade in active">
                                        <div class="grid">
                                            <div class="grid-item grid-item-height3"><a href="assets/images/lib-pictures/pictures-1.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-1.jpg" alt="" class="img-responsive"/></a></div>
                                            <div class="grid-item grid-item-height2"><a href="assets/images/lib-pictures/pictures-2.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-2.jpg" alt="" class="img-responsive"/></a></div>
                                            <div class="grid-item grid-item-height3"><a href="assets/images/lib-pictures/pictures-3.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-3.jpg" alt="" class="img-responsive"/></a></div>
                                            <div class="grid-item grid-item-height1"><a href="assets/images/lib-pictures/pictures-4.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-4.jpg" alt="" class="img-responsive"/></a></div>
                                            <div class="grid-item grid-item-height2"><a href="assets/images/lib-pictures/pictures-6.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-6.jpg" alt="" class="img-responsive"/></a></div>
                                            <div class="grid-item grid-item-height1"><a href="assets/images/lib-pictures/pictures-5.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-5.jpg" alt="" class="img-responsive"/></a></div>
                                        </div>
                                    </div>
                                    <div id="education" role="tabpanel" class="tab-pane fade">
                                        <div class="grid">
                                            <div class="grid-item grid-item-height3"><a href="assets/images/lib-pictures/pictures-3.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-3.jpg" alt="" class="img-responsive"/></a></div>
                                            <div class="grid-item grid-item-height2"><a href="assets/images/lib-pictures/pictures-6.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-2.jpg" alt="" class="img-responsive"/></a></div>
                                            <div class="grid-item grid-item-height3"><a href="assets/images/lib-pictures/pictures-1.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-1.jpg" alt="" class="img-responsive"/></a></div>
                                            <div class="grid-item grid-item-height1"><a href="assets/images/lib-pictures/pictures-4.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-4.jpg" alt="" class="img-responsive"/></a></div>
                                            <div class="grid-item grid-item-height2"><a href="assets/images/lib-pictures/pictures-2.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-2.jpg" alt="" class="img-responsive"/></a></div>
                                            <div class="grid-item grid-item-height1"><a href="assets/images/lib-pictures/pictures-5.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-5.jpg" alt="" class="img-responsive"/></a></div>
                                        </div>
                                    </div>
                                    <div id="building" role="tabpanel" class="tab-pane fade">
                                        <div class="grid">
                                            <div class="grid-item grid-item-height3"><a href="assets/images/lib-pictures/pictures-1.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-1.jpg" alt="" class="img-responsive"/></a></div>
                                            <div class="grid-item grid-item-height2"><a href="assets/images/lib-pictures/pictures-6.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-6.jpg" alt="" class="img-responsive"/></a></div>
                                            <div class="grid-item grid-item-height3"><a href="assets/images/lib-pictures/pictures-3.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-3.jpg" alt="" class="img-responsive"/></a></div>
                                            <div class="grid-item grid-item-height1"><a href="assets/images/lib-pictures/pictures-5.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-5.jpg" alt="" class="img-responsive"/></a></div>
                                            <div class="grid-item grid-item-height2"><a href="assets/images/lib-pictures/pictures-2.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-2.jpg" alt="" class="img-responsive"/></a></div>
                                            <div class="grid-item grid-item-height1"><a href="assets/images/lib-pictures/pictures-4.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-4.jpg" alt="" class="img-responsive"/></a></div>
                                        </div>
                                    </div>
                                    <div id="teachers" role="tabpanel" class="tab-pane fade">
                                        <div class="grid">
                                            <div class="grid-item grid-item-height3"><a href="assets/images/lib-pictures/pictures-3.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-3.jpg" alt="" class="img-responsive"/></a></div>
                                            <div class="grid-item grid-item-height2"><a href="assets/images/lib-pictures/pictures-2.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-2.jpg" alt="" class="img-responsive"/></a></div>
                                            <div class="grid-item grid-item-height3"><a href="assets/images/lib-pictures/pictures-1.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-1.jpg" alt="" class="img-responsive"/></a></div>
                                            <div class="grid-item grid-item-height1"><a href="assets/images/lib-pictures/pictures-5.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-5.jpg" alt="" class="img-responsive"/></a></div>
                                            <div class="grid-item grid-item-height2"><a href="assets/images/lib-pictures/pictures-6.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-6.jpg" alt="" class="img-responsive"/></a></div>
                                            <div class="grid-item grid-item-height1"><a href="assets/images/lib-pictures/pictures-4.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-4.jpg" alt="" class="img-responsive"/></a></div>
                                        </div>
                                    </div>
                                    <div id="students" role="tabpanel" class="tab-pane fade">
                                        <div class="grid">
                                            <div class="grid-item grid-item-height3"><a href="assets/images/lib-pictures/pictures-1.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-1.jpg" alt="" class="img-responsive"/></a></div>
                                            <div class="grid-item grid-item-height2"><a href="assets/images/lib-pictures/pictures-2.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-2.jpg" alt="" class="img-responsive"/></a></div>
                                            <div class="grid-item grid-item-height3"><a href="assets/images/lib-pictures/pictures-3.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-3.jpg" alt="" class="img-responsive"/></a></div>
                                            <div class="grid-item grid-item-height1"><a href="assets/images/lib-pictures/pictures-5.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-5.jpg" alt="" class="img-responsive"/></a></div>
                                            <div class="grid-item grid-item-height2"><a href="assets/images/lib-pictures/pictures-6.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-6.jpg" alt="" class="img-responsive"/></a></div>
                                            <div class="grid-item grid-item-height1"><a href="assets/images/lib-pictures/pictures-4.jpg" class="content fancybox-button"><img src="assets/images/lib-pictures/pictures-4.jpg" alt="" class="img-responsive"/></a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>-->
                        <!-- SLIDER LOGO-->
                        <!--                <div class="section slider-logo">
                                            <div class="container">
                                                <div class="slider-logo-wrapper">
                                                    <div class="slider-logo-content">
                                                        <div class="carousel-logos owl-carousel">
                                                            <div class="logo-iteam item"><a href="#"><img src="assets/images/logo/logo-carousel-1.png" alt="" class="img-responsive"/></a></div>
                                                            <div class="logo-iteam item"><a href="#"><img src="assets/images/logo/logo-carousel-2.png" alt="" class="img-responsive"/></a></div>
                                                            <div class="logo-iteam item"><a href="#"><img src="assets/images/logo/logo-carousel-3.png" alt="" class="img-responsive"/></a></div>
                                                            <div class="logo-iteam item"><a href="#"><img src="assets/images/logo/logo-carousel-4.png" alt="" class="img-responsive"/></a></div>
                                                            <div class="logo-iteam item"><a href="#"><img src="assets/images/logo/logo-carousel-5.png" alt="" class="img-responsive"/></a></div>
                                                            <div class="logo-iteam item"><a href="#"><img src="assets/images/logo/logo-carousel-6.png" alt="" class="img-responsive"/></a></div>
                                                            <div class="logo-iteam item"><a href="#"><img src="assets/images/logo/logo-carousel-1.png" alt="" class="img-responsive"/></a></div>
                                                            <div class="logo-iteam item"><a href="#"><img src="assets/images/logo/logo-carousel-2.png" alt="" class="img-responsive"/></a></div>
                                                            <div class="logo-iteam item"><a href="#"><img src="assets/images/logo/logo-carousel-3.png" alt="" class="img-responsive"/></a></div>
                                                            <div class="logo-iteam item"><a href="#"><img src="assets/images/logo/logo-carousel-4.png" alt="" class="img-responsive"/></a></div>
                                                            <div class="logo-iteam item"><a href="#"><img src="assets/images/logo/logo-carousel-5.png" alt="" class="img-responsive"/></a></div>
                                                            <div class="logo-iteam item"><a href="#"><img src="assets/images/logo/logo-carousel-6.png" alt="" class="img-responsive"/></a></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>-->
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
                                            <div class="gallery-list">
                                                <a href="#" class="thumb"><img src="assets/images/gallery/gallery-01.jpg" alt="" class="img-responsive"/></a>
                                                <a href="#" class="thumb"><img src="assets/images/gallery/gallery-02.jpg" alt="" class="img-responsive"/></a>
                                                <a href="#" class="thumb"><img src="assets/images/gallery/gallery-03.jpg" alt="" class="img-responsive"/></a>
                                                <a href="#" class="thumb"><img src="assets/images/gallery/gallery-04.jpg" alt="" class="img-responsive"/></a>
                                                <a href="#" class="thumb"><img src="assets/images/gallery/gallery-05.jpg" alt="" class="img-responsive"/></a>
                                                <a href="#" class="thumb"><img src="assets/images/gallery/gallery-06.jpg" alt="" class="img-responsive"/></a>
                                                <a href="#" class="thumb"><img src="assets/images/gallery/gallery-07.jpg" alt="" class="img-responsive"/></a>
                                                <a href="#" class="thumb"><img src="assets/images/gallery/gallery-08.jpg" alt="" class="img-responsive"/></a>
                                            </div>
                                            <div class="clearfix"></div>
                                            <a href="/gallery" class="view-more">View more&nbsp;<i class="fa fa-angle-double-right mls"></i></a>
                                        </div>-->
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
        <!-- THEME SETTING-->
        <!--        <div class="theme-setting">
                    <div class="theme-loading">
                        <div class="theme-loading-content">
                            <div class="dots-loader"></div>
                        </div>
                    </div>
                    <a href="javascript:;" class="btn-theme-setting"><i class="fa fa-tint"></i></a>
        
                    <div class="content-theme-setting"><h2 class="title">setting color</h2>
                        <ul class="list-unstyled list-inline color-skins">
                            <li data-color="color-1"></li>
                            <li data-color="color-2"></li>
                            <li data-color="color-3"></li>
                            <li data-color="color-4"></li>
                            <li data-color="color-5"></li>
                            <li data-color="color-6"></li>
                            <li data-color="color-7"></li>
                            <li data-color="color-8"></li>
                            <li data-color="color-9"></li>
                            <li data-color="color-10"></li>
                        </ul>
                    </div>
                </div>-->
        <!-- LOADING-->
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