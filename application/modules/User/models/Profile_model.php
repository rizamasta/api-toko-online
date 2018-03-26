<?php
class Profile_model extends CI_Model
{
    protected $employee = 'hs_hr_employee';
    
    public function getProfile($db,$condition)
    {
        $this->db->select("*");
        $this->db->from($db.".".$this->employee);
        $this->db->where($condition);
        return $this->db->get()->row();
    }
    public function updateProfile($db,$data, $id)
    {
        return $this->db->update($db.".".$this->employee, $data, array('emp_number' => $id));
    }
}
