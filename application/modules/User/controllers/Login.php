<?php
class Login extends Abstract_Controller{
    public function __construct(){
		header('Access-Control-Allow-Origin: *');
		header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
		$this->header = $this->authApp($this->input->request_headers(),false);
		$this->db = $this->getCompany($this->header->comp_id);
		
			
    }
    public function index(){
        
    }
    public function authentication()
    {
		$this->getMethod("POST");
		$data = json_decode(file_get_contents('php://input'));
		$user = $this->getModelUser()->getUserBy($this->db,array('user_name'=>$data->username,'deleted!='=>1));
		if(!empty($user)){
			$valid = $this->getHash()->CheckPassword($data->password,$user->user_password);
			if(!empty($valid)){
				$data_token = array(
					'token' =>hash('sha256', str_replace(' ', '', $data->username.'-'.$data->password.'-'.date('Y-m-d H:i:s'))),
					'comp_id' => $this->header->comp_id,
					'user_role_id'=> $user->user_role_id,
					'emp_number'=> $user->emp_number,
					'user_name'=> $user->user_name,
					'valid_until'=> date('Y-m-d H:i:s', strtotime('+90 minutes'))
				);
				$this->getModelUser()->insertToken($data_token);
				$res = array('msg'=>'Welcome, '.$user->user_name,'status'=>200,'data'=>$data_token);
			}
			else{
				$res = array('msg'=>'Incorrect credentials','status'=>410,'data'=>array());
			}
			
		}	
		else{
			http_response_code(404);
			$res = array('msg'=>'User not found','status'=>410,'data'=>array());
		}
		echo json_encode($res);
        
    }
    public  function out(){
		$this->getModelUser()->deleteToken($this->header['x-access-token']);
		$res = array('msg'=>'User not found','status'=>200,'data'=>array());
		echo json_encode($res);
    }
    
}
