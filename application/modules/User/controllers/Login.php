<?php
class Login extends Abstract_Controller{
    public function __construct(){
			header('Access-Control-Allow-Origin: *');
    }
    public function index(){
        
	}
	public function login()
    {
        $response = array("status" => true);
		$this->getMethod("POST");
		$data = json_decode(file_get_contents('php://input'));
		
        if (!empty($data->username) && !empty($data->password)) {
			$query = $this->getModelUser()->auth($data->username,SHA1($data->password));
            if (!empty($query)) {
				$response = array(
					"status" => true,
					"data" => $query,
				);
			}
			else {
				$response = array(
					"status" => false,
					"msg" => " Wrong Username or Password!");
			}
        } else {
            $response = array(
                "status" => false,
                "msg" => "Data Tidak Lengkap!");
        }

        echo json_encode($response);
    }
    
}
