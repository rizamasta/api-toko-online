<?php
class Expense_model extends CI_Model
{
    protected $expense = 'ohrm_expense_item';
    protected $project = 'ohrm_project';

    
    public function getListExpense($db,$condition,$start=0,$end=20)
    {
        $this->db->select($db.'.'.$this->expense.".*,".$db.'.'.$this->project.".name");
        $this->db->from($db.".".$this->expense);
        $this->db->join($db.'.'.$this->project,$db.'.'.$this->expense.'.project_id = '.$db.'.'.$this->project.'.project_id');
        $this->db->limit($start,$end);
        $this->db->where($condition);
        return $this->db->get()->result();
    }
    public function updateProfile($db,$data, $id)
    {
        return $this->db->update($db.".".$this->employee, $data, array('emp_number' => $id));
    }
}
