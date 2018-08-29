<?php
Class Konsumen extends Abstract_Controller
{
    public function __construct(){
        $this->key = $this->getHeader($this->input->request_headers());
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
        $condition = array();
        if(!empty($this->key->comp_id)){
            $condition['comp_id'] = $this->key->comp_id;
        }
        if(!empty($id)){
            $condition['id_kons'] = $id;
        }

        echo json_encode(array('status'=>200,'msg'=>'Data konsumen','data'=>$this->getModelMasterKonsumen()->getKonsumen($condition)));

    }
    public function update($id=""){

    }
    public function delete($id=""){

    }
}