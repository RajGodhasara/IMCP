<%-- 
    Document   : Gallery
    Created on : Mar 26, 2017, 3:40:59 PM
    Author     : GOPIRAJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from swlabs.co/edugate/gallery-3column.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 23 Dec 2016 05:51:29 GMT -->
    <head><title>Edugate | Gallery 3 column</title>
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
                                <li><a href="#" class="main-menu">gallery</a>
                                </li>
                                <li><a href="aboutus-us" class="main-menu">About Us</a>
                                </li>
                                <li><a href="#" class="main-menu">News</a>
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

                        <div class="section section-padding gallery-page gallery-3column">
                            <div class="container">
                                <div class="gallery-nav">
                                    <ul id="filters" class="nav nav-tabs edugate-tabs button-group filters-button-group">
                                        <li data-filter="*" data-category="all" class="tab active">
                                            <div class="text">all</div>
                                        </li>
                                        <li data-filter=".campus" data-category="campus" class="tab">
                                            <div class="text">campus</div>
                                        </li>
                                        <li data-filter=".education" data-category="education" class="tab">
                                            <div class="text">education</div>
                                        </li>
                                        <li data-filter=".building" data-category="building" class="tab">
                                            <div class="text">building</div>
                                        </li>
                                        <li data-filter=".teacher" data-category="teacher" class="tab">
                                            <div class="text">teacher</div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="grid">
                                    <div data-category="campus" class="grid-item campus building"><a href="courses-detail.html" class="link"><span class="content"><span class="content-title">edugate</span><span class="content-edu"><i class="icons fa fa-file-text"></i><span>Photoghaphy Master</span></span></span><img src="assets/images/gallery/gallery-20.jpg" alt=""/></a></div>
                                    <div data-category="building" class="grid-item building teacher"><a href="courses-detail.html" class="link"><span class="content"><span class="content-title">edugate</span><span class="content-edu"><i class="icons fa fa-file-text"></i><span>Photoghaphy Master</span></span></span><img src="assets/images/gallery/gallery-13.jpg" alt=""/></a></div>
                                    <div data-category="campus" class="grid-item campus education"><a href="courses-detail.html" class="link"><span class="content"><span class="content-title">edugate</span><span class="content-edu"><i class="icons fa fa-file-text"></i><span>Photoghaphy Master</span></span></span><img src="assets/images/gallery/gallery-17.jpg" alt=""/></a></div>
                                    <div data-category="education" class="grid-item education building teacher"><a href="courses-detail.html" class="link"><span class="content"><span class="content-title">edugate</span><span class="content-edu"><i class="icons fa fa-file-text"></i><span>Photoghaphy Master</span></span></span><img src="assets/images/gallery/gallery-11.jpg" alt=""/></a></div>
                                    <div data-category="teacher" class="grid-item teacher building"><a href="courses-detail.html" class="link"><span class="content"><span class="content-title">edugate</span><span class="content-edu"><i class="icons fa fa-file-text"></i><span>Photoghaphy Master</span></span></span><img src="assets/images/gallery/gallery-25.jpg" alt=""/></a></div>
                                    <div data-category="teacher" class="grid-item teacher campus"><a href="courses-detail.html" class="link"><span class="content"><span class="content-title">edugate</span><span class="content-edu"><i class="icons fa fa-file-text"></i><span>Photoghaphy Master</span></span></span><img src="assets/images/gallery/gallery-19.jpg" alt=""/></a></div>
                                    <div data-category="education" class="grid-item education teacher education"><a href="courses-detail.html" class="link"><span class="content"><span class="content-title">edugate</span><span class="content-edu"><i class="icons fa fa-file-text"></i><span>Photoghaphy Master</span></span></span><img src="assets/images/gallery/gallery-14.jpg" alt=""/></a></div>
                                    <div data-category="campus" class="grid-item campus building"><a href="courses-detail.html" class="link"><span class="content"><span class="content-title">edugate</span><span class="content-edu"><i class="icons fa fa-file-text"></i><span>Photoghaphy Master</span></span></span><img src="assets/images/gallery/gallery-23.jpg" alt=""/></a></div>
                                    <div data-category="building" class="grid-item building education teacher"><a href="courses-detail.html" class="link"><span class="content"><span class="content-title">edugate</span><span class="content-edu"><i class="icons fa fa-file-text"></i><span>Photoghaphy Master</span></span></span><img src="assets/images/gallery/gallery-15.jpg" alt=""/></a></div>
                                </div>
                                <div class="load-more">
                                    <button class="btn btn-green"><span>load more</span></button>
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

                                                <c:forEach items="${link}" var="link">
                                                    <div class="socials"><a href="${link.facebook}" class="facebook"><i class="fa fa-facebook"></i></a><a href="${link.gmail}" class="google"><i class="fa fa-google-plus"></i></a><a href="${link.twitter}" class="twitter"><i class="fa fa-twitter"></i></a></div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="hyperlink">
                            <div class="pull-left hyper-left">
                                <ul class="list-inline">
                                    <li><a href="index">HOME</a></li>
                                    <li><a href="courses-detail">COURSES</a></li>
                                    <li><a href="about-us">ABOUT</a></li>
                                    <li><a href="news.html">NEWS</a></li>
                                    <li><a href="contact">CONTACT</a></li>
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
            <script src="assets/js/pages/gallery.js"></script>
            <script src="assets/libs/isotope/isotope.pkgd.min.js"></script>
    </body>

    <!-- Mirrored from swlabs.co/edugate/gallery-3column.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 23 Dec 2016 05:51:42 GMT -->
</html>
