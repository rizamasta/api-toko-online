<?php
class Project extends Abstract_Controller {
    public function __construct(){
        $this->header = $this->authApp($this->input->request_headers(),true);
		$this->db = $this->getCompany($this->header->comp_id);
    }

    public function projectList(){
        $this->getMethod("GET");
        $data = $this->getModelProject()->getListProject($this->db);
        if($data){
            $res = array(
                'msg' =>'Succes get projects data',
                'status' => 200,
                'header' => $this->header,
                'data' => $data
            );
        }
        else{
            http_response_code(404);
            $res = array(
                'msg' =>'Failed get projects data',
                'status' => 400,
                'header' => $this->header,
                'data' => array()
            );
        }
        echo json_encode($res);
    }
}