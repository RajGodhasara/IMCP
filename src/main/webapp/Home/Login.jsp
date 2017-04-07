<%-- 
    Document   : Login
    Created on : Dec 23, 2016, 3:12:29 PM
    Author     : GOPIRAJ
--%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from swlabs.co/edugate/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 23 Dec 2016 05:49:35 GMT -->
    <head><title>Edugate | Login</title>
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
        <header><!-- not include--></header>


<!--modal-->
<div id="pwdModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h1 class="text-center">What's My Password?</h1>
      </div>
      <div class="modal-body">
          <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="text-center">
                          
                          <p>If you have forgotten your password you can reset it here.</p>
                            <div class="panel-body">
                                <form method="POST" action="forgotPassword">
                                <fieldset>
                                    <div class="form-group">
                                        <input class="form-control input-lg" placeholder="E-mail Address" name="email" type="email">
                                    </div>
                                    <input class="btn-lg btn-primary btn-block" value="Send My Password" type="submit">
                                </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
      </div>
      <div class="modal-footer">
          <div class="col-md-12">
          <button class="btn-primary" data-dismiss="modal" aria-hidden="true">Cancel</button>
		  </div>	
      </div>
  </div>
  </div>
</div>
        <!-- WRAPPER-->
        <div id="wrapper-content"><!-- PAGE WRAPPER-->
            <div id="page-wrapper"><!-- MAIN CONTENT-->
                <div class="main-content"><!-- CONTENT-->
                    <div class="content">
                        <div class="page-login rlp">
                            <div class="container">
                                <div class="login-wrapper rlp-wrapper">
                                    <div class="login-table rlp-table"><a href="index.html"><img src="data:image/jpeg;base64,${logo}" alt="" class="login"/></a>

                                        <div class="login-title rlp-title">User Login to Your Account!</div>
                                        <form:form method="GET" commandName="command" action="authentication">
                                            <div class="login-form bg-w-form rlp-form">
                                                <div class="row">
                                                    <div class="col-md-12"><label for="regemail" class="control-label form-label">email <span class="highlight">*</span></label><form:input path="Email" id="regemail" cssClass="form-control form-input" required="required"/><!--p.help-block Warning !--></div>
                                                    <div class="col-md-12"><label for="regpassword" class="control-label form-label">password <span class="highlight">*</span></label><form:password path="Pass" id="regpassword" cssClass="form-control form-input" required="required"/><!-- p.help-block Warning !--></div>
                                                </div>
                                            </div>
                                            <div class="login-submit">
                                                <button type="submit" class="btn btn-login btn-green"><span>sign in</span></button>
                                                
                                            </div>
                                                
                                        </form:form>
                                        <a href="#" data-target="#pwdModal" data-toggle="modal">Forgot password?</a>
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
        <footer></footer>
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
        <!-- LOADING SCRIPTS FOR PAGE--></body>

    <!-- Mirrored from swlabs.co/edugate/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 23 Dec 2016 05:49:35 GMT -->
</html>