<?php 
class Profile extends Abstract_Controller
{
    public function __construct(){
        $this->header = $this->authApp($this->input->request_headers(),true);
		$this->db = $this->getCompany($this->header->comp_id);
    }

    public function index(){
        $this->getMethod("GET");
        $data = $this->getModelProfile()->getProfile($this->db,array('emp_number'=>$this->header->emp_number));
        if(!empty($data)){
            $res = array(
                'msg' =>'Success get profile',
                'status' => 200,
                'header' => $this->header,
                'data' => $data
            );
        }
        else{
            http_response_code(404);
            $res = array(
                'msg' =>'Failed get profile',
                'status' => 400,
                'header' => $this->header,
                'data' => array()
            );
        }
        echo json_encode($res);
    }

    public function edit(){
        $this->getMethod("POST");
        $data = json_decode(file_get_contents('php://input'));
        $update_data = array(
            "emp_lastname"=>$data->emp_lastname,
            "emp_firstname"=>$data->emp_firstname,
            "emp_middle_name"=>$data->emp_middle_name,
            "emp_street1"=>$data->emp_street1,
            "emp_street2"=>$data->emp_street1,
            "emp_hm_telephone"=>$data->emp_hm_telephone,
            "emp_mobile"=> $data->emp_mobile,
            "emp_work_telephone"=>$data->emp_work_telephone,
            "emp_work_email"=> $data->emp_work_email
        );

       if($this->getModelProfile()->updateProfile($this->db, $update_data, $this->header->emp_number)){
            $res = array(
                'msg' =>'success update profile',
                'status' => 200,
                'header' => $this->header,
                'data' => array()
            );
        }
        else{
            http_response_code(400);
            $res = array(
                'msg' =>'Failed get profile',
                'status' => 400,
                'header' => $this->header,
                'data' => array()
            );
        }

        echo json_encode($res);

    }

}
