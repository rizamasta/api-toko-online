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
      <meta property='og:type'               content='4Hire' />
      <meta property='og:title'              content='My Skeleton' />
      <meta property='og:description'        content="Default Customize Codeigneter by masta"/>
      <meta property='og:image' content="<?php echo site_url('assets/img/favicon.png')?>"/>
      <?php endif; ?>
      <?php include($includes.'header.php'); ?>
      <?php echo (isset($loadCSS) ? $loadCSS : "");?>
  </head>

  <body>
    <div class="content">
      <?php include($includes.'menu.php');?>
      <div class="space_top"></div>
      <div class="container container-main">
          <div class="row">
            <div class="col-md-12 mx-auto bg-content">
              <?php if (isset($body)) :
                      $moduleName = $this->router->fetch_module();
                      $controllerName = strtolower($this->router->fetch_class());
                      $view = $moduleName.'/'.$this->config->item('tbody').$controllerName.'/'.$body;
                      echo $this->load->view($view); 
                    endif;
                ?>
            </div>
          </div>
      </div>
      <?php include($includes.'footer.php');?>
      <?php include($includes.'js-general.php');?>
      <?php echo !empty($loadJS) ? $loadJS : '';?>      
      <script src="<?php echo site_url('assets/js/new-age.min.js')?>"></script>
      
    </div>
  </body>
  <script>
    $( "body" ).prepend( '<div class="loader"></div>' );
    $(window).on('load', function() { 
      setTimeout(function(){
        $('.loader').fadeOut('fast');
        $('.content').fadeIn('slow');
      },300);
    })
  </script>
</html>
