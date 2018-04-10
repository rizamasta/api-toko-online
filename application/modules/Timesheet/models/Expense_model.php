<?php
class Expense_model extends CI_Model
{
    protected $expense = 'ohrm_expense_item';
    protected $project = 'ohrm_project';
    protected $expense_type = 'ohrm_expense_type';

    
    public function getListExpense($db,$condition,$start=0,$end=20)
    {
        $this->db->select($db.'.'.$this->expense.".*,".$db.'.'.$this->project.".name");
        $this->db->from($db.".".$this->expense);
        $this->db->join($db.'.'.$this->project,$db.'.'.$this->expense.'.project_id = '.$db.'.'.$this->project.'.project_id');
        $this->db->limit($start,$end);
        $this->db->where($condition);
        $this->db->order_by('transaction_date','desc');
        return $this->db->get()->result();
    }

    public function getListExpenseType($db,$condition)
    {
        $this->db->select($db.'.'.$this->expense_type.".*");
        $this->db->from($db.".".$this->expense_type);
        $this->db->where($condition);
        return $this->db->get()->result();
    }

    public function insertExpense($db,$data){
        return $this->db->insert($db.'.'.$this->expense,$data);
    }
    
}
