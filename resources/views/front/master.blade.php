<!DOCTYPE html>

<html lang="en">
<?php $SiteSettings = DB::table('sitesettings')->get(); ?>
@foreach ($SiteSettings as $Settings)
<head>

        <!-- ==============================================
        Basic Page Needs
        =============================================== -->
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!--[if IE]><meta http-equiv="x-ua-compatible" content="IE=9" /><![endif]-->

        <title>Designekta Studios || <?php echo $page_title; ?></title>


        <meta name="google-site-verification" content="e8c2n1NdxeVcgx7pLdZ3mrUO4aZq8o7_UrJbdtGL62s" />
        <!-- SEO META -->
        <meta name="description" content="Designekta studios is a Custom Web Design firm that deals in Web Development and Graphics Design, E-commerce Solutions, Branding and Web Hosting" />
        <meta name="keywords" content="Designekta studios, Custom Web Design, Designekta, Graphics Design, Branding, Web Hosting, Domain Registration " />
        <meta name="author" content="Designekta Studios" />
        <link rel="canonical" href="{{url('/')}}"/>
        {{-- OG --}}
     {{-- OG --}}
     <meta property="og:description" content="<?php echo $page_title; ?> - Designekta Studios - Custom Web Design ,Web Development, Graphics Design, Web Hosting, Domain Registration">
     <meta property="og:image" content="{{url('/')}}/uploads/DesignektaStudios.png" />
     <meta property="og:image:secure_url" content="{{url('/')}}/uploads/DesignektaStudios.png">
     <meta property="fb:page_id" content="1359118687432239" />
     <meta property="og:title" content="<?php echo $page_title; ?> - Designekta Studios - Custom Web Development Services, Custom Web Design" />
     <meta property="og:url" content="https://designekta.com" />
     <meta property="og:type" content="website" />
     <meta property="og:site_name" content="Designekta Studios" />
     {{-- OG --}}
     {{-- Twitter --}}
     <meta name="twitter:site" content="@designekta254">
     <meta name="twitter:creator" content="@designekta254">
     <meta name="twitter:card" content="summary">
     <meta name="twitter:title" content="Designekta Studios | Number 1 Custom Web Designer">
     <meta name="twitter:description" content="Designekta Studios - Custom Web Design ,Web Development, Graphics Design, Web Hosting">
     <meta name="twitter:image" content="{{url('/')}}/uploads/DesignektaStudios.png">
     {{-- Twitter --}}
        {{-- OG --}}
        <!-- SEO META -->
        <?php $Sitesettings = DB::table('sitesettings')->get(); ?>@foreach($Sitesettings as $Settings)

        @endforeach
        <!-- Place favicon.ico in the root directory -->
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <meta name="facebook-domain-verification" content="h92tx2f53zusy8921c6cmnwzo36q8m" />


        <!-- ==============================================
        Favicons
        =============================================== -->
        <link rel="apple-touch-icon" sizes="57x57" href="{{asset('fav/apple-icon-57x57.png')}}">
        <link rel="apple-touch-icon" sizes="60x60" href="{{asset('fav/apple-icon-60x60.png')}}">
        <link rel="apple-touch-icon" sizes="72x72" href="{{asset('fav/apple-icon-72x72.png')}}">
        <link rel="apple-touch-icon" sizes="76x76" href="{{asset('fav/apple-icon-76x76.png')}}">
        <link rel="apple-touch-icon" sizes="114x114" href="{{asset('fav/apple-icon-114x114.png')}}">
        <link rel="apple-touch-icon" sizes="120x120" href="{{asset('fav/apple-icon-120x120.png')}}">
        <link rel="apple-touch-icon" sizes="144x144" href="{{asset('fav/apple-icon-144x144.png')}}">
        <link rel="apple-touch-icon" sizes="152x152" href="{{asset('fav/apple-icon-152x152.png')}}">
        <link rel="apple-touch-icon" sizes="180x180" href="{{asset('fav/apple-icon-180x180.png')}}">
        <link rel="icon" type="image/png" sizes="192x192"  href="{{asset('fav/android-icon-192x192.png')}}">
        <link rel="icon" type="image/png" sizes="32x32" href="{{asset('fav/favicon-32x32.png')}}">
        <link rel="icon" type="image/png" sizes="96x96" href="{{asset('fav/favicon-96x96.png')}}">
        <link rel="icon" type="image/png" sizes="16x16" href="{{asset('fav/favicon-16x16.png')}}">
        <link rel="manifest" href="{{asset('fav/manifest.json')}}">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="msapplication-TileImage" content="{{asset('fav/ms-icon-144x144.png')}}">
        <meta name="theme-color" content="#ffffff">

        <!-- ==============================================
        Vendor Stylesheet
        =============================================== -->
        <link rel="stylesheet" href="{{asset('theme/assets/css/vendor/bootstrap.min.css')}}">
        <link rel="stylesheet" href="{{asset('theme/assets/css/vendor/slider.min.css')}}">
        <link rel="stylesheet" href="{{asset('theme/assets/css/main.css')}}">
        <link rel="stylesheet" href="{{asset('theme/assets/css/vendor/icons.min.css')}}">
        <link rel="stylesheet" href="{{asset('theme/assets/css/vendor/animation.min.css')}}">
        <link rel="stylesheet" href="{{asset('theme/assets/css/vendor/gallery.min.css')}}">
        {{-- <link rel="stylesheet" href="{{asset('theme/assets/css/vendor/cookie-notice.min.css')}}"> --}}

        <!-- ==============================================
        Custom Stylesheet
        =============================================== -->
        <link rel="stylesheet" href="{{asset('theme/assets/css/default.css')}}">
        <link rel="stylesheet" href="{{asset('theme/assets/css/theme-indigo.css')}}">


          <!--Start of Tawk.to Script-->
          <script type="text/javascript">
            var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
            (function(){
            var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
            s1.async=true;
            s1.src='https://embed.tawk.to/5c0cb3f167f72462651fb1db/default';
            s1.charset='UTF-8';
            s1.setAttribute('crossorigin','*');
            s0.parentNode.insertBefore(s1,s0);
            })();
            </script>
            <!--End of Tawk.to Script-->

            <!-- Global site tag (gtag.js) - Google Analytics -->
            <script async src="https://www.googletagmanager.com/gtag/js?id=UA-150674747-1"></script>
            <script>
              window.dataLayer = window.dataLayer || [];
              function gtag(){dataLayer.push(arguments);}
              gtag('js', new Date());

              gtag('config', 'UA-150674747-1');
            </script>


        <!-- ==============================================
        Theme Settings
        =============================================== -->
        <style>
            :root {
                --header-bg-color: #111111;
                --nav-item-color: #f5f5f5;
                --top-nav-item-color: #f5f5f5;
                --hero-bg-color: #000000;

                --section-1-bg-color: #e5e5e5;
                --section-2-bg-color: #111111;
                --section-3-bg-color: #e5e5e5;
                --section-4-bg-color: #111111;
                --section-5-bg-color: #e5e5e5;
                --section-6-bg-color: #111111;

                --footer-bg-color: #191919;
            }
        </style>

    </head>

    <body>

        <!-- Header -->
        <header id="header">

            <!-- Navbar -->
            <nav data-aos="zoom-out" data-aos-delay="800" class="navbar navbar-expand">
                <div class="container header">

                    <!-- Navbar Brand-->
                    <a class="navbar-brand" href="{{url('/')}}">
                        Designekta <i class="leverage-2-0">Studios</i>

                    </a>

                    <!-- Nav holder -->
                    <div class="ml-auto"></div>

                    <!-- Navbar Items -->
                    <ul class="navbar-nav items">
                        <li class="nav-item dropdown">
                            <a href="#slider" class="smooth-anchor nav-link">Home</a>

                        </li>
                        <li class="nav-item dropdown">
                            <a href="#skills" class="smooth-anchor  nav-link">About Us</a>

                        </li>
                        <li class="nav-item dropdown">
                            <a href="#services" class="smooth-anchor nav-link">Services</a>

                        </li>
                        <li class="nav-item dropdown">
                            <a href="#portfolio-grid" class="smooth-anchor nav-link">Portfolio</a>

                        </li>
                        <li class="nav-item dropdown">
                            <a href="#contact" class="smooth-anchor nav-link">Contact Us</a>

                        </li>

                    </ul>

                    <!-- Navbar Icons -->
                    <ul class="navbar-nav icons">
                        <!-- <li class="nav-item">
                            <a href="#" class="nav-link" data-toggle="modal" data-target="#search">
                                <i class="icon-magnifier"></i>
                            </a>
                        </li> -->
                        <li class="nav-item social">
                            <a href="{{$Settings->linkedin}}" class="nav-link"><i class="icon-social-linkedin"></i></a>
                        </li>
                        <li class="nav-item social">
                            <a href="{{$Settings->facebook}}" class="nav-link"><i class="icon-social-facebook"></i></a>
                        </li>
                        <li class="nav-item social">
                            <a href="{{$Settings->twitter}}" class="nav-link"><i class="icon-social-twitter"></i></a>
                        </li>
                        <li class="nav-item social">
                            <a href="{{$Settings->instagram}}" class="nav-link"><i class="icon-social-instagram"></i></a>
                        </li>
                    </ul>

                    <!-- Navbar Toggle -->
                    <ul class="navbar-nav toggle">
                        <li class="nav-item">
                            <a href="#" class="nav-link" data-toggle="modal" data-target="#menu">
                                <i class="icon-menu m-0"></i>
                            </a>
                        </li>
                    </ul>

                    <!-- Navbar Action -->
                    <ul class="navbar-nav action">
                        <li class="nav-item ml-3">
                            <a href="#contact" class="smooth-anchor btn ml-lg-auto primary-button"><i class="icon-speech"></i>Get Quote</a>
                        </li>
                    </ul>
                </div>
            </nav>

        </header>

        @yield('content')

        <!-- Footer -->
        <footer class="odd">

            <!-- Footer [links] -->
            <section id="footer" class="footer">
                <div class="container">
                    <div class="row items footer-widget">
                        <div class="col-12 col-lg-3 p-0">
                            <div class="row">
                                <div class="branding col-12 p-3 text-center text-lg-left item">
                                    <div class="brand">
                                        <a href="{{url('/')}}" class="logo">
                                            Designekta Studios.

                                        </a>
                                    </div>
                                    <p>Authentic and innovative.<br>Built to the smallest detail<br>with a focus on usability<br>and performance.</p>
                                    <ul class="navbar-nav social share-list mt-0 ml-auto">
                                        <li class="nav-item">
                                            <a href="https://www.instagram.com/designekta/" class="nav-link"><i class="icon-social-instagram ml-0"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="https://web.facebook.com/designekta" class="nav-link"><i class="icon-social-facebook"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="https://www.linkedin.com/company/designekta-studios" class="nav-link"><i class="icon-social-linkedin"></i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="https://twitter.com/designekta254" class="nav-link"><i class="icon-social-twitter"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-lg-9 p-0">
                            <div class="row">
                                <div class="col-12 col-lg-3 p-3 text-center text-lg-left item">
                                    <h4 class="title">Get in Touch</h4>
                                    <ul class="navbar-nav">
                                        <li class="nav-item">
                                            <a href="tel:{{$Settings->mobile}}" class="nav-link">
                                                <i class="icon-phone mr-2"></i>
                                                {{$Settings->mobile}}
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="mailto:{{$Settings->email}}" class="nav-link">
                                                <i class="icon-envelope mr-2"></i>
                                                {{$Settings->email}}
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link">
                                                <i class="icon-location-pin mr-2"></i>
                                                {{$Settings->location}}
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="{{url('/')}}#contact" class="mt-4 mr-auto ml-auto ml-lg-0 btn dark-button"><i class="icon-speech"></i>SEND A MESSAGE</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-12 col-lg-5 p-3 text-center text-lg-left item">
                                    <h4 class="title">Our Services</h4>
                                    <ul class="navbar-nav">
                                        <?php $Services = DB::table('services')->get(); ?>
                                        @foreach ($Services as $Services)
                                        <li class="nav-item">
                                            <a href="{{url('/')}}/service/{{$Services->slung}}" class="nav-link">{{$Services->title}}</a>
                                        </li>
                                        @endforeach


                                    </ul>
                                </div>
                                <div class="col-12 col-lg-4 p-3 text-center text-lg-left item">
                                    <h4 class="title">Important Links</h4>
                                    <a href="{{url('/')}}/privacy-policy" class="badge tag">Privacy Policy</a>
                                    <a href="{{url('/')}}/terms-and-conditions" class="badge tag">T & Cs</a>
                                    <a href="{{url('/')}}/copyright" class="badge tag">Copyright</a>
                                    <a href="{{url('/')}}/#skills" class="badge tag">About Us</a>
                                    {{-- <a href="" class="badge tag">Refund Policy</a> --}}
                                    <a href="{{url('/')}}/cancellation-policy" class="badge tag">Cancellation Policy</a>
                                    <a href="{{url('/')}}/knowledge-base" class="badge tag">Knowledge Base</a>

                                </div>
                            </div>
                            <div class="row" style="margin-top:80px;">
                                <script type="text/javascript" src="https://widget.clutch.co/static/js/widget.js"></script> <div class="clutch-widget" data-url="https://widget.clutch.co" data-widget-type="2" data-height="50" data-darkbg="1" data-clutchcompany-id="1564364"></div>
                            </div>
                        </div>
                    </div>
                </div>

            </section>

            <!-- Copyright -->
            <section id="copyright" class="p-3 copyright">
                <div class="container">
                    <div class="row">

                        <div class="col-12 col-md-12 p-3 text-center text-center">
                            <p>Copyright © 2021 <a href="https://designekta.com" target="_blank"> Designekta Enterprises Limited</a>  All Rights Reserved</p>
                        </div>
                    </div>
                </div>
            </section>

        </footer>

        <!-- #region Global ============================ -->



        <!-- Modal [responsive menu] -->
        <div id="menu" class="p-0 modal fade" role="dialog" aria-labelledby="menu" aria-hidden="true">
            <div class="modal-dialog modal-dialog-slideout" role="document">
                <div class="modal-content full">
                    <div class="modal-header" data-dismiss="modal">
                        Menu <i class="icon-close"></i>
                    </div>
                    <div class="menu modal-body">
                        <div class="row w-100">
                            <div class="items p-0 col-12 text-center">
                                <!-- Append [navbar] -->
                            </div>
                            <div class="contacts p-0 col-12 text-center">
                                <!-- Append [navbar] -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Scroll [to top] -->
        <div id="scroll-to-top" class="scroll-to-top">
            <a href="#header" class="smooth-anchor">
                <i class="icon-arrow-up"></i>
            </a>
        </div>

        <!-- ==============================================
        Google reCAPTCHA // Put your site key here
        =============================================== -->
        <script src="http://www.google.com/recaptcha/api.js?render=6Ldb6DEaAAAAANbQ7D9m1CKqc8e4MiV5yzd3kTWf"></script>

        <!-- ==============================================
        Vendor Scripts
        =============================================== -->
        <script src="{{asset('theme/assets/js/vendor/jquery.min.js')}}"></script>
        <script src="{{asset('theme/assets/js/vendor/jquery.easing.min.js')}}"></script>
        <script src="{{asset('theme/assets/js/vendor/jquery.inview.min.js')}}"></script>
        <script src="{{asset('theme/assets/js/vendor/popper.min.js')}}"></script>
        <script src="{{asset('theme/assets/js/vendor/bootstrap.min.js')}}"></script>
        <script src="{{asset('theme/assets/js/vendor/ponyfill.min.js')}}"></script>
        <script src="{{asset('theme/assets/js/vendor/slider.min.js')}}"></script>
        <script src="{{asset('theme/assets/js/vendor/animation.min.js')}}"></script>
        <script src="{{asset('theme/assets/js/vendor/progress-radial.min.js')}}"></script>
        <script src="{{asset('theme/assets/js/vendor/bricklayer.min.js')}}"></script>
        <script src="{{asset('theme/assets/js/vendor/gallery.min.js')}}"></script>
        <script src="{{asset('theme/assets/js/vendor/shuffle.min.js')}}"></script>
        <script src="{{asset('theme/assets/js/vendor/particles.min.js')}}"></script>
        <script src="{{asset('theme/assets/js/main.js')}}"></script>

        <!-- #endregion Global ========================= -->

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
        <script>
        $(function() {
            $('a[href*="#"]:not([href="#"])').click(function() {
            if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
                if (target.length) {
                $('html, body').animate({
                    scrollTop: target.offset().top
                }, 1000);
                return false;
                }
            }
            });
        });
        </script>

    </body>
@endforeach

<script type="text/javascript">

    // List of sentences
    var _CONTENT = [ " Custom Web Design ", "Graphic Design", "Web Application Development", "Support and Maintenance", "Domain Registration & Web Hosting", "E-commerce Solutions",  "SSL Certificates Installation"];

    // Current sentence being processed
    var _PART = 0;

    // Character number of the current sentence being processed
    var _PART_INDEX = 0;

    // Holds the handle returned from setInterval
    var _INTERVAL_VAL;

    // Element that holds the text
    var _ELEMENT = document.querySelector("#text");

    // Implements typing effect
    function Type() {
        var text =  _CONTENT[_PART].substring(0, _PART_INDEX + 1);
        _ELEMENT.innerHTML = text;
        _PART_INDEX++;

        // If full sentence has been displayed then start to delete the sentence after some time
        if(text === _CONTENT[_PART]) {
            clearInterval(_INTERVAL_VAL);
            setTimeout(function() {
                _INTERVAL_VAL = setInterval(Delete, 50);
            }, 1000);
        }
    }

    // Implements deleting effect
    function Delete() {
        var text =  _CONTENT[_PART].substring(0, _PART_INDEX - 1);
        _ELEMENT.innerHTML = text;
        _PART_INDEX--;

        // If sentence has been deleted then start to display the next sentence
        if(text === '') {
            clearInterval(_INTERVAL_VAL);

            // If last sentence then display the first one, else move to the next
            if(_PART == (_CONTENT.length - 1))
                _PART = 0;
            else
                _PART++;
            _PART_INDEX = 0;

            // Start to display the next sentence after some time
            setTimeout(function() {
                _INTERVAL_VAL = setInterval(Type, 100);
            }, 200);
        }
    }

    // Start the typing effect on load
    _INTERVAL_VAL = setInterval(Type, 100);

    </script>

    @include('front.schema')

</html>
