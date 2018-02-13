<!DOCTYPE html>
<html lang="en">
<?php $includes = getcwd().'/public_assets/includes/';?>
<title>
    <?php echo $title;?>
</title>
<!-- Bootstrap -->
<?php $controller =  $this->uri->segment(1);
$action = $this->uri->segment(2);
$params = $this->uri->segment(3);
$secondparams = $this->uri->segment(4); ;?>
<?php echo (isset($loadCSS) ? $loadCSS : "");?>
<head>
<?php include($includes.'header.php'); ?>
</head>

<body>
  <header class="header">
        <div class="wrapper">
            <div class="header__nav">
                <div id="burgerMenu" class="header__nav-ico">
                    <img src="<?php echo site_url('assets/images/ico-menu.svg');?>" alt="">
                </div>
            </div>
            <div class="header__brand">
                <div class="header__brand-logo">
                    <a href="<?php echo site_url()?>"><img src="<?php echo site_url();?>assets/images/logo.png" alt=""></a>
                </div>
            </div>
            <div class="header__copyright">
                © 2018 <?php echo $this->config->item('appName')?>
            </div>
        </div>     
    </header>
  <div class="box-menu">
  	<?php include($includes.'menu.php');?>
  </div>
  
  <main id="main">
    
  </main>

<?php echo !empty($loadJS) ? $loadJS : '';?>
<?php include($includes.'js-general.php');?>
</body>

</html>
