<?php
Class Register extends Abstract_Controller {
    public function __construct(){
        header('Access-Control-Allow-Origin: *');
        $this->load->helper('string');
    }
    public function index(){
        $comp_id = 'UE4DV';//l'U'.strtoupper(random_string('alnum',4));
        $data = array(
            'comp_id' => $comp_id
        );
        $comp_id = $this->checkCompany($comp_id);
        $data = array(
            'comp_id' => $comp_id
        );
        
        $test = $this->getModelRegister()->insertCompany($data);
        echo json_encode($test);
    }

    function checkCompany($comp_id){
        $res = $this->getModelRegister()->getCompany(array('comp_id'=>$comp_id));
        if(!empty($res)){
            $comp_id = 'U'.strtoupper(random_string('alnum',4));
            $this->checkCompany($comp_id);
        }
        return $comp_id;
        
    }
} 