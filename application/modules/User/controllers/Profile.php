<?php 
class Profile extends Abstract_Controller
{
    public function __construct(){
        $this->userData = $this->checkLogin(site_url('profile/view'));
    }

    public function index(){
        $datatemplate =array(
            'title'=> $this->config->item('appName'),
            'body'=>'index',
            'profile' => $this->getModelUser()->getUser($this->userData['uid']),
            'fullname' => $this->userData['fullname']
        );
        $this->load->view($this->config->item('vtemplate') . 'layout', $datatemplate);
    }
}
