<?php
class Default_model extends CI_Model{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
    public function getCompany($id){
        $this->db->select("*");
        $this->db->from("applications");
        $this->db->where("comp_id='".$id."'");
        return $this->db->get()->row();
    }
}