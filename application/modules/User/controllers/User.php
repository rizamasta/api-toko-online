<?php
class User extends Abstract_Controller
{
    public function __construct(){
        $this->checkLogin(site_url($this->uri->uri_string));
    }
    public function index(){

    }
    public function add(){

    }
    public function checkPassword($id=""){

    }
}
