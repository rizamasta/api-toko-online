<?php
class LandingPage extends Abstract_Controller {
    public function __construct(){
        $this->load->helper('string');
        $this->userData = $this->userInfo();
    }

    public function index(){
      $datatemplate =array(
          'title'=> $this->config->item('appName'),
          'body'=>'single',
        //   'loadCSS' => $this->loadassets->loadVendorsCSS(array("js/landingpage/css/datatables.css")),
        //   'loadJS'=> $this->loadassets->loadVendorsJS(array("landingpage/js/layout.js","landingpage/js/map.js")),
          'fullname' => $this->userData['fullname']
      );
      $this->load->view($this->config->item('vtemplate') . 'landingpage' , $datatemplate);
    }
}
