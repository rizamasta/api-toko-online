<?php
class Result extends Abstract_Controller
{
    public function __construct(){
        $this->login_data = $this->checkLogin();
    }
    public function index(){
        $datatemplate =array(
            'title'=> $this->config->item('appName'),
            'body'=>'index',
            'fullname' => $this->userData['fullname']
        );
        $this->load->view($this->config->item('vtemplate') . 'layout', $datatemplate);
    }
}
