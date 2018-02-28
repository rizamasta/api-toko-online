<!DOCTYPE html>
<html lang="en">
    <!-- BEGIN HEAD -->
    <?php $includes = getcwd().'/public_assets/includes/';?>
    <head>
        <meta charset="utf-8"/>
        <title>4Hire</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport"/>
        <meta content="" name="description"/>
        <meta content="" name="4Hire"/>

        <!-- GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet" type="text/css">
        <!-- <link href="vendor/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/> -->
        <link href="<?php echo site_url('public_assets/assets/js/landingpage/vendor/simple-line-icons/simple-line-icons.min.css')?>" rel="stylesheet" type="text/css">
        <!-- <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/> -->
        <link href="<?php echo site_url('public_assets/assets/js/landingpage/vendor/bootstrap/css/bootstrap.min.css')?>" rel="stylesheet" type="text/css">

        <!-- PAGE LEVEL PLUGIN STYLES -->
        <!-- <link href="css/animate.css" rel="stylesheet"> -->
        <link href="<?php echo site_url('public_assets/assets/js/landingpage/css/animate.css')?>" rel="stylesheet" type="text/css">

        <!-- <link href="vendor/swiper/css/swiper.min.css" rel="stylesheet" type="text/css"/> -->
        <link href="<?php echo site_url('public_assets/assets/js/landingpage/vendor/swiper/css/swiper.min.css')?>" rel="stylesheet" type="text/css">

        <!-- THEME STYLES -->
        <!-- <link href="css/layout.min.css" rel="stylesheet" type="text/css"/> -->
        <link href="<?php echo site_url('public_assets/assets/js/landingpage/css/layout.min.css')?>" rel="stylesheet" type="text/css">

        <link href="<?php echo site_url('public_assets/assets/js/landingpage/css/layout-custome.css')?>" rel="stylesheet" type="text/css">
        <?php echo (isset($loadCSS) ? $loadCSS : "");?>
        <!-- Favicon -->
    </head>
    <!-- END HEAD -->

    <!-- BODY -->
    <body id="body" data-spy="scroll" data-target=".header">
        <!--========== HEADER ==========-->
        <header class="header navbar-fixed-top">
            <!-- Navbar -->
            <nav class="navbar" role="navigation">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="menu-container js_nav-item">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="toggle-icon"></span>
                        </button>

                        <!-- Logo -->
                        <div class="logo">
                            <a class="logo-wrap" href="#body">
                                <img class="logo-img logo-img-main" src="<?php echo site_url('public_assets/img/landingpage/logo.png')?>" alt="4Hire Logo">
                                <img class="logo-img logo-img-active" src="<?php echo site_url('public_assets/img/landingpage/logo-dark.png')?>" alt="4Hire Logo">
                            </a>
                        </div>
                        <!-- End Logo -->
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <?php include($includes.'menu-landing.php')?>
                    <!-- End Navbar Collapse -->
                </div>
            </nav>
            <!-- Navbar -->
        </header>
        <!--========== END HEADER ==========-->

       <!--mybody-->
       <?php if (isset($body)) :
                      $moduleName = $this->router->fetch_module();
                      $controllerName = strtolower($this->router->fetch_class());
                      $view = $moduleName.'/'.$this->config->item('tbody').$controllerName.'/'.$body;
                      echo $this->load->view($view);
                    endif;
        ?>
        <!--========== END PAGE LAYOUT ==========-->

        <!--========== FOOTER ==========-->
        <footer class="footer">
                <!-- ngIf: FooterCtrl.footShouldShow() && !FooterCtrl.isCompanyOrJob() -->
                <div ng-if="FooterCtrl.footShouldShow() &amp;&amp; !FooterCtrl.isCompanyOrJob()" ng-class="{&#39;knack-footer&#39;: FooterCtrl.isKnack()}" class="navbar navbar-footer">
                    <div class="container footer-brand-small visible-xs visible-sm">
                        <div>
                          <img class="logo-4Hire-white navbar-footer-logo" src="<?php echo site_url('public_assets/img/landingpage/logo.png')?>" alt="4Hire Logo">
                        </div>
                        <br>
                        <p class="footer-tag">We transform the way candidates find jobs and companies hire talent.</p>
                        <!-- ngIf: !FooterCtrl.ScreenUtil.isMobile() -->
                        <kb-seo-kw ng-if="!FooterCtrl.ScreenUtil.isMobile()" class="hidden-xs hidden-sm">
                            <!-- ngRepeat: kw in SeoKwCtrl.forListing -->
                            <!-- ngIf: !SeoKwCtrl.shouldHide -->
                            <!-- end ngRepeat: kw in SeoKwCtrl.forListing -->
                            <!-- ngIf: !SeoKwCtrl.shouldHide -->
                            <!-- end ngRepeat: kw in SeoKwCtrl.forListing -->
                            <!-- ngIf: !SeoKwCtrl.shouldHide -->
                            <!-- end ngRepeat: kw in SeoKwCtrl.forListing -->
                            <!-- ngIf: !SeoKwCtrl.shouldHide -->
                            <!-- end ngRepeat: kw in SeoKwCtrl.forListing -->
                        </kb-seo-kw>
                        <!-- end ngIf: !FooterCtrl.ScreenUtil.isMobile() -->
                        <br>
                    </div>
                    <div ng-hide="FooterCtrl.is4Hireate() || FooterCtrl.isPuptJobFair()" class="container footer-body">
                        <div class="footer-brand-group hidden-xs hidden-sm">
                            <div>
                                <img class="logo-4Hire-white navbar-footer-logo" src="<?php echo site_url('public_assets/img/landingpage/logo.png')?>" alt="4Hire Logo">
                            </div>
                            <br>
                            <p class="footer-tag">We transform the way candidates find jobs and companies hire talent.</p>
                            <!-- ngIf: !FooterCtrl.ScreenUtil.isMobile() -->
                            <kb-seo-kw ng-if="!FooterCtrl.ScreenUtil.isMobile()" class="hidden-xs hidden-sm">
                                <!-- ngRepeat: kw in SeoKwCtrl.forListing -->
                                <!-- ngIf: !SeoKwCtrl.shouldHide -->
                                <!-- end ngRepeat: kw in SeoKwCtrl.forListing -->
                                <!-- ngIf: !SeoKwCtrl.shouldHide -->
                                <!-- end ngRepeat: kw in SeoKwCtrl.forListing -->
                                <!-- ngIf: !SeoKwCtrl.shouldHide -->
                                <!-- end ngRepeat: kw in SeoKwCtrl.forListing -->
                                <!-- ngIf: !SeoKwCtrl.shouldHide -->
                                <!-- end ngRepeat: kw in SeoKwCtrl.forListing -->
                            </kb-seo-kw>
                            <!-- end ngIf: !FooterCtrl.ScreenUtil.isMobile() -->
                        </div>
                        <div class="footer-navs"><strong class="text-uppercase footer-header hidden-md hidden-lg">4Hire</strong>
                            <ul class="list-unstyled">
                                <li class="navbar-footer-nav"><a href="">About</a></li>
                                <li class="navbar-footer-nav hidden-xs hidden-sm"><a href="">Careers</a></li>
                                <li class="navbar-footer-nav hidden-xs hidden-sm"><a href="">Internships</a></li>
                                <li class="navbar-footer-nav hidden-xs hidden-sm"><a href="">Press</a></li>
                                <li class="navbar-footer-nav hidden-xs hidden-sm"><a href="" target="_self">Blog</a></li>
                                <li class="navbar-footer-nav"><a href="">Contact</a></li>
                            </ul>
                        </div>

                        <div class="footer-navs footer-nav-second">
                          <strong class="text-uppercase footer-header hidden-md hidden-lg">Jobseeker</strong>
                          <strong class="text-uppercase footer-header hidden-xs hidden-sm">Candidate</strong>
                            <ul class="list-unstyled">
                                <li class="navbar-footer-nav"><a href="" target="_self">Job Board</a></li>
                                <li class="navbar-footer-nav"><a href="" target="_blank">Career Advice </a></li>
                                <li class="navbar-footer-nav hidden-md hidden-lg"><a href="">Jobseeker Help</a></li>
                                <li class="navbar-footer-nav hidden-xs hidden-sm"><a href="">Help for Jobseekers</a></li>
                                <li class="navbar-footer-nav hidden-xs hidden-sm"><a href="">Jobseekeer Guide</a></li>
                            </ul>
                        </div>
                        <div class="footer-navs">
                          <strong class="text-uppercase footer-header hidden-md hidden-lg">Employer</strong>
                          <strong class="text-uppercase footer-header hidden-xs hidden-sm">Company</strong>
                            <ul class="list-unstyled">
                                <li class="navbar-footer-nav hidden-xs hidden-sm"><a href="">Assessments</a></li>
                                <li class="navbar-footer-nav hidden-md hidden-lg"><a href="">Post a Job</a></li>
                                <li class="navbar-footer-nav"><a href="">Pricing</a></li>
                                <li class="navbar-footer-nav hidden-xs hidden-sm"><a href="">Powered by 4Hire</a></li>
                                <li class="navbar-footer-nav hidden-md hidden-lg"><a href="">Employer Help</a></li>
                                <li class="navbar-footer-nav hidden-xs hidden-sm"><a href="">Help for Employers</a></li>
                                <li class="navbar-footer-nav hidden-xs hidden-sm"><a href="">Resources for Recruiters</a></li>
                            </ul>
                        </div>
                        <!-- end ngIf: !FooterCtrl.security.currentUser || FooterCtrl.security.isRecruiter() -->
                        <div class="footer-navs hidden-xs hidden-sm">
                            <kb-popular>
                                <!-- ngIf: !GreatestHitsCtrl.shouldHide -->
                            </kb-popular>
                        </div>
                    </div>
                    <div class="container hidden-xs hidden-sm">
                        <div class="home-section-line-break"></div>
                        <div class="footer-mobile-buttons">
                          <a href=""><img id="android-play-badge" class="home-mobile-section-button-footer" src="<?php echo site_url('public_assets/img/landingpage/logo-company/googleplay.png')?>"></a>
                          <a href=""><img id="ios-store-badge" class="home-mobile-section-button-footer" src="<?php echo site_url('public_assets/img/landingpage/logo-company/appstore.png')?>"></a>
                            <div class="footer-ssn-icon-group">
                              <a href="" target="_blank" class="footer-ssn-icon"><i class="fa fa-facebook text-inverted"></i></a>
                              <a href="" target="_blank" class="footer-ssn-icon"><i class="fa fa-twitter text-inverted"></i></a>
                              <a href="" target="_blank" class="footer-ssn-icon"><i class="fa fa-youtube text-inverted"></i></a>
                              <a href="" target="_blank" class="footer-ssn-icon"><i class="fa fa-linkedin text-inverted"></i></a>
                              <a href="" target="_blank" class="footer-ssn-icon"><i class="fa fa-instagram text-inverted"></i></a>
                            </div>
                        </div>
                        <div class="home-section-line-break"></div>
                    </div>
                    <div class="container footer-brand-small visible-xs visible-sm">
                        <div class="home-section-line-break"></div>
                        <div class="footer-ssn-icon-group-small">
                          <a href="" target="_blank" class="footer-ssn-icon"><i class="fa fa-facebook text-inverted"></i></a>
                          <a href="" target="_blank" class="footer-ssn-icon"><i class="fa fa-twitter text-inverted"></i></a>
                          <a href="" target="_blank" class="footer-ssn-icon"><i class="fa fa-youtube text-inverted"></i></a>
                          <a href="" target="_blank" class="footer-ssn-icon"><i class="fa fa-linkedin text-inverted"></i></a>
                          <a href="" target="_blank" class="footer-ssn-icon"><i class="fa fa-instagram text-inverted"></i></a>
                        </div>
                        <div class="footer-mobile-buttons">
                            <a href=""><img id="android-play-badge" class="home-mobile-section-button-footer" src="<?php echo site_url('public_assets/img/landingpage/logo-company/googleplay.png')?>"></a>
                            <a href=""><img id="ios-store-badge" class="home-mobile-section-button-footer" src="<?php echo site_url('public_assets/img/landingpage/logo-company/appstore.png')?>"></a>
                        </div>
                        <div class="home-section-line-break"></div>
                    </div>
                    <kb-footer-footer>
                        <div class="footer-footer">
                            <div class="container">
                              <span class="footer-footer-text">© 2018 4Hire, Inc.</span>
                              <a href="" class="footer-footer-text">Terms of Use</a>
                              <a href="" class="footer-footer-text">Privacy Policy</a>
                              <span>
                                <a type="button" class="footer-footer-text">Report a problem</a>
                              </span>
                            </div>
                        </div>
                    </kb-footer-footer>
                </div>

        </footer>
        <!--========== END FOOTER ==========-->

        <!-- Back To Top -->
        <a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

        <!-- JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
        <!-- CORE PLUGINS -->
        <!-- <script type="text/javascript" src="vendor/jquery.min.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/vendor/jquery.min.js')?>"></script>
        <!-- <script type="text/javascript" src="vendor/jquery-migrate.min.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/vendor/jquery-migrate.min.js')?>"></script>
        <!-- <script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/vendor/bootstrap/js/bootstrap.min.js')?>"></script>


        <!-- PAGE LEVEL PLUGINS -->
        <!-- <script type="text/javascript" src="vendor/jquery.easing.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/vendor/jquery.easing.js')?>"></script>
        <!-- <script type="text/javascript" src="vendor/jquery.back-to-top.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/vendor/jquery.back-to-top.js')?>"></script>
        <!-- <script type="text/javascript" src="vendor/jquery.smooth-scroll.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/vendor/jquery.smooth-scroll.js')?>"></script>
        <!-- <script type="text/javascript" src="vendor/jquery.wow.min.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/vendor/jquery.wow.min.js')?>"></script>
        <!-- <script type="text/javascript" src="vendor/swiper/js/swiper.jquery.min.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/vendor/swiper/js/swiper.jquery.min.js')?>"></script>
        <!-- <script type="text/javascript" src="vendor/masonry/jquery.masonry.pkgd.min.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/vendor/masonry/jquery.masonry.pkgd.min.js')?>"></script>
        <!-- <script type="text/javascript" src="vendor/masonry/imagesloaded.pkgd.min.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/vendor/masonry/imagesloaded.pkgd.min.js')?>"></script>

        <!-- PAGE LEVEL SCRIPTS -->
        <!-- <script type="text/javascript" src="js/layout.min.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/js/layout.min.js')?>"></script>
        <!-- <script type="text/javascript" src="js/components/wow.min.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/js/components/wow.min.js')?>"></script>
        <!-- <script type="text/javascript" src="js/components/swiper.min.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/js/components/swiper.min.js')?>"></script>
        <!-- <script type="text/javascript" src="js/components/masonry.min.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/js/components/masonry.min.js')?>"></script>
        <?php echo !empty($loadJS) ? $loadJS : '';?>
    </body>
    <!-- END BODY -->
</html>
