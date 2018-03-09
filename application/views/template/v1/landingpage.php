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
    <link rel="shortcut icon" type="image/x-icon" href="<?php echo site_url('assets/img/favicon.png?t=100')?>" />

    <!-- GLOBAL MANDATORY STYLES -->
    <link href="http://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet" type="text/css">
    <link href="<?php echo site_url('public_assets/assets/js/landingpage/vendor/simple-line-icons/simple-line-icons.min.css')?>" rel="stylesheet" type="text/css">
    <link href="<?php echo site_url('public_assets/assets/js/landingpage/vendor/bootstrap/css/bootstrap.min.css')?>" rel="stylesheet" type="text/css">

    <!-- PAGE LEVEL PLUGIN STYLES -->
    <link href="<?php echo site_url('public_assets/assets/js/landingpage/css/animate.css')?>" rel="stylesheet" type="text/css">
    <link href="<?php echo site_url('public_assets/assets/js/landingpage/vendor/swiper/css/swiper.min.css')?>" rel="stylesheet" type="text/css">
    <!-- THEME STYLES -->
    <link href="<?php echo site_url('public_assets/assets/js/landingpage/css/layout.min.css')?>" rel="stylesheet" type="text/css">
    <link href="<?php echo site_url('public_assets/assets/js/landingpage/css/layout-custome.css')?>" rel="stylesheet" type="text/css">
    <?php echo (isset($loadCSS) ? $loadCSS : "");?>

</head>
<!-- END HEAD -->

    <!-- BODY -->
    <body id="body" data-spy="scroll" data-target=".header">
        <!--========== HEADER ==========-->
        <?php include($includes.'header-landingpage.php')?>
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
        <?php include($includes.'footer-landingpage.php')?>
        <!--========== END FOOTER ==========-->

        <!-- Back To Top -->
        <a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

        <!-- JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
        <!-- CORE PLUGINS -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/vendor/jquery.min.js')?>"></script>
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/vendor/jquery-migrate.min.js')?>"></script>
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/vendor/bootstrap/js/bootstrap.min.js')?>"></script>


        <!-- PAGE LEVEL PLUGINS -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/vendor/jquery.easing.js')?>"></script>
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/vendor/jquery.back-to-top.js')?>"></script>
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/vendor/jquery.smooth-scroll.js')?>"></script>
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/vendor/jquery.wow.min.js')?>"></script>
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/vendor/swiper/js/swiper.jquery.min.js')?>"></script>
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/vendor/masonry/jquery.masonry.pkgd.min.js')?>"></script>
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/vendor/masonry/imagesloaded.pkgd.min.js')?>"></script>

        <!-- PAGE LEVEL SCRIPTS -->
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/js/layout.min.js')?>"></script>
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/js/components/wow.min.js')?>"></script>
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/js/components/swiper.min.js')?>"></script>
        <script type="text/javascript" src="<?php echo site_url('public_assets/assets/js/landingpage/js/components/masonry.min.js')?>"></script>
        <?php echo !empty($loadJS) ? $loadJS : '';?>
    </body>
    <!-- END BODY -->
</html>
