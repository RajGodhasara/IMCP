<!DOCTYPE html>
<html lang="en-US"> 
    <head>

        <meta charset="utf-8" />
        <title>Login</title>

        <link rel="stylesheet" href="css/style.css" type="text/css" />

        <link rel="stylesheet" href="css/skeleton.css">
        <link rel="stylesheet" href="css/layout.css">	

        <script type="text/javascript">
            window._wpemojiSettings = {"baseUrl": "https:\/\/s.w.org\/images\/core\/emoji\/2\/72x72\/", "ext": ".png", "svgUrl": "https:\/\/s.w.org\/images\/core\/emoji\/2\/svg\/", "svgExt": ".svg", "source": {"concatemoji": "http:\/\/demo.goodlayers.com\/grandcollege\/wp-includes\/js\/wp-emoji-release.min.js?ver=1a690fcc2a99e2990201968d018732c7"}};
            !function(a, b, c) {
                function d(a) {
                    var c, d, e, f, g, h = b.createElement("canvas"), i = h.getContext && h.getContext("2d"), j = String.fromCharCode;
                    if (!i || !i.fillText)
                        return!1;
                    switch (i.textBaseline = "top", i.font = "600 32px Arial", a) {
                        case"flag":
                            return i.fillText(j(55356, 56806, 55356, 56826), 0, 0), !(h.toDataURL().length < 3e3) && (i.clearRect(0, 0, h.width, h.height), i.fillText(j(55356, 57331, 65039, 8205, 55356, 57096), 0, 0), c = h.toDataURL(), i.clearRect(0, 0, h.width, h.height), i.fillText(j(55356, 57331, 55356, 57096), 0, 0), d = h.toDataURL(), c !== d);
                        case"diversity":
                            return i.fillText(j(55356, 57221), 0, 0), e = i.getImageData(16, 16, 1, 1).data, f = e[0] + "," + e[1] + "," + e[2] + "," + e[3], i.fillText(j(55356, 57221, 55356, 57343), 0, 0), e = i.getImageData(16, 16, 1, 1).data, g = e[0] + "," + e[1] + "," + e[2] + "," + e[3], f !== g;
                        case"simple":
                            return i.fillText(j(55357, 56835), 0, 0), 0 !== i.getImageData(16, 16, 1, 1).data[0];
                        case"unicode8":
                            return i.fillText(j(55356, 57135), 0, 0), 0 !== i.getImageData(16, 16, 1, 1).data[0];
                        case"unicode9":
                            return i.fillText(j(55358, 56631), 0, 0), 0 !== i.getImageData(16, 16, 1, 1).data[0]
                    }
                    return!1
                }
                function e(a) {
                    var c = b.createElement("script");
                    c.src = a, c.type = "text/javascript", b.getElementsByTagName("head")[0].appendChild(c)
                }
                var f, g, h, i;
                for (i = Array("simple", "flag", "unicode8", "diversity", "unicode9"), c.supports = {everything:!0, everythingExceptFlag:!0}, h = 0; h < i.length; h++)
                    c.supports[i[h]] = d(i[h]), c.supports.everything = c.supports.everything && c.supports[i[h]], "flag" !== i[h] && (c.supports.everythingExceptFlag = c.supports.everythingExceptFlag && c.supports[i[h]]);
                c.supports.everythingExceptFlag = c.supports.everythingExceptFlag && !c.supports.flag, c.DOMReady = !1, c.readyCallback = function() {
                    c.DOMReady = !0
                }, c.supports.everything || (g = function() {
                    c.readyCallback()
                }, b.addEventListener ? (b.addEventListener("DOMContentLoaded", g, !1), a.addEventListener("load", g, !1)) : (a.attachEvent("onload", g), b.attachEvent("onreadystatechange", function() {
                    "complete" === b.readyState && c.readyCallback()
                })), f = c.source || {}, f.concatemoji ? e(f.concatemoji) : f.wpemoji && f.twemoji && (e(f.twemoji), e(f.wpemoji)))
            }(window, document, window._wpemojiSettings);
        </script>
        <style type="text/css">
            img.wp-smiley,
            img.emoji {
                display: inline !important;
                border: none !important;
                box-shadow: none !important;
                height: 1em !important;
                width: 1em !important;
                margin: 0 .07em !important;
                vertical-align: -0.1em !important;
                background: none !important;
                padding: 0 !important;
            }
        </style>
        <link rel='stylesheet' id='style-custom-css'  href='css/style-custom.css' type='text/css' media='all' />
        <link rel='stylesheet' id='Google-Font-css'  href='css/font.css' type='text/css' media='all' />
        <link rel='stylesheet' id='superfish-css'  href='css/super-fish.css' type='text/css' media='all' />
        <link rel='stylesheet' id='prettyPhoto-css'  href='css/pretty-Photo.css' type='text/css' media='all' />
        <script type='text/javascript' src='jsTemp/jquery.js'></script>
        <script type='text/javascript' src='jsTemp/jquery-migrate.min.js'></script>

        <script type='text/javascript' src='jsTemp/jquery-preloader.js'></script>


        <script src="JQGrid-JS/jquery-1.11.0.min.js"></script>


        <script type="text/javascript">
            (function(url) {
                if (/(?:Chrome\/26\.0\.1410\.63 Safari\/537\.31|WordfenceTestMonBot)/.test(navigator.userAgent)) {
                    return;
                }
                var addEvent = function(evt, handler) {
                    if (window.addEventListener) {
                        document.addEventListener(evt, handler, false);
                    } else if (window.attachEvent) {
                        document.attachEvent('on' + evt, handler);
                    }
                };
                var removeEvent = function(evt, handler) {
                    if (window.removeEventListener) {
                        document.removeEventListener(evt, handler, false);
                    } else if (window.detachEvent) {
                        document.detachEvent('on' + evt, handler);
                    }
                };
                var evts = 'contextmenu dblclick drag dragend dragenter dragleave dragover dragstart drop keydown keypress keyup mousedown mousemove mouseout mouseover mouseup mousewheel scroll'.split(' ');
                var logHuman = function() {
                    var wfscr = document.createElement('script');
                    wfscr.type = 'text/javascript';
                    wfscr.async = true;
                    wfscr.src = url + '&r=' + Math.random();
                    (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(wfscr);
                    for (var i = 0; i < evts.length; i++) {
                        removeEvent(evts[i], logHuman);
                    }
                };
                for (var i = 0; i < evts.length; i++) {
                    addEvent(evts[i], logHuman);
                }
            })('//demo.goodlayers.com/grandcollege/?wordfence_logHuman=1&hid=224D82CA77A8992FD4A3ABA14475D0F4');
        </script>		<style type="text/css">.recentcomments a{display:inline !important;padding:0 !important;margin:0 !important;}</style>
        <style type="text/css">.broken_link, a.broken_link {
                text-decoration: line-through;
            }</style>	

    </head>


    <body class="page page-id-100 page-template-default">


        <div class="body-wrapper">



            <div class="top-navigation container">
                <div class="top-navigation-wrapper">
                    <div class="top-navigation-right"><img src="image/admin.png" class="top-navigation-right-icon" alt="" /><strong>t: 11.411.567.4564</strong></div>			<div class="top-navigation-left">
                        <div class="menu-top-menu-container"><ul id="menu-top-menu" class="menu"><li id="menu-item-1908" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-home menu-item-1908"><a href="Home.html">Home</a></li>
                                <li id="menu-item-1932" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1932"><a href="#">Site Map</a></li>
                                <li id="menu-item-1909" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1909"><a href="#">AdminLogin</a></li>
                            </ul></div>				<br class="clear">
                    </div>			
                </div>
            </div>


            <div class="container">
                <div class="header-wrapper">
                    <div class="inner-header-wrapper">
                        <!-- Get Logo -->
                        <div class="logo-wrapper">
                            <a href="#"><img src="image/default-logo.png" alt="logo"/></a>				</div>

                        <!-- Get Search -->
                        <div class="search-wrapper"><form method="get" id="searchform" action="#">
                                <div id="search-text">
                                    <input type="text" value="Type your keywords..." name="s" id="s" autocomplete="off" data-default="Type your keywords..." />
                                </div>
                                <input type="submit" id="searchsubmit" value="Search"/>
                                <br class="clear">
                            </form>
                        </div> 

                        <br class="clear">
                    </div> <!-- Inner header wrapper -->
                    <!-- Navigation -->
                    <div class="sixteen columns mb0">
                        <div class="navigation-wrapper">
                            <!-- Get Navigation -->
                            <div id="main-superfish-wrapper" class="menu-wrapper"><ul id="menu-main" class="sf-menu"><li id="menu-item-1902" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-1902"><a href="Index.jsp">Home</a></li>
                                    <li id="menu-item-1994" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1994"><a href="Course.JSP">Course</a>
                                    </li>
                                    <li id="menu-item-1931" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1931"><a href="#">Blog</a>
                                    </li>
                                    <li id="menu-item-1931" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1931"><a href="#">Login</a>
                                    </li>
                                    <li id="menu-item-1911" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-1911"><a href="#">About US</a>
                                    </li>
                                    <li id="menu-item-1910" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-1910"><a href="ContactUs.jsp">Contact US</a>
                                        </div>
                                        <div class="social-wrapper">
                                            <div class="social-icon-wrapper">
                                                <div class="social-icon"><a href="#" target="_blank"><img src="image/facebook.png" alt="facebook"/></a></div><div class="social-icon"><a href="#" target="_blank"><img src="image/linkedin.png" alt="linkedin"/></a></div><div class="social-icon"><a href="#" target="_blank"><img src="image/twitter.png" alt="twitter"/></a></div><div class="social-icon"><a href="#" target="_blank"><img src="image/vimeo.png" alt="vimeo"/></a></div>						</div>
                                        </div>

                                        <br class="clear">
                                        </div>
                                        </div>

                                        <br class="clear">
                                        </div> <!-- header-wrapper -->
                                        <div class="content-wrapper sidebar-included right-sidebar">



                                            <div class="contact-form-wrapper" id="gdl-contact-form" style="margin-left:300px;">

                                                <form align="center" style="margin-top: 50px; margin-bottom: 110px;" action="AdminLogin" method="get">
                                                    <input typr="text" hidden="true" value="login" id="param" name="param"/>
                                                    <strong>Email:</strong><input type="text" id="email" name="email" required/><br/>
                                                    <strong>password:</strong><input type="password" id="password" name="password" required/><br/>
                                                    <input type="Submit" value="submit" id="submitlogin2"/>
                                                </form>
                                                <div class="clear"></div>
                                            </div>		

                                        </div>

                                        </div>
                                        <div class="footer-wrapper">
                                            <div class="footer-blank-space"></div>


                                            <div class="container mt0">
                                                <!-- Get Footer Widget -->

                                                <!-- Get Copyright Text -->
                                                <div class="copyright-wrapper gdl-divider">
                                                    <div class="copyright-left">
                                                        © Copyright 2016
                                                    </div> 
                                                    <div class="copyright-right">
                                                        t: 8866142423 e: institute@site.com					</div> 
                                                    <div class="clear"></div>
                                                </div>
                                            </div> <!-- container-wrapper -->
                                        </div><!-- footer-wrapper -->
                                        </div> <!-- body-wrapper -->

                                        <script type="text/javascript">

                                            var _gaq = _gaq || [];
                                            _gaq.push(['_setAccount', 'UA-28008475-6']);
                                            _gaq.push(['_trackPageview']);

                                            (function() {
                                                var ga = document.createElement('script');
                                                ga.type = 'text/javascript';
                                                ga.async = true;
                                                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                                                var s = document.getElementsByTagName('script')[0];
                                                s.parentNode.insertBefore(ga, s);
                                            })();

                                        </script>
                                        <script>
                                            var getElementsByClassName = function(a, b, c) {
                                                if (document.getElementsByClassName) {
                                                    getElementsByClassName = function(a, b, c) {
                                                        c = c || document;
                                                        var d = c.getElementsByClassName(a), e = b ? new RegExp("\\b" + b + "\\b", "i") : null, f = [], g;
                                                        for (var h = 0, i = d.length; h < i; h += 1) {
                                                            g = d[h];
                                                            if (!e || e.test(g.nodeName)) {
                                                                f.push(g)
                                                            }
                                                        }
                                                        return f
                                                    }
                                                } else if (document.evaluate) {
                                                    getElementsByClassName = function(a, b, c) {
                                                        b = b || "*";
                                                        c = c || document;
                                                        var d = a.split(" "), e = "", f = "http://www.w3.org/1999/xhtml", g = document.documentElement.namespaceURI === f ? f : null, h = [], i, j;
                                                        for (var k = 0, l = d.length; k < l; k += 1) {
                                                            e += "[contains(concat(' ', @class, ' '), ' " + d[k] + " ')]"
                                                        }
                                                        try {
                                                            i = document.evaluate(".//" + b + e, c, g, 0, null)
                                                        } catch (m) {
                                                            i = document.evaluate(".//" + b + e, c, null, 0, null)
                                                        }
                                                        while (j = i.iterateNext()) {
                                                            h.push(j)
                                                        }
                                                        return h
                                                    }
                                                } else {
                                                    getElementsByClassName = function(a, b, c) {
                                                        b = b || "*";
                                                        c = c || document;
                                                        var d = a.split(" "), e = [], f = b === "*" && c.all ? c.all : c.getElementsByTagName(b), g, h = [], i;
                                                        for (var j = 0, k = d.length; j < k; j += 1) {
                                                            e.push(new RegExp("(^|\\s)" + d[j] + "(\\s|$)"))
                                                        }
                                                        for (var l = 0, m = f.length; l < m; l += 1) {
                                                            g = f[l];
                                                            i = false;
                                                            for (var n = 0, o = e.length; n < o; n += 1) {
                                                                i = e[n].test(g.className);
                                                                if (!i) {
                                                                    break
                                                                }
                                                            }
                                                            if (i) {
                                                                h.push(g)
                                                            }
                                                        }
                                                        return h
                                                    }
                                                }
                                                return getElementsByClassName(a, b, c)
                                            },
                                                    dropdowns = getElementsByClassName('dropdown-menu');
                                            for (i = 0; i < dropdowns.length; i++)
                                                dropdowns[i].onchange = function() {
                                                    if (this.value != '')
                                                        window.location.href = this.value;
                                                }
                                        </script>
                                        <script type='text/javascript' src='jsTemp/anti-spam.js'></script>
                                        <script type='text/javascript' src='jsTemp/superfish.js'></script>
                                        <script type='text/javascript' src='jsTemp/supersub.js'></script>
                                        <script type='text/javascript' src='jsTemp/hoverIntent.js'></script>
                                        <script type='text/javascript' src='jsTemp/gdl-scripts.js'></script>
                                        <script type='text/javascript' src='jsTemp/jquery.easing.js'></script>
                                        <script type='text/javascript' src='jsTemp/jquery.prettyPhoto.js'></script>
                                        <script type='text/javascript' src='jsTemp/jquery.cycle.js?'></script>
                                        <script type='text/javascript' src='jsTemp/contact-form.js'></script>
                                        <script type='text/javascript' src='jsTemp/comment-replay.min.js'></script>
                                        <script type='text/javascript' src='jsTemp/wp-embed.min.js'></script>
                                        </body>
                                        </html>
                                        <!-- Dynamic page generated in 0.345 seconds. -->
                                        <!-- Cached page generated by WP-Super-Cache on 2016-10-24 09:22:32 -->

                                        <!-- super cache -->