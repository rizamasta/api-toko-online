<?php
class User extends Abstract_Controller
{
    public function __construct(){
        $this->checkLogin(site_url($this->uri->uri_string));
    }
    public function test(){
        echo "ohhh";
    }
    public  function logout(){
        $msg = $this->session->flashdata();
        $this->session->unset_userdata('userForHire');
        $this->session->set_flashdata($msg);
        redirect('user/login');
    }
    
}
