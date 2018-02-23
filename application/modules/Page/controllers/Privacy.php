<?php
class Privacy extends Abstract_Controller
{
    public function __construct(){
        $this->userData = $this->userInfo();
    }

    public function term(){
        $datatemplate =array(
            'title'=> $this->config->item('appName'),
            'body'=>'termcondition',
            'fullname' => $this->userData['fullname']
        );
        $this->load->view($this->config->item('vtemplate') . 'layout', $datatemplate);
    }

}
