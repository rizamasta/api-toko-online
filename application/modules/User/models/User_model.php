<?php
class User_model extends CI_Model
{
    protected $_table = 'table_user';
    protected $_comp = 'table_company';
    protected $_role = 'table_role';
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
    public function auth($username, $password)
    {
        $this->db->select(array(
            $this->_table.".id",
            $this->_table.".comp_id",
            $this->_table.".user_name",
            $this->_table.".real_name",
            $this->_comp.".comp_name",
            $this->_comp.".comp_desc",
            $this->_comp.".comp_address",
            $this->_comp.".comp_phone",
            $this->_comp.".comp_fax",
            $this->_role.".menu",

        ));
        $this->db->from($this->_table);
        $this->db->join($this->_comp,$this->_comp.'.comp_id='.$this->_table.".comp_id");
        $this->db->join($this->_role,$this->_role.'.id_role='.$this->_table.".id_role");
        $this->db->where("(email='".$username."' AND password='".$password."' AND ".$this->_table.".status=1) OR (user_name='".$username."' AND password='".$password."')");
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
