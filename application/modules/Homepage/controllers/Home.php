<?php 
class Home extends Abstract_Controller {
    public function __construct(){

    }
    public function index(Type $var = null)
    {
        $datatemplate =array(
            'title'=> $this->config->item('appName'),
            'body'=>'index'
        );
        $this->load->view($this->config->item('vtemplate') . 'layout', $datatemplate);
    }
}