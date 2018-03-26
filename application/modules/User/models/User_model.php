<?php
class User_model extends CI_Model
{
    protected $_table = 'ohrm_user';
    protected $employee = 'hs_hr_employee';
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
    public function getUserBy($db,$condition=array())
    {
        $this->db->select("*");
        $this->db->from($db.".".$this->_table);
        $this->db->where($condition);
        return $this->db->get()->row();
    }
    public function getUser($db,$condition)
    {
        $this->db->select("*");
        $this->db->from($db.".".$this->employee);
        $this->db->where($condition);
        return $this->db->get()->row();
    }
    public function getToken($id)
    {
        $this->db->select("*");
        $this->db->from("access_token");
        $this->db->where(array("token"=>$id,"valid_until>="=>date('Y-m-d H:i:s')));
        return $this->db->get()->row();
    }
    public function updateToken($data,$id)
    {
        return $this->db->update("access_token", $data, array('token' => $id));
    }
    public function deleteToken($id)
    {
        return $this->db->delete("access_token", array('token' => $id));
    }
    public function insertToken($data)
    {
        return $this->db->insert("access_token", $data);
    }
    public function getAllUser($db)
    {
        $this->db->select("*");
        $this->db->from($db.".ohrm_user");
        return $this->db->get()->result();
    }
    public function insertUser($data)
    {
        return $this->db->insert($this->_table, $data);
    }
    public function updateUser($data, $id)
    {
        return $this->db->update($this->_table, $data, array('uid' => $id));
    }
}
