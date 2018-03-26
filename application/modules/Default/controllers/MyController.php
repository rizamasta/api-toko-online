<?php
class MyController extends Abstract_Controller {
    public function __construct(){
        //somethint to check firstime
    }

    public function index(){
        $data = array(
            'msg' =>'Welcome to '.$this->config->item('appName'),
            'data' => date('d-m-Y H:i:s')
        );
        echo json_encode($data);
    }
}