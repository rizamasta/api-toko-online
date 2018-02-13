<?php
class MyController extends Abstract_Controller {
    public function __construct(){
        //somethint to check firstime
    }

    public function index(){
        $datatemplate =array(
            'title'=> $this->config->item('appName'),
            'body'=>'default_page'
        );
        $this->load->view($this->config->item('vtemplate') . 'layout', $datatemplate);
    }
}