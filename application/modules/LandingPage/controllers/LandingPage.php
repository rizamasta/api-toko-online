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
          'fullname' => $this->userData['fullname']
      );
      $this->load->view($this->config->item('vtemplate') . 'landingpage' , $datatemplate);
    }

    public function about(){
      $datatemplate =array(
          'title'=> $this->config->item('appName'),
          'body'=>'about',
          'fullname' => $this->userData['fullname'],
          'loadCSS' => $this->loadassets->loadVendorsCSS(array("js/about/min/plugin-min.css","js/about/min/custom-min.css")),
          'loadJS' => $this->loadassets->loadVendorsJS(array("js/about/min/plugin-min.js","js/about/min/custom-min.js"))
      );
      $this->load->view($this->config->item('vtemplate') . 'front-layout' , $datatemplate);
    }
}
