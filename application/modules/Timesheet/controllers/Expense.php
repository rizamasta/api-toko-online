<?php
class Expense extends Abstract_controller{
    public function __construct(){
        $this->header = $this->authApp($this->input->request_headers(),true);
		$this->db = $this->getCompany($this->header->comp_id);
    }
    public function listExpense(){
        $this->getMethod("GET");
        $start  = !empty($this->input->get('start'))?$this->input->get('start'):'0';
        $end    = !empty($this->input->get('end'))?$this->input->get('end'):20;
        $data = $this->getModelExpense()->getListExpense($this->db,array('emp_number'=>$this->header->emp_number),$start,$end);
        if(!empty($data)){
            $res = array(
                'msg' =>'Success get data expense '.$start.', '.$end,
                'status' => 200,
                'header' => $this->header,
                'data' => $data
            );
        }
        else{
            http_response_code(404);
            $res = array(
                'msg' =>'Failed get expense data',
                'status' => 400,
                'header' => $this->header,
                'data' => array()
            );
        }
        echo json_encode($res);
    }
    public function addExpense(){
        $this->getMethod("POST");
        $start  = !empty($this->input->get('start'))?$this->input->get('start'):'0';
        $end    = !empty($this->input->get('end'))?$this->input->get('end'):20;
        $data = $this->getModelExpense()->getListExpense($this->db,array('emp_number'=>$this->header->emp_number),$start,$end);
        if(!empty($data)){
            $res = array(
                'msg' =>'Success get data expense '.$start.', '.$end,
                'status' => 200,
                'header' => $this->header,
                'data' => $data
            );
        }
        else{
            http_response_code(404);
            $res = array(
                'msg' =>'Failed get expense data',
                'status' => 400,
                'header' => $this->header,
                'data' => array()
            );
        }
        echo json_encode($res);
    }

}