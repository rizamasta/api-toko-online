<?php 
class Home extends Abstract_Controller {
    protected $userData;
    public function __construct(){
        $this->userData = $this->userInfo();
    }
    public function index(Type $var = null)
    {
        $datatemplate =array(
            'title'=> $this->config->item('appName'),
            'body'=>'index',
            'fullname' => $this->userData['fullname']
        );
        $this->load->view($this->config->item('vtemplate') . 'layout', $datatemplate);
    }
}