<?php 
class Recording extends Abstract_Controller{
	public function __construct(){

	}
	public function save(){
        if(!file_exists('public_assets/uploads/videos')){
            mkdir('public_assets/uploads/videos/',0777,true);
        }
	   header("Access-Control-Allow-Origin: *");
        if (!isset($_POST['video-filename'])) {
            $res = array(
                'status' =>'error',
                'qid' =>!empty($_POST['qid'])?$_POST['qid']:'Empty ID',
                'file_path'=>'error',
                'message' => 'Empty paramters'
            );
            $fileName ='';
            $tempName ='';
        }
        else{
            $fileName = $_POST['video-filename'];
            $tempName = $_FILES['video-blob']['tmp_name'];
        }

        if (empty($fileName) || empty($tempName)) {
            $res = array(
                'status' =>'error',
                'qid' =>!empty($_POST['qid'])?$_POST['qid']:'Empty ID',
                'file_path'=>'error',
                'message' => 'Empty File upload '
            );
        }
        
        $filePath = 'public_assets/uploads/videos/' . $fileName;

        // make sure that one can upload only allowed audio/video files
        $allowed = array(
            'webm',
            'wav',
            'mp4',
            'mp3',
            'ogg'
        );
        $extension = pathinfo($filePath, PATHINFO_EXTENSION);
        if (!$extension || empty($extension) || !in_array($extension, $allowed)) {
            $res = array('status' =>'error',
                'qid' =>!empty($_POST['qid'])?$_POST['qid']:'Empty ID',
                'file_path'=>'error',
                'message' => 'Extension is not allower'
            );
        }
        try{
            move_uploaded_file($tempName, $filePath);
            $res = array(
                'status' =>'success',
                'qid' =>!empty($_POST['qid'])?$_POST['qid']:'Empty ID',
                'file_path'=>$filePath,
                'message' => 'Success'
            );
        }
        catch(Error $e){
            $res = array(
                'status' =>'error',
                'qid' =>!empty($_POST['qid'])?$_POST['qid']:'Empty ID',
                'file_path'=>'error',
                'message' => $e
            );
        }
        $val = json_encode($res);
        $this->getModelQuiz()->insertLog(array('message'=>$val));
        echo $val;
	}
}