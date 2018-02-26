<!DOCTYPE html>

<html lang="en">
    <!-- BEGIN HEAD -->
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
        <link href="<?php echo site_url('public_assets/landingpage/vendor/simple-line-icons/simple-line-icons.min.css')?>" rel="stylesheet" type="text/css">
        <!-- <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/> -->
        <link href="<?php echo site_url('public_assets/landingpage/vendor/bootstrap/css/bootstrap.min.css')?>" rel="stylesheet" type="text/css">

        <!-- PAGE LEVEL PLUGIN STYLES -->
        <!-- <link href="css/animate.css" rel="stylesheet"> -->
        <link href="<?php echo site_url('public_assets/landingpage/css/animate.css')?>" rel="stylesheet" type="text/css">

        <!-- <link href="vendor/swiper/css/swiper.min.css" rel="stylesheet" type="text/css"/> -->
        <link href="<?php echo site_url('public_assets/landingpage/vendor/swiper/css/swiper.min.css')?>" rel="stylesheet" type="text/css">

        <!-- THEME STYLES -->
        <!-- <link href="css/layout.min.css" rel="stylesheet" type="text/css"/> -->
        <link href="<?php echo site_url('public_assets/landingpage/css/layout.min.css')?>" rel="stylesheet" type="text/css">

        <link href="<?php echo site_url('public_assets/landingpage/css/layout-custome.css')?>" rel="stylesheet" type="text/css">

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
                    <div class="collapse navbar-collapse nav-collapse">
                        <div class="menu-container">
                            <ul class="nav navbar-nav navbar-nav-right">
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#body">Jobseekers</a></li>
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#about">Employers</a></li>
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="<?php echo site_url('user/login')?>">Sign Up</a></li>
                                <!-- <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#pricing">Log In</a></li> -->
                                <!-- <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#work">Work</a></li> -->
                                <!-- <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#service">Service</a></li> -->
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="<?php echo site_url('user/login')?>">Log In</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- End Navbar Collapse -->
                </div>
            </nav>
            <!-- Navbar -->
        </header>
        <!--========== END HEADER ==========-->

        <!--========== SLIDER ==========-->
        <div id="carousel-example-generic" class="carousel slide text-center" data-ride="carousel">
            <!-- <div class="container"> -->
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                </ol>
            <!-- </div> -->

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img class="img-responsive" src="<?php echo site_url('public_assets/img/landingpage/1920x1080/01.png')?>" alt="Slider Image">
                    <div class="container-slide">
                        <div class="carousel-centered">
                            <div class="margin-b-40">
                                <h1 class="carousel-title">WHERE PASSION, SKILL AND OPPORRTUNITY MEET</h1>
                                <p class="color-white"><strong>Right man in the right place at the right time</strong></p>
                            </div>
                            <!-- <a href="#" class="btn-theme btn-theme-sm btn-white-brd text-uppercase">Explore</a> -->
                            <div class="row">
                              <div class="col-lg-3 col-sm-2 col-xs-1"></div>
                              <div class="col-lg-6 col-sm-8 col-xs-10">
                                <div class="input-group">
                                  <input type="text" class="form-control" placeholder="Search for...">
                                  <span class="input-group-btn">
                                    <button class="btn btn-search" type="button">Search</button>
                                  </span>
                                </div>
                              </div>
                              <div class="col-lg-3 col-sm-2 col-xs-1"></div>
                            </div><!-- /.row -->

                            <div class="row">
                              <div class="col-lg-3 col-sm-2 col-xs-1"></div>
                              <div class="col-lg-6 col-sm-8 col-xs-10 text-right">
                                <div style="text-align:right;">
                                  <p>Advance Job Search</p>
                                </div>
                              </div>
                              <div class="col-lg-3 col-sm-2 col-xs-1"></div>

                            </div><!-- /.row -->

                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="img-responsive" src="<?php echo site_url('public_assets/img/landingpage/1920x1080/02.png')?>" alt="Slider Image">
                    <div class="container-slide"> <!-- container -->
                        <div class="carousel-centered">
                            <div class="margin-b-40">
                                <h1 class="carousel-title">WHERE PASSION, SKILL AND OPPORRTUNITY MEET</h1>
                                <p class="color-white"><strong>Right man in the right place at the right time</strong></p>
                            </div>
                            <!-- <a href="#" class="btn-theme btn-theme-sm btn-white-brd text-uppercase">Explore</a> -->
                            <div class="row">
                              <div class="col-lg-3 col-sm-2 col-xs-1"></div>
                              <div class="col-lg-6 col-sm-8 col-xs-10">
                                <div class="input-group">
                                  <input type="text" class="form-control" placeholder="Search for...">
                                  <span class="input-group-btn">
                                    <button class="btn btn-search" type="button">Search</button>
                                  </span>
                                </div>
                              </div>
                              <div class="col-lg-3 col-sm-2 col-xs-1"></div>
                            </div>

                            <div class="row">
                              <div class="col-lg-3 col-sm-2 col-xs-1"></div>
                              <div class="col-lg-6 col-sm-8 col-xs-10 text-right">
                                <div style="text-align:right;">
                                  <p>Advance Job Search</p>
                                </div>
                              </div>
                              <div class="col-lg-3 col-sm-2 col-xs-1"></div>

                            </div><!-- /.row -->

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--========== SLIDER ==========-->

        <!--========== PAGE LAYOUT ==========-->
        <!-- About -->
        <div id="about">
            <div class="content-lg container">
              <div class="text-center">
                  <h2 class="xs-header-text text-heavy home-section-header">500+ Companies Are Hiring on 4Hire</h2>
                  <!-- ngRepeat: row in HomeCtrl.companyRows -->
                  <div class="row home-company-logo-row">
                      <!-- ngRepeat: company in row -->
                      <div class="col-md-2 col-xs-4">
                          <a href="" class="home-company-logo"><img alt="Jobs in Accenture" class="img-responsive center-block" src="<?php echo site_url('public_assets/img/landingpage/logo-company/accenture.png')?>" style="visibility: visible;"></a>
                      </div>
                      <!-- end ngRepeat: company in row -->
                      <div class="col-md-2 col-xs-4">
                          <a href="" class="home-company-logo"><img alt="Jobs in GO-JEK Indonesia" class="img-responsive center-block" src="<?php echo site_url('public_assets/img/landingpage/logo-company/gojek.png')?>" style="visibility: visible;"></a>
                      </div>
                      <!-- end ngRepeat: company in row -->
                      <div class="col-md-2 col-xs-4">
                          <a href="" class="home-company-logo"><img alt="Jobs in BTPN" class="img-responsive center-block" src="<?php echo site_url('public_assets/img/landingpage/logo-company/btpn.png')?>" style="visibility: visible;"></a>
                      </div>
                      <!-- end ngRepeat: company in row -->
                      <div class="col-md-2 col-xs-4">
                          <a href="" class="home-company-logo"><img alt="Jobs in Ciputra" class="img-responsive center-block" src="<?php echo site_url('public_assets/img/landingpage/logo-company/ciputra.png')?>" style="visibility: visible;"></a>
                      </div>
                      <!-- end ngRepeat: company in row -->
                      <div class="col-md-2 col-xs-4">
                          <a href="" class="home-company-logo"><img alt="Jobs in Shopee" class="img-responsive center-block" src="<?php echo site_url('public_assets/img/landingpage/logo-company/shopee.png')?>" style="visibility: visible;"></a>
                      </div>
                      <!-- end ngRepeat: company in row -->
                      <div class="col-md-2 col-xs-4">
                          <a href="" class="home-company-logo"><img alt="Jobs in Infomedia Nusantara" class="img-responsive center-block" src="<?php echo site_url('public_assets/img/landingpage/logo-company/infomedia.png')?>" style="visibility: visible;"></a>
                      </div>
                      <!-- end ngRepeat: company in row -->
                  </div>
                  <!-- end ngRepeat: row in HomeCtrl.companyRows -->
                  <div  class="row home-company-logo-row">
                      <!-- ngRepeat: company in row -->
                      <div class="col-md-2 col-xs-4">
                          <a href="" class="home-company-logo"><img alt="Jobs in PT Bank Mandiri (Persero) Tbk." class="img-responsive center-block" src="<?php echo site_url('public_assets/img/landingpage/logo-company/bank_mandiri.png')?>" style="visibility: visible;"></a>
                      </div>
                      <!-- end ngRepeat: company in row -->
                      <div class="col-md-2 col-xs-4">
                          <a href="" class="home-company-logo"><img alt="Jobs in Adira Finance" class="img-responsive center-block" src="<?php echo site_url('public_assets/img/landingpage/logo-company/adira.png')?>" style="visibility: visible;"></a>
                      </div>
                      <!-- end ngRepeat: company in row -->
                      <div class="col-md-2 col-xs-4">
                          <a href="" class="home-company-logo"><img alt="Jobs in Bank Central Asia" class="img-responsive center-block" src="<?php echo site_url('public_assets/img/landingpage/logo-company/bca.png')?>" style="visibility: visible;"></a>
                      </div>
                      <!-- end ngRepeat: company in row -->
                      <div class="col-md-2 col-xs-4">
                          <a href="" class="home-company-logo"><img alt="Jobs in UNDP Indonesia" class="img-responsive center-block" src="<?php echo site_url('public_assets/img/landingpage/logo-company/undp.png')?>" style="visibility: visible;"></a>
                      </div>
                      <!-- end ngRepeat: company in row -->
                      <div class="col-md-2 col-xs-4">
                          <a href="" class="home-company-logo"><img alt="Jobs in Lazada Indonesia" class="img-responsive center-block" src="<?php echo site_url('public_assets/img/landingpage/logo-company/lazada.png')?>" style="visibility: visible;"></a>
                      </div>
                      <!-- end ngRepeat: company in row -->
                      <div class="col-md-2 col-xs-4">
                          <a href="" class="home-company-logo"><img alt="Jobs in Trans Retail Indonesia" class="img-responsive center-block" src="<?php echo site_url('public_assets/img/landingpage/logo-company/transmart.png')?>" style="visibility: visible;"></a>
                      </div>
                      <!-- end ngRepeat: company in row -->
                  </div>
                  <!-- end ngRepeat: row in HomeCtrl.companyRows -->
                  <div class="row home-company-logo-row">
                      <!-- ngRepeat: company in row -->
                      <div class="col-md-2 col-xs-4">
                          <a href="" class="home-company-logo"><img alt="Jobs in Kompas Gramedia - Group of Magazine" class="img-responsive center-block" src="<?php echo site_url('public_assets/img/landingpage/logo-company/gramedia.png')?>" style="visibility: visible;"></a>
                      </div>
                      <!-- end ngRepeat: company in row -->
                      <div class="col-md-2 col-xs-4">
                          <a href="" class="home-company-logo"><img alt="Jobs in PT Sophie Paris Indonesia" class="img-responsive center-block" src="<?php echo site_url('public_assets/img/landingpage/logo-company/sophie.png')?>" style="visibility: visible;"></a>
                      </div>
                      <!-- end ngRepeat: company in row -->
                      <div class="col-md-2 col-xs-4">
                          <a href="" class="home-company-logo"><img alt="Jobs in Home Credit Indonesia" class="img-responsive center-block" src="<?php echo site_url('public_assets/img/landingpage/logo-company/home_credit.png')?>" style="visibility: visible;"></a>
                      </div>
                      <!-- end ngRepeat: company in row -->
                      <div class="col-md-2 col-xs-4">
                          <a href="" class="home-company-logo"><img alt="Jobs in Blibli" class="img-responsive center-block" src="<?php echo site_url('public_assets/img/landingpage/logo-company/blibli.png')?>" style="visibility: visible;"></a>
                      </div>
                      <!-- end ngRepeat: company in row -->
                      <div class="col-md-2 col-xs-4">
                          <a href="" class="home-company-logo"><img alt="Jobs in Blanja.com" class="img-responsive center-block" src="<?php echo site_url('public_assets/img/landingpage/logo-company/blanja.png')?>" style="visibility: visible;"></a>
                      </div>
                      <!-- end ngRepeat: company in row -->
                      <div class="col-md-2 col-xs-4">
                          <a href="" class="home-company-logo"><img alt="Jobs in Cartenz Group" class="img-responsive center-block" src="<?php echo site_url('public_assets/img/landingpage/logo-company/cartenz.png')?>" style="visibility: visible;"></a>
                      </div>
                      <!-- end ngRepeat: company in row -->
                  </div>
                  <!-- end ngRepeat: row in HomeCtrl.companyRows -->
              </div>
            </div>
        </div>
        <!-- End About -->

        <!-- Latest Products -->
        <div id="products">
            <!-- <div class="content-lg container"> -->
            <section class="home-section home-mobile-section">
                <div class="container">
                  <div class="row">
                      <div class="col-md-5 col-md-offset-1 home-mobile-section-text">
                          <div class="row">
                              <div class="col-xs-10 col-xs-offset-1 col-md-12 col-md-offset-0 home-mobile-section-header">
                                  <h2 class="text-heavy">Download the App</h2>
                              </div>
                          </div>
                          <div class="home-mobile-section-body">
                              <p class="paragraf">Get job matches near you and chat with employers on the go</p>
                          </div>
                          <a href="" class="col-md-5 col-xs-6 col-lg-4">
                            <img id="android-play-badge" class="home-mobile-section-button" src="<?php echo site_url('public_assets/img/landingpage/logo-company/googleplay.png')?>">
                          </a>
                          <a href="" class="col-md-5 col-xs-6 col-lg-4">
                            <img id="ios-store-badge" class="home-mobile-section-button" src="<?php echo site_url('public_assets/img/landingpage/logo-company/appstore.png')?>">
                          </a>
                      </div>
                      <div class="col-md-3 col-md-offset-2 col-xs-12 text-center">
                        <img id="mobile-app-preview" src="<?php echo site_url('public_assets/img/landingpage/logo-company/mobile.png')?>" class="home-mobile-section-logo">
                      </div>
                  </div>
                </div>
              </section>
                <!--// end row -->
            <!-- </div> -->
        </div>
        <!-- End Latest Products -->

        <!-- Pricing -->
        <div id="pricing">
          <section class="home-section home-lesswspace-section">
              <div class="container-staffpicks">
                  <div class="home-section-header text-center">
                      <h2 class="text-heavy">4Hire Staff Picks</h2>
                      <p class="text-black-medium">The Most Interesting Jobs As Picked By The 4Hire</p>
                  </div>
                  <!-- ngIf: HomeCtrl.featuredJobs -->
                  <div class="home-featured-job-marquee text-center">
                      <!-- ngRepeat: job in HomeCtrl.featuredJobs -->
                      <div class="home-featured-job">
                          <!-- ngIf: !HomeCtrl.isFromIndonesia() -->
                          <!-- ngIf: HomeCtrl.isFromIndonesia() -->
                          <kb-featured-job-old ng-if="HomeCtrl.isFromIndonesia()" job="job" limit-title-height="true" strict-height="true" source="home-featured-job">
                              <a class="panel panel-shadowed text-small no-margin kb-featured-job jb-featured-strict-height-old" href="" style="">
                                  <div class="jb-featured-img-wrapper-old">
                                    <img alt="Business Intelligence" class="jb-featured-img-old" src="<?php echo site_url('public_assets/img/landingpage/logo-company/shopebaner.jpg')?>"></div>
                                  <div class="jb-featured-label-old text-center text-heavy uppercase">Featured Job</div>
                                  <div class="jb-featured-details-old">
                                      <div class="text-base text-primary text-center truncate-text" style="">Business Intelligence</div>
                                      <!-- ngIf: !Ctrl.job.company_info.hidden -->
                                      <p class="text-center truncate-text" style="">at Shopee</p>
                                      <!-- end ngIf: !Ctrl.job.company_info.hidden -->
                                      <!-- ngIf: Ctrl.job.google_location -->
                                      <div class="text-fa-wide truncate-text" style="">
                                        <i class="fa fa-map-marker text-primary text-center"></i>
                                        <span ng-bind-html="Ctrl.job.google_location|shortLocation:true">
                                          <span itemprop="addressLocality" class="span-text">West Jakarta</span>, <span itemprop="addressCountry" class="span-text">Indonesia</span>
                                        </span>
                                      </div>
                                      <!-- end ngIf: Ctrl.job.google_location -->
                                      <!-- ngIf: Ctrl.job.work_experience -->
                                      <div class="text-fa-wide" style=""><i class="fa fa-suitcase text-warning text-center"></i>
                                        <span class="span-text">Associate / Supervisor</span>
                                      </div>
                                      <!-- end ngIf: Ctrl.job.work_experience -->
                                      <div class="text-fa-wide"><i class="fa fa-money text-success text-center"></i>
                                          <span class="span-text" style="">Undisclosed</span>
                                      </div>
                                  </div>
                              </a>
                          </kb-featured-job-old>
                          <!-- end ngIf: HomeCtrl.isFromIndonesia() -->
                      </div>
                      <!-- end ngRepeat: job in HomeCtrl.featuredJobs -->
                      <div ng-repeat="job in HomeCtrl.featuredJobs" class="home-featured-job">
                          <kb-featured-job-old ng-if="HomeCtrl.isFromIndonesia()" job="job" limit-title-height="true" strict-height="true" source="home-featured-job">
                              <a class="panel panel-shadowed text-small no-margin kb-featured-job jb-featured-strict-height-old" href="" style="">
                                  <div class="jb-featured-img-wrapper-old">
                                    <img alt="Senior UI/UX Designer" class="jb-featured-img-old" src="<?php echo site_url('public_assets/img/landingpage/logo-company/weare.jpg')?>"></div>
                                  <div class="jb-featured-label-old text-center text-heavy uppercase">Featured Job</div>
                                  <div class="jb-featured-details-old">
                                      <div class="text-base text-primary text-center truncate-text" style="">Senior UI/UX Designer</div>
                                      <!-- ngIf: !Ctrl.job.company_info.hidden -->
                                      <p class="text-center truncate-text" style="">at Aleph Labs</p>
                                      <!-- end ngIf: !Ctrl.job.company_info.hidden -->
                                      <!-- ngIf: Ctrl.job.google_location -->
                                      <div class="text-fa-wide truncate-text" style="">
                                        <i class="fa fa-map-marker text-primary text-center"></i>
                                        <span><span itemprop="addressLocality" class="span-text">South Jakarta</span>, <span itemprop="addressCountry" class="span-text">Indonesia</span>
                                      </span>
                                      </div>
                                      <div class="text-fa-wide" style=""><i class="fa fa-suitcase text-warning text-center"></i>
                                        <span class="span-text">Mid-Senior Level / Manager</span>
                                      </div>
                                      <!-- end ngIf: Ctrl.job.work_experience -->
                                      <div class="text-fa-wide"><i class="fa fa-money text-success text-center"></i>
                                        <span class="span-text" style="">Undisclosed</span>
                                      </div>
                                  </div>
                              </a>
                          </kb-featured-job-old>
                      </div>
                      <div ng-repeat="job in HomeCtrl.featuredJobs" class="home-featured-job">
                          <kb-featured-job-old ng-if="HomeCtrl.isFromIndonesia()" job="job" limit-title-height="true" strict-height="true" source="home-featured-job">
                              <a class="panel panel-shadowed text-small no-margin kb-featured-job jb-featured-strict-height-old" href="" style="">
                                  <div class="jb-featured-img-wrapper-old">
                                    <img alt="SAP ABAP" class="jb-featured-img-old" src="<?php echo site_url('public_assets/img/landingpage/logo-company/joinus.jpg')?>"></div>
                                  <div class="jb-featured-label-old text-center text-heavy uppercase">Featured Job</div>
                                  <div class="jb-featured-details-old">
                                      <div class="text-base text-primary text-center truncate-text" style="">SAP ABAP</div>
                                      <!-- ngIf: !Ctrl.job.company_info.hidden -->
                                      <p class="text-center truncate-text" style="">at Accenture</p>
                                      <div class="text-fa-wide truncate-text" style="">
                                        <i class="fa fa-map-marker text-primary text-center"></i>
                                        <span>
                                          <span class="span-text">Central Jakarta</span>, <span itemprop="addressCountry" class="span-text">Indonesia</span>
                                        </span>
                                      </div>
                                      <!-- end ngIf: Ctrl.job.google_location -->
                                      <!-- ngIf: Ctrl.job.work_experience -->
                                      <div class="text-fa-wide" style=""><i class="fa fa-suitcase text-warning text-center"></i>
                                        <span class="span-text">Associate / Supervisor</span>
                                      </div>
                                      <!-- end ngIf: Ctrl.job.work_experience -->
                                      <div class="text-fa-wide">
                                        <i class="fa fa-money text-success text-center"></i>
                                          <span class="span-text" style="">Undisclosed</span>
                                      </div>
                                  </div>
                              </a>
                          </kb-featured-job-old>
                          <!-- end ngIf: HomeCtrl.isFromIndonesia() -->
                      </div>
                      <!-- end ngRepeat: job in HomeCtrl.featuredJobs -->
                      <div ng-repeat="job in HomeCtrl.featuredJobs" class="home-featured-job">
                          <!-- ngIf: !HomeCtrl.isFromIndonesia() -->
                          <!-- ngIf: HomeCtrl.isFromIndonesia() -->
                          <kb-featured-job-old ng-if="HomeCtrl.isFromIndonesia()" job="job" limit-title-height="true" strict-height="true" source="home-featured-job">
                              <a class="panel panel-shadowed text-small no-margin kb-featured-job jb-featured-strict-height-old" href="" style="">
                                  <div class="jb-featured-img-wrapper-old">
                                    <img alt="Creative Hacknology Intensive Program (CHIP)" class="jb-featured-img-old" src="<?php echo site_url('public_assets/img/landingpage/logo-company/chip.jpg')?>"></div>
                                  <div class="jb-featured-label-old text-center text-heavy uppercase">Featured Job</div>
                                  <div class="jb-featured-details-old">
                                      <div class="text-base text-primary text-center truncate-text" style="">Creative Hacknology Intensive Program (CHIP)</div>
                                      <!-- ngIf: !Ctrl.job.company_info.hidden -->
                                      <p class="text-center truncate-text" style="">at PT Bank Tabungan Pensiunan Nasional Tbk</p>
                                      <!-- end ngIf: !Ctrl.job.company_info.hidden -->
                                      <!-- ngIf: Ctrl.job.google_location -->
                                      <div class="text-fa-wide truncate-text" style="">
                                        <i class="fa fa-map-marker text-primary text-center"></i>
                                        <span>
                                          <span itemprop="addressLocality" class="span-text">Central Jakarta</span>, <span class="span-text">Indonesia</span>
                                      </span>
                                      </div>
                                      <!-- end ngIf: Ctrl.job.google_location -->
                                      <!-- ngIf: Ctrl.job.work_experience -->
                                      <div class="text-fa-wide" style=""><i class="fa fa-suitcase text-warning text-center"></i>
                                        <span class="span-text">Fresh Grad / Entry Level</span>
                                      </div>
                                      <!-- end ngIf: Ctrl.job.work_experience -->
                                      <div class="text-fa-wide"><i class="fa fa-money text-success text-center"></i>
                                          <span class="span-text" style="">Undisclosed</span>
                                      </div>
                                  </div>
                              </a>
                          </kb-featured-job-old>
                          <!-- end ngIf: HomeCtrl.isFromIndonesia() -->
                      </div>
                      <!-- end ngRepeat: job in HomeCtrl.featuredJobs -->
                      <div ng-repeat="job in HomeCtrl.featuredJobs" class="home-featured-job">
                          <!-- ngIf: !HomeCtrl.isFromIndonesia() -->
                          <!-- ngIf: HomeCtrl.isFromIndonesia() -->
                          <kb-featured-job-old ng-if="HomeCtrl.isFromIndonesia()" job="job" limit-title-height="true" strict-height="true" source="home-featured-job">
                              <a class="panel panel-shadowed text-small no-margin kb-featured-job jb-featured-strict-height-old" href="" style="">
                                  <div class="jb-featured-img-wrapper-old">
                                    <img alt="Brand Creative Lead" class="jb-featured-img-old" src="<?php echo site_url('public_assets/img/landingpage/logo-company/beapart.jpg')?>">
                                  </div>
                                  <div class="jb-featured-label-old text-center text-heavy uppercase">Featured Job</div>
                                  <div class="jb-featured-details-old">
                                      <div class="text-base text-primary text-center truncate-text" style="">Brand Creative Lead</div>
                                      <!-- ngIf: !Ctrl.job.company_info.hidden -->
                                      <p class="text-center truncate-text" style="">at Lazada Group</p>
                                      <!-- end ngIf: !Ctrl.job.company_info.hidden -->
                                      <!-- ngIf: Ctrl.job.google_location -->
                                      <div class="text-fa-wide truncate-text" style="">
                                        <i class="fa fa-map-marker text-primary text-center"></i>
                                        <span>
                                          <span itemprop="addressLocality" class="span-text">South Jakarta</span>, <span itemprop="addressCountry" class="span-text">Indonesia</span>
                                        </span>
                                      </div>
                                      <!-- end ngIf: Ctrl.job.google_location -->
                                      <!-- ngIf: Ctrl.job.work_experience -->
                                      <div class="text-fa-wide" style="">
                                        <i class="fa fa-suitcase text-warning text-center"></i>
                                        <span class="span-text">Associate / Supervisor</span>
                                      </div>
                                      <!-- end ngIf: Ctrl.job.work_experience -->
                                      <div class="text-fa-wide"><i class="fa fa-money text-success text-center"></i>
                                          <span class="span-text" style="">Undisclosed</span>
                                      </div>
                                  </div>
                              </a>
                          </kb-featured-job-old>
                          <!-- end ngIf: HomeCtrl.isFromIndonesia() -->
                      </div>
                      <!-- end ngRepeat: job in HomeCtrl.featuredJobs -->
                      <div class="home-featured-job">
                          <!-- ngIf: !HomeCtrl.isFromIndonesia() -->
                          <!-- ngIf: HomeCtrl.isFromIndonesia() -->
                          <kb-featured-job-old limit-title-height="true" strict-height="true" source="home-featured-job">
                              <a class="panel panel-shadowed text-small no-margin kb-featured-job jb-featured-strict-height-old" href="" style="">
                                  <div class="jb-featured-img-wrapper-old">
                                    <img alt="Mobile Engineer (Android)" class="jb-featured-img-old" src="<?php echo site_url('public_assets/img/landingpage/logo-company/beapartgojek.jpg')?>">
                                  </div>
                                  <div class="jb-featured-label-old text-center text-heavy uppercase">Featured Job</div>
                                  <div class="jb-featured-details-old">
                                      <div class="text-base text-primary text-center truncate-text" style="">Mobile Engineer (Android)</div>
                                      <!-- ngIf: !Ctrl.job.company_info.hidden -->
                                      <p class="text-center truncate-text" style="">at GO-JEK</p>
                                      <!-- end ngIf: !Ctrl.job.company_info.hidden -->
                                      <!-- ngIf: Ctrl.job.google_location -->
                                      <div class="text-fa-wide truncate-text" style="">
                                        <i class="fa fa-map-marker text-primary text-center"></i>
                                        <span>
                                          <span class="span-text">South Jakarta</span>, <span itemprop="addressCountry" class="span-text">Indonesia</span>
                                        </span>
                                      </div>
                                      <!-- end ngIf: Ctrl.job.google_location -->
                                      <!-- ngIf: Ctrl.job.work_experience -->
                                      <div class="text-fa-wide" style=""><i class="fa fa-suitcase text-warning text-center"></i>
                                        <span class="span-text">Mid-Senior Level / Manager</span>
                                      </div>
                                      <!-- end ngIf: Ctrl.job.work_experience -->
                                      <div class="text-fa-wide"><i class="fa fa-money text-success text-center"></i>
                                          <span class="span-text" style="">Undisclosed</span>
                                      </div>
                                  </div>
                              </a>
                          </kb-featured-job-old>
                          <!-- end ngIf: HomeCtrl.isFromIndonesia() -->
                      </div>
                      <!-- end ngRepeat: job in HomeCtrl.featuredJobs -->
                  </div>
                  <!-- end ngIf: HomeCtrl.featuredJobs -->
              </div>
          </section>
        </div>
        <!-- End Pricing -->

        <!-- Work -->
        <div id="work">
        <section class="home-section-last">
            <div class="container">
                <div class="text-center">
                    <h3 class="h3-text"><strong>There are 4000+ jobs on 4Hire. Find the right job for you.</strong></h3>
                    <br><a href="" target="_self" class="btn btn-default btn-lg">
                      <strong>Go to the Job Board</strong>
                    </a>
                  </div>
            </div>
        </section>
        </div>
        <!-- End Work -->

        <!-- Service -->
        <div id="service">
        </div>
        <!-- End Service -->

        <!-- Contact -->
        <div id="contact">
        </div>
        <!-- End Contact -->
        <!--========== END PAGE LAYOUT ==========-->

        <!--========== FOOTER ==========-->
        <footer class="footer">

            <!-- Copyright -->
            <!-- <div class="content container">
                <div class="row">
                    <div class="col-xs-6">
                        <img class="footer-logo" src="img/logo-dark.png" alt="Aitonepage Logo">
                    </div>
                    <div class="col-xs-6 text-right">
                        <p class="margin-b-0"><a class="fweight-700" href="http://keenthemes.com/preview/aitonepage/">Aitonepage</a> Theme Powered by: <a class="fweight-700" href="http://www.keenthemes.com/">KeenThemes.com</a></p>
                    </div>
                </div> -->
                <!--// end row -->
            <!-- </div> -->
            <!-- End Copyright -->


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
        <script type="text/javascript" src="<?php echo site_url('public_assets/landingpage/vendor/jquery.min.js')?>"></script>
        <!-- <script type="text/javascript" src="vendor/jquery-migrate.min.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/landingpage/vendor/jquery-migrate.min.js')?>"></script>
        <!-- <script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/landingpage/vendor/bootstrap/js/bootstrap.min.js')?>"></script>


        <!-- PAGE LEVEL PLUGINS -->
        <!-- <script type="text/javascript" src="vendor/jquery.easing.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/landingpage/vendor/jquery.easing.js')?>"></script>
        <!-- <script type="text/javascript" src="vendor/jquery.back-to-top.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/landingpage/vendor/jquery.back-to-top.js')?>"></script>
        <!-- <script type="text/javascript" src="vendor/jquery.smooth-scroll.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/landingpage/vendor/jquery.smooth-scroll.js')?>"></script>
        <!-- <script type="text/javascript" src="vendor/jquery.wow.min.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/landingpage/vendor/jquery.wow.min.js')?>"></script>
        <!-- <script type="text/javascript" src="vendor/swiper/js/swiper.jquery.min.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/landingpage/vendor/swiper/js/swiper.jquery.min.js')?>"></script>
        <!-- <script type="text/javascript" src="vendor/masonry/jquery.masonry.pkgd.min.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/landingpage/vendor/masonry/jquery.masonry.pkgd.min.js')?>"></script>
        <!-- <script type="text/javascript" src="vendor/masonry/imagesloaded.pkgd.min.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/landingpage/vendor/masonry/imagesloaded.pkgd.min.js')?>"></script>

        <!-- PAGE LEVEL SCRIPTS -->
        <!-- <script type="text/javascript" src="js/layout.min.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/landingpage/js/layout.min.js')?>"></script>
        <!-- <script type="text/javascript" src="js/components/wow.min.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/landingpage/js/components/wow.min.js')?>"></script>
        <!-- <script type="text/javascript" src="js/components/swiper.min.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/landingpage/js/components/swiper.min.js')?>"></script>
        <!-- <script type="text/javascript" src="js/components/masonry.min.js" type="text/javascript"></script> -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/landingpage/js/components/masonry.min.js')?>"></script>

    </body>
    <!-- END BODY -->
</html>
