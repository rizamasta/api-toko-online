<?php
class Register_model extends CI_Model
{
    protected $comp = 'tbl_company';
    public function __construct()
    {
        parent::__construct();
    }

    public function insertCompany($data)
    {
        
        return $this->db->insert($this->comp, $data);
    }
    public function getCompany($condition,$list=false)
    {
        $this->db->select("*");
        $this->db->from($this->comp);
        $this->db->where($condition);
        if($list){
            return $this->db->get()->result();
        }
        else{
            return $this->db->get()->row();
        }
    }
}