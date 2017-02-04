<%-- 
    Document   : AboutUs
    Created on : Dec 23, 2016, 3:06:49 PM
    Author     : GOPIRAJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from swlabs.co/edugate/about-us.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 23 Dec 2016 05:52:04 GMT -->
<head><title>Edugate | About Us</title>
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
                <div class="email"><a href="#"><i class="topbar-icon fa fa-envelope-o"></i><span>hello.shinway@gmail.com</span></a></div>
                <div class="hotline"><a href="#"><i class="topbar-icon fa fa-phone"></i><span>+84 909 015 345</span></a></div>
            </div>
            <div class="topbar-right pull-right">
                <div class="socials"><a href="#" class="facebook"><i class="fa fa-facebook"></i></a><a href="#" class="google"><i class="fa fa-google-plus"></i></a><a href="#" class="twitter"><i class="fa fa-twitter"></i></a><a href="#" class="pinterest"><i class="fa fa-pinterest"></i></a><a href="#" class="blog"><i class="fa fa-rss"></i></a><a href="#" class="dribbble"><i class="fa fa-dribbble"></i></a></div>
                <div class="group-sign-in"><a href="login.html" class="login">login</a><a href="register.html" class="register">register</a></div>
            </div>
        </div>
    </div>
    <div class="header-main homepage-01">
        <div class="container">
            <div class="header-main-wrapper">
                <div class="navbar-heade">
                    <div class="logo pull-left"><a href="index.html" class="header-logo"><img src="assets/images/logo-color-1.png" alt=""/></a></div>
                    <button type="button" data-toggle="collapse" data-target=".navigation" class="navbar-toggle edugate-navbar"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                </div>
                <nav class="navigation collapse navbar-collapse pull-right">
                    <ul class="nav-links nav navbar-nav">
                        <li class="dropdown"><a href="javascript:void(0)" class="main-menu">Home<span class="fa fa-angle-down icons-dropdown"></span></a>
                            <ul class="dropdown-menu edugate-dropdown-menu-1">
                                <li><a href="index.html" class="link-page">Home page 01</a></li>
                                <li><a href="homepage-02.html" class="link-page">Home page 02</a></li>
                                <li><a href="homepage-03.html" class="link-page">Home page 03</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a href="javascript:void(0)" class="main-menu">Courses<span class="fa fa-angle-down icons-dropdown"></span></a>
                            <ul class="dropdown-menu edugate-dropdown-menu-1">
                                <li><a href="courses.html" class="link-page">courses</a></li>
                                <li><a href="courses-detail.html" class="link-page">course detail</a></li>
                                <li><a href="events.html" class="link-page">events</a></li>
                                <li><a href="event-detail.html" class="link-page">event detail</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a href="javascript:void(0)" class="main-menu">gallery<span class="fa fa-angle-down icons-dropdown"></span></a>
                            <ul class="dropdown-menu edugate-dropdown-menu-1">
                                <li><a href="gallery-3column.html" class="link-page">gallery 3 column</a></li>
                                <li><a href="gallery-4column.html" class="link-page">gallery 4 column</a></li>
                                <li><a href="gallery-masonry.html" class="link-page">gallery masonry</a></li>
                            </ul>
                        </li>
                        <li class="dropdown active"><a href="javascript:void(0)" class="main-menu">pages<span class="fa fa-angle-down icons-dropdown"></span></a>
                            <ul class="dropdown-menu edugate-dropdown-menu-1">
                                <li><a href="categories.html" class="link-page">categories</a></li>
                                <li><a href="profile-teacher.html" class="link-page">profile teacher</a></li>
                                <li><a href="about-us.html" class="link-page">about us</a></li>
                                <li><a href="login.html" class="link-page">login</a></li>
                                <li><a href="register.html" class="link-page">register</a></li>
                                <li><a href="404.html" class="link-page">404 page</a></li>
                                <li><a href="faq.html" class="link-page">FAQ page</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a href="javascript:void(0)" class="main-menu">News<span class="fa fa-angle-down icons-dropdown"></span></a>
                            <ul class="dropdown-menu edugate-dropdown-menu-1">
                                <li><a href="news.html" class="link-page">news list</a></li>
                                <li><a href="news-grid.html" class="link-page">news grid</a></li>
                                <li><a href="news-grid-nonsidebar.html" class="link-page">news grid nonsidebar</a></li>
                                <li><a href="news-masonry.html" class="link-page">news masonry</a></li>
                                <li><a href="news-detail.html" class="link-page">news detail</a></li>
                            </ul>
                        </li>
                        <li><a href="contact.html" class="main-menu">Contact</a></li>
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
                <div class="section background-opacity page-title set-height-top">
                    <div class="container">
                        <div class="page-title-wrapper"><!--.page-title-content--><h2 class="captions">about us</h2>
                            <ol class="breadcrumb">
                                <li><a href="index.html">Home</a></li>
                                <li class="active"><a href="#">About</a></li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="section nav-subscribe">
                    <div class="container">
                        <div class="nav-subscribe-wrapper">
                            <div class="nav-subscribe-left"><p class="subscribe-text">Subscribe <b class="focus">Edugate</b> to learn new creative skill</p></div>
                            <div class="nav-subscribe-right">
                                <button class="btn btn-green btn-bold"><span>SUBSCRIBE NOW</span></button>
                            </div>
                        </div>
                    </div>
                </div>
                <!--INTRO EDUGATE-->
                <div class="section intro-edu">
                    <div class="container">
                        <div class="intro-edu-wrapper">
                            <div class="row">
                                <div class="col-md-5"><img src="assets/images/people-avatar-8.png" alt="" class="intro-image fadeInLeft animated wow"/></div>
                                <div class="col-md-7">
                                    <div class="intro-title">WHAT IS <b>EDUGATE</b> ?</div>
                                    <div class="intro-content"><p>Aliquam pulvinar pellentesque purus, nec condimentum nibh. Aenean dapibus iaculis odio id vestibulum. Nam at justo ante. Aenean hendrerit gravida ligula, id lacinia sapien tristique eget. In elit ipsum, vestibulum eu pulvinar sed.</p>

                                        <p>Maecenas eros mi, lacinia eu ultricies vel, elementum et justo. Ut at tortor a odio vestibulum suscipit non sit amet dolor. Morbi molestie magna nec metus facilisis, at iaculis mi adipiscing. Praesent ac diam velit. Curabitur lacinia tristique velit ut laoreet. Nam pretium id risus vitae fermentum. Aenean eu euismod justo. Aliquam sodales tortor elit, non luctus felis tristique sit amet.</p></div>
                                    <div class="group-button">
                                        <button class="btn btn-transition-2"><span>purchase theme</span></button>
                                        <button class="btn btn-green"><span>start learn now</span></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section section-padding edu-ab">
                    <div class="container">
                        <div class="edu-ab">
                            <div class="group-title-index edu-ab-title"><h2 class="center-title">WITH <b>EDUGATE</b> YOU CAN</h2><h4 class="top-title">Lorem Ipsum is simply dummy text of te printing industry</h4></div>
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
                <div class="section section-padding edu-feature">
                    <div class="container">
                        <div class="edu-feature-wrapper">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="group-title-index edu-feature-text"><h2 class="center-title">interface friendly learning at edugate</h2>

                                                <p class="top-title">Aliquam pulvinar pellentesque purus, nec condimentum nibh. Aenean dapibus iaculis odio id vestibulum. Nam at justo ante. Aenean hendrerit gravida ligula, id lacinia sapien tristique eget. In elit ipsum, vestibulum eu pulvinar sed.</p></div>
                                        </div>
                                        <div class="col-md-8">
                                            <ul id="accordion" role="tablist" class="panel-group list-unstyled edu-feature-list">
                                                <li class="panel">
                                                    <div role="tab" id="item-1" class="col-item-1"><i class="fa fa-check-circle"></i><a href="#lesson" data-toggle="collapse" data-parent="#accordion" role="button" aria-expanded="true" aria-controls="lesson"><span>90% lessons</span> are video</a></div>
                                                    <div id="lesson" role="tabpanel" aria-labelledby="item-1" class="collapse">
                                                        <div class="panel-body col-item-2">Lorem ipsum dolor sit amet, feugiat delicata liberavisse id cum, no quo maiorum intellegebat, liber regione eu sit. Mea cu case ludus integre.</div>
                                                    </div>
                                                </li>
                                                <li class="panel">
                                                    <div role="tab" id="item-2" class="col-item-1"><i class="fa fa-check-circle"></i><a href="#display" data-toggle="collapse" data-parent="#accordion" role="button" aria-expanded="true" aria-controls="lesson"><span>Displaying</span> clear curriculum</a></div>
                                                    <div id="display" role="tabpanel" aria-labelledby="item-2" class="collapse">
                                                        <div class="panel-body col-item-2">Lorem ipsum dolor sit amet, feugiat delicata liberavisse id cum, no quo maiorum intellegebat, liber regione eu sit. Mea cu case ludus integre.</div>
                                                    </div>
                                                </li>
                                                <li class="panel">
                                                    <div role="tab" id="item-3" class="col-item-1"><i class="fa fa-check-circle"></i><a href="#discuss" data-toggle="collapse" data-parent="#accordion" role="button" aria-expanded="true" aria-controls="lesson"><span>Discussion</span> with other students</a></div>
                                                    <div id="discuss" role="tabpanel" aria-labelledby="item-3" class="collapse">
                                                        <div class="panel-body col-item-2">Lorem ipsum dolor sit amet, feugiat delicata liberavisse id cum, no quo maiorum intellegebat, liber regione eu sit. Mea cu case ludus integre.</div>
                                                    </div>
                                                </li>
                                                <li class="panel">
                                                    <div role="tab" id="item-4" class="col-item-1"><i class="fa fa-check-circle"></i><a href="#capability1" data-toggle="collapse" data-parent="#accordion" role="button" aria-expanded="true" aria-controls="lesson"><span>Compatible</span> with Ubermenu</a></div>
                                                    <div id="capability1" role="tabpanel" aria-labelledby="item-4" class="collapse">
                                                        <div class="panel-body col-item-2">Lorem ipsum dolor sit amet, feugiat delicata liberavisse id cum, no quo maiorum intellegebat, liber regione eu sit. Mea cu case ludus integre.</div>
                                                    </div>
                                                </li>
                                                <li class="panel">
                                                    <div role="tab" id="item-5" class="col-item-1"><i class="fa fa-check-circle"></i><a href="#capability2" data-toggle="collapse" data-parent="#accordion" role="button" aria-expanded="true" aria-controls="lesson"><span>Compatible</span> with Many Popular Plugins</a></div>
                                                    <div id="capability2" role="tabpanel" aria-labelledby="item-5" class="collapse">
                                                        <div class="panel-body col-item-2">Lorem ipsum dolor sit amet, feugiat delicata liberavisse id cum, no quo maiorum intellegebat, liber regione eu sit. Mea cu case ludus integre.</div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6"><img src="assets/images/picture-8.png" alt="" class="computer-image"/></div>
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
                                                <div data-from="0" data-to="44" data-speed="1000" class="num">0</div>
                                                <p class="name-inner">teachers</p></div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="progress-bar-number">
                                                <div data-from="0" data-to="56" data-speed="1000" class="num">0</div>
                                                <p class="name-inner">courses</p></div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="progress-bar-number">
                                                <div data-from="0" data-to="165" data-speed="1000" class="num">0</div>
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
                                    <button onclick="window.location.href='categories.html'" class="btn btn-transition-3"><span>Purchase theme</span></button>
                                    <button onclick="window.location.href='about-us.html'" class="btn btn-green-3"><span>start Learn now</span></button>
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
                                <div class="staff-item customize">
                                    <div class="staff-item-wrapper">
                                        <div class="staff-info"><a href="#" class="staff-avatar"><img src="assets/images/people-avatar-2.jpg" alt="" class="img-responsive"/></a><a href="#" class="staff-name">Alex trevor</a>

                                            <div class="staff-job">head teacher</div>
                                            <div class="staff-desctiption">Nam libelo tempore, cum soluta nobis est eligendi optio cumque nilhi impedil quo minus end maximie fade posimus the end.</div>
                                        </div>
                                    </div>
                                    <div class="staff-socials"><a href="#" class="facebook"><i class="fa fa-facebook"></i></a><a href="#" class="google"><i class="fa fa-google-plus"></i></a><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></div>
                                </div>
                                <div class="staff-item customize">
                                    <div class="staff-item-wrapper">
                                        <div class="staff-info"><a href="#" class="staff-avatar"><img src="assets/images/people-avatar-3.jpg" alt="" class="img-responsive"/></a><a href="#" class="staff-name">lana simth</a>

                                            <div class="staff-job">vice head teacher</div>
                                            <div class="staff-desctiption">Nam libelo tempore, cum soluta nobis est eligendi optio cumque nilhi impedil quo minus end maximie fade posimus the end.</div>
                                        </div>
                                    </div>
                                    <div class="staff-socials"><a href="#" class="facebook"><i class="fa fa-facebook"></i></a><a href="#" class="google"><i class="fa fa-google-plus"></i></a><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></div>
                                </div>
                                <div class="staff-item customize">
                                    <div class="staff-item-wrapper">
                                        <div class="staff-info"><a href="#" class="staff-avatar"><img src="assets/images/people-avatar-4.jpg" alt="" class="img-responsive"/></a><a href="#" class="staff-name">barry join</a>

                                            <div class="staff-job">advisory professor</div>
                                            <div class="staff-desctiption">Nam libelo tempore, cum soluta nobis est eligendi optio cumque nilhi impedil quo minus end maximie fade posimus the end.</div>
                                        </div>
                                    </div>
                                    <div class="staff-socials"><a href="#" class="facebook"><i class="fa fa-facebook"></i></a><a href="#" class="google"><i class="fa fa-google-plus"></i></a><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></div>
                                </div>
                                <div class="staff-item customize">
                                    <div class="staff-item-wrapper">
                                        <div class="staff-info"><a href="#" class="staff-avatar"><img src="assets/images/people-avatar-5.jpg" alt="" class="img-responsive"/></a><a href="#" class="staff-name">taylor ema</a>

                                            <div class="staff-job">teacher</div>
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
                </div>
                <!-- SLIDER TALK ABOUT US-->
                <div class="section background-opacity slider-talk-about-us">
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
                </div>
                <!-- SLIDER LOGO-->
                <div class="section slider-logo">
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
                </div>
            </div>
        </div>
    </div>
    <!-- BUTTON BACK TO TOP-->
    <div id="back-top"><a href="#top"><i class="fa fa-angle-double-up"></i></a></div>
</div>
<!-- FOOTER-->
<footer>
    <div class="footer-top">
        <div class="container">
            <div class="footer-top-wrapper">
                <div class="footer-top-left"><p class="footer-top-focus">BECOME AN INSTRUCTOR</p>

                    <p class="footer-top-text">Join thousand of instructors and earn money hassle free!</p></div>
                <div class="footer-top-right">
                    <button onclick="window.location.href='contact.html'" class="btn btn-blue btn-bold"><span>GET STARTED NOW</span></button>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-main">
        <div class="container">
            <div class="footer-main-wrapper">
                <div class="row">
                    <div class="col-2">
                        <div class="col-md-3 col-sm-6 col-xs-6 sd380">
                            <div class="edugate-widget widget">
                                <div class="title-widget">EDUGATE</div>
                                <div class="content-widget"><p>Edugate is a great start for an education personnel or organization to start the online business with 1 Click.</p>

                                    <div class="info-list">
                                        <ul class="list-unstyled">
                                            <li><i class="fa fa-envelope-o"></i><a href="#">hello@edugate.com</a></li>
                                            <li><i class="fa fa-phone"></i><a href="#">P: 3333 222 1111</a></li>
                                            <li><i class="fa fa-map-marker"></i><a href="#"><p>99 Barnard St - Suite 111</p>

                                                <p>United States - GA 22222</p></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-6 sd380">
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
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="col-md-3 col-sm-6 col-xs-6 sd380">
                            <div class="gallery-widget widget">
                                <div class="title-widget">GALLERY</div>
                                <div class="content-widget">
                                    <div class="gallery-list"><a href="#" class="thumb"><img src="assets/images/gallery/gallery-01.jpg" alt="" class="img-responsive"/></a><a href="#" class="thumb"><img src="assets/images/gallery/gallery-02.jpg" alt="" class="img-responsive"/></a><a href="#" class="thumb"><img src="assets/images/gallery/gallery-03.jpg" alt="" class="img-responsive"/></a><a href="#" class="thumb"><img src="assets/images/gallery/gallery-04.jpg" alt="" class="img-responsive"/></a><a href="#" class="thumb"><img src="assets/images/gallery/gallery-05.jpg" alt="" class="img-responsive"/></a><a href="#" class="thumb"><img src="assets/images/gallery/gallery-06.jpg" alt="" class="img-responsive"/></a><a href="#" class="thumb"><img src="assets/images/gallery/gallery-07.jpg" alt="" class="img-responsive"/></a><a href="#" class="thumb"><img src="assets/images/gallery/gallery-08.jpg"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        alt="" class="img-responsive"/></a></div>
                                    <div class="clearfix"></div>
                                    <a href="#" class="view-more">View more&nbsp;<i class="fa fa-angle-double-right mls"></i></a></div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-6 sd380">
                            <div class="mailing-widget widget">
                                <div class="title-widget">MAILING</div>
                                <div class="content-wiget"><p>Sign up for our mailing list to get latest updates and offers.</p>

                                    <form action="http://swlabs.co/edugate/index.html">
                                        <div class="input-group"><input type="text" placeholder="Email address" class="form-control form-email-widget"/><span class="input-group-btn"><input type="submit" value="✓" class="btn btn-email"/></span></div>
                                    </form>
                                    <p>We respect your privacy</p>

                                    <div class="socials"><a href="#" class="facebook"><i class="fa fa-facebook"></i></a><a href="#" class="google"><i class="fa fa-google-plus"></i></a><a href="#" class="twitter"><i class="fa fa-twitter"></i></a><a href="#" class="pinterest"><i class="fa fa-pinterest"></i></a><a href="#" class="blog"><i class="fa fa-rss"></i></a><a href="#" class="dribbble"><i class="fa fa-dribbble"></i></a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="hyperlink">
                <div class="pull-left hyper-left">
                    <ul class="list-inline">
                        <li><a href="index.html">HOME</a></li>
                        <li><a href="courses.html">COURSES</a></li>
                        <li><a href="about-us.html">ABOUT</a></li>
                        <li><a href="categories.html">PAGES</a></li>
                        <li><a href="news.html">NEWS</a></li>
                        <li><a href="contact.html">CONTACT</a></li>
                    </ul>
                </div>
                <div class="pull-right hyper-right">@ SWLABS</div>
            </div>
        </div>
    </div>
</footer>
<!-- THEME SETTING-->
<div class="theme-setting">
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
</div>
<!-- LOADING--><!-- JAVASCRIPT LIBS-->
<script>if ((Cookies.get('color-skin') != undefined) && (Cookies.get('color-skin') != 'color-1')) {
    $('.logo .header-logo img').attr('src', 'assets/images/logo-' + Cookies.get('color-skin') + '.png');
} else if ((Cookies.get('color-skin') == undefined) || (Cookies.get('color-skin') == 'color-1')) {
    $('.logo .header-logo img').attr('src', 'assets/images/logo-color-1.png');
}</script>
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

<!-- Mirrored from swlabs.co/edugate/about-us.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 23 Dec 2016 05:52:05 GMT -->
</html>
