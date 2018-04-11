<?php 
class Upload extends Abstract_Controller {
    public function __construct(){
        $this->header = $this->authApp($this->input->request_headers(),true);
		$this->db = $this->getCompany($this->header->comp_id);
    }
    public function receipt(){
        $data = json_decode(file_get_contents('php://input'));
        if (!empty($_FILES['receipt'])) {
            $image = $_FILES['receipt'];
            $extension = $this->getExtension($image['name']);
            $image_name = md5(str_replace(' ', '_', date('Ymdhis') . $image['name'])) . '.' . $extension;
            $destination = UPLOAD_PATH.$this->db.'/symfony/web/uploads/expense/'.$this->header->emp_number.'/'.date('Ym').'/';
            if(!file_exists($destination)){
                mkdir($destination,0777,true);
            }
            $dst = $destination.$image_name;
            if (move_uploaded_file($image['tmp_name'], $dst)) {
                $res = array(
                    'msg' =>'Success upload receipt',
                    'status' => 200,
                    'header' => $this->header,
                    'data' => array(
                        'image_url'=>'/expense/'.$this->header->emp_number.'/'.date('Ym').'/'.$image_name,
                        'url' => $dst
                        )
                );
            }
            else{
                $res = array(
                    'msg' =>'Failed upload receipt',
                    'status' => 200,
                    'header' => $this->header,
                    'data' => array(
                        'image_url'=>'/expense/'.$this->header->emp_number.'/'.date('Ym').'/'.$image_name,
                        'url' => $dst
                        )
                );
            }
        }
        else{
            http_response_code(500);
            $res = array(
                'msg' =>'failed upload images',
                'status' => 500,
                'header' => $this->header,
                'data' => $_FILES['receipt']
            );
        }
        echo json_encode($res);
    }
}