<!DOCTYPE html>
<html lang="en">
  <head>
      <?php $includes = getcwd().'/public_assets/includes/';?>
      <title>
          <?php echo !empty($title)?$title:$this->config->AppName();?>
      </title>
      <?php 
          $controller =  $this->uri->segment(1);
          $action = $this->uri->segment(2);
          $params = $this->uri->segment(3);
          $secondparams = $this->uri->segment(4); ;
      ?>
      <?php if(!empty($headline)):?>
      <meta property='og:url'                content="<?php echo site_url()?>"/>
      <meta property='og:type'               content='article' />
      <meta property='og:title'              content='My Skeleton' />
      <meta property='og:description'        content="Default Customize Codeigneter by masta"/>
      <meta property='og:image' content="<?php echo site_url('assets/img/favicon.png')?>"/>
      <?php endif; ?>
      <?php include($includes.'header.php'); ?>
      <?php echo (isset($loadCSS) ? $loadCSS : "");?>
  </head>

  <body>
    <div class="content" style="min-height:600px">
      <div class="space_top"></div>
      <div class="container container-main">
          <div class="row">
            <div class="col-md-12 mx-auto bg-content">
              <center>
                  <h1>PAGE NOT FOUND!</h1>
                  <p>Uppss... you reach wrong address in this website.</p>
                  <p class="text-muted text-xs">
                      This page is currently not available, <br/>if you have visit this link before that mean the page was deleted by webmaster.
                  <p>
                  <button class="btn btn-primary btn-sm" onclick="location.href='<?php echo site_url()?>'"> <em class="fa fa-chevron-left"></em>&nbsp;&nbsp;&nbsp;BACK&nbsp;&nbsp;&nbsp;</button>
              </center>
            </div>
          </div>
      </div>
    </div>
    <?php include($includes.'footer.php');?>    
  </body>
  <?php include($includes.'js-general.php');?>
  <?php echo !empty($loadJS) ? $loadJS : '';?>  
  <script>
    $( "body" ).prepend( '<div class="loader"></div>');
    $("footer").hide();
    $(window).on('load', function() { 
      setTimeout(function(){
        $('.loader').fadeOut('slow');
        $('.content').fadeIn('slow');
        $("footer").fadeIn('slow');
      },300);
    })
  </script>
</html>
