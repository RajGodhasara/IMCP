<%-- 
    Document   : Contact
    Created on : Dec 23, 2016, 2:33:47 PM
    Author     : GOPIRAJ
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
    <head><title>Contact</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- LIBRARY FONT-->
        <link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,400italic,700,900,300">
        <link type="text/css" rel="stylesheet" href="assets/font/font-icon/font-awesome-4.4.0/css/font-awesome.css"/>
        <link type="text/css" rel="stylesheet" href="assets/font/font-icon/font-svg/css/Glyphter.css"/>
        <!-- LIBRARY CSS-->
        <link type="text/css" rel="stylesheet" href="assets/libs/animate/animate.css"/>
        <link type="text/css" rel="stylesheet" href="assets/libs/bootstrap-3.3.5/css/bootstrap.css"/>
        <link type="text/css" rel="stylesheet" href="assets/libs/owl-carousel-2.0/assets/owl.carousel.css"/>
        <link type="text/css" rel="stylesheet" href="assets/libs/selectbox/css/jquery.selectbox.css"/>
        <link type="text/css" rel="stylesheet" href="assets/libs/fancybox/css/jquery.fancybox.css"/>
        <link type="text/css" rel="stylesheet" href="assets/libs/fancybox/css/jquery.fancybox-buttons.css"/>
        <link type="text/css" rel="stylesheet" href="assets/libs/media-element/build/mediaelementplayer.min.css"/>
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
                                <li><a href="courses-detail" class="main-menu">Courses</a>
                                </li>
<!--                                <li><a href="#" class="main-menu">gallery</a>
                                </li>-->
                                <li><a href="aboutus-us" class="main-menu">About Us</a>
                                </li>
<!--                                <li><a href="#" class="main-menu">News</a>
                                </li>-->
                                <li class="active"><a href="contact" class="main-menu">Contact</a>
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
                                                <div class="page-title-wrapper">.page-title-content<h2 class="captions">Contact</h2>
                                                    <ol class="breadcrumb">
                                                        <li><a href="index.html">Home</a></li>
                                                        <li class="active"><a href="#">Contact</a></li>
                                                    </ol>
                                                </div>
                                            </div>
                                        </div>-->
<!--                        <div class="section nav-subscribe">
                            <div class="container">
                                <div class="nav-subscribe-wrapper">
                                    <div class="nav-subscribe-left"><p class="subscribe-text">Subscribe <b class="focus">Edugate</b> to learn new creative skill</p></div>
                                    <div class="nav-subscribe-right">
                                        <button class="btn btn-green btn-bold"><span>SUBSCRIBE NOW</span></button>
                                    </div>
                                </div>
                            </div>
                        </div>-->
                        <div class="section section-padding contact-main">
                            <div class="container">
                                <div class="contact-main-wrapper">
                                    <c:forEach items="${details}" var="details">
                                    <div class="row contact-method">
                                        <div class="col-md-4">
                                            <div class="method-item"><i class="fa fa-map-marker"></i>

                                                <p class="sub">COME TO</p>

                                                <div class="detail"><p>${details.address}</p>

                                                    <p></p></div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="method-item"><i class="fa fa-phone"></i>

                                                <p class="sub">CALL TO</p>

                                                <div class="detail"><p>Local: ${details.phoneNo}</p>

                                                    <p>Mobile: ${details.mobileNo}</p></div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="method-item"><i class="fa fa-envelope"></i>

                                                <p class="sub">CONNECT TO</p>

                                                <div class="detail"><p>${details.emailId1}</p>

                                                    <p>${details.emailId2}</p></div>
                                            </div>
                                        </div>
                                    </div>
                                    </c:forEach>
                                    <form class="bg-w-form contact-form">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group"><label class="control-label form-label">NAME <span class="highlight">*</span></label><input type="text" placeholder="" class="form-control form-input"/><!--label.control-label.form-label.warning-label(for="") Warning for the above !--></div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group"><label class="control-label form-label">EMAIL <span class="highlight">*</span></label><input type="text" placeholder="" class="form-control form-input"/><!--label.control-label.form-label.warning-label(for="")--></div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group"><label class="control-label form-label">PURPOSE</label><select class="form-control form-input selectbox">
                                                        <option value="">Please Select</option>
                                                        <option value="">Enquiry</option>
                                                        <option value="">Feedback</option>
                                                        <option value="">Another</option>
                                                    </select><!--label.control-label.form-label.warning-label(for="", hidden)--></div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group"><label class="control-label form-label">SUBJECT</label><input type="text" placeholder="" class="form-control form-input"/><!--label.control-label.form-label.warning-label(for="", hidden)--></div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="contact-question form-group"><label class="control-label form-label">HOW CAN WE HELP? <span class="highlight">*</span></label><textarea class="form-control form-input"></textarea></div>
                                            </div>
                                        </div>
                                        <div class="contact-submit">
                                            <button type="submit" class="btn btn-contact btn-green"><span>SUBMIT CONTACT</span></button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div id="map" class="section contact-map"></div>
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
        <!-- LOADING SCRIPTS FOR PAGE-->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAu6tm60TzeUo9rWpLnrQ7mrFn4JPMVje4&amp;amp;sensor=false"></script>
        <script src="assets/js/pages/contact.js"></script>
    </body>

    <!-- Mirrored from swlabs.co/edugate/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 23 Dec 2016 05:52:29 GMT -->
</html>