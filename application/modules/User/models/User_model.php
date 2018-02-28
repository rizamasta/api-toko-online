<?php
class User_model extends CI_Model
{
    protected $_table = 'tbl_user';
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
    public function getAuth($username, $password)
    {
        $this->db->select("*");
        $this->db->from($this->_table);
        $this->db->where("(email='".$username."' AND password='".$password."' AND status=1) OR (username='".$username."' AND password='".$password."')");
        return $this->db->get()->row();
    }
    public function getUserByEmail($username)
    {
        $this->db->select("*");
        $this->db->from($this->_table);
        $this->db->where("email='".$username."'");
        return $this->db->get()->row();
    }
    public function getUser($id)
    {
        $this->db->select("*");
        $this->db->from($this->_table);
        $this->db->where(array("uid"=>$id));
        return $this->db->get()->row();
    }
    public function getAllUser()
    {
        $this->db->select("*");
        $this->db->from($this->_table);
        $this->db->where(array("is_deleted"=>0));
        return $this->db->get()->result();
    }
    public function insertUser($data)
    {
        return $this->db->insert($this->_table, $data);
    }
    public function updateUser($data, $id)
    {
        return $this->db->update($this->_table, $data, array('id' => $id));
    }
}
