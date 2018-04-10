<?php 
class Upload extends Abstract_Controllers{
    public function __construct(){
        $this->header = $this->authApp($this->input->request_headers(),true);
		$this->db = $this->getCompany($this->header->comp_id);
    }
    public function receipt(){
        if (!empty($_FILES['file'])) {
            $image = $_FILES['file'];
            $extension = $this->getExtension($image['name']);
            $image_name = md5(str_replace(' ', '_', date('Ymdhis') . $image['name'])) . '.' . $extension;
            $image_path = "inventory/";
            $destination = 'public_assets/images/' . $image_path . $image_name;
            $base = 'public_assets/images/'.$image_path;
            if(!file_exists($base)){
                mkdir($base,0777,true);
            }
            if (move_uploaded_file($image['tmp_name'], $destination)) {
                $res = array(
                    'msg' =>'Success get data expense '.$start.', '.$end,
                    'status' => 200,
                    'header' => $this->header,
                    'data' => array('image_url'=>$destination)
                );
            }
        }
        else{
            http_response_code(500);
            $res = array(
                'msg' =>'failed upload images',
                'status' => 500,
                'header' => $this->header,
                'data' => array()
            );
        }
        echo json_encode($res);
    }
}