<?php
class Home_model extends CI_Model
{
    protected $tblQ;
    protected $tblA;
    public function __construct(){
        parent::__construct();
        $this->load->database();
    }
}
