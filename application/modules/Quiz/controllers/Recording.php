<?php 
class Recording extends Abstract_Controller{
	public function __construct(){

	}
	public function save(){
		echo json_encode($_POST);
	}
}