<?php
Class Barang extends Abstract_Controller
{
    public function __construct(){

    }   
    public function index(){
        $result = array(
            "status" =>403,
            "msg" =>  'access forbiden',
        );
        echo json_encode($result); 
        http_response_code(403);
    }
    public function add(){

    }
    public function view($id=""){

    }
    public function update($id=""){

    }
    public function delete($id=""){

    }
}
