<?php
class LandingPage extends Abstract_Controller {
    public function __construct(){
        $this->load->helper('string');
        $this->userData = $this->userInfo();
    }

    public function index(){
    //   $datatemplate =array(
    //       'title'=> $this->config->item('appName'),
    //       'body'=>'index',
    //       'fullname' => $this->userData['fullname']
    //   );
    //   $this->load->view($this->config->item('vtemplate') . 'layout' , $datatemplate);
      return $this->load->view('v1/landingpage/index',TRUE);
    }
}
