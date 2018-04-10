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
        $data = json_decode(file_get_contents('php://input'));
        $insert_data = array (
            "expense_desc" => $data->expense_desc,
            "project_id" => $data->project_id_base,
            "expense_type_id" => $data->expense_type_id,
            "amount" => $data->amount,
            "image_url" => $data->receipt,
            "transaction_date" =>$data->transaction_date,
            "emp_number" => $this->header->emp_number
        );
        $insert = $this->getModelExpense()->insertExpense($this->db,$insert_data);
        if(!empty($insert)){
            $res = array(
                'msg' =>'Success create data expense',
                'status' => 200,
                'header' => $this->header,
                'data' => $data
            );
        }
        else{
            http_response_code(404);
            $res = array(
                'msg' =>'Failed create data',
                'status' => 400,
                'header' => $this->header,
                'data' => array()
            );
        }
        echo json_encode($res);
    }

    public function getExpenseType(){
        $this->getMethod("GET");
        $data = $this->getModelExpense()->getListExpenseType($this->db,array('expense_status'=>1));
        if(!empty($data)){
            $res = array(
                'msg' =>'Success get data expense type',
                'status' => 200,
                'header' => $this->header,
                'data' => $data
            );
        }
        else{
            http_response_code(404);
            $res = array(
                'msg' =>'Failed get expense type',
                'status' => 400,
                'header' => $this->header,
                'data' => array()
            );
        }
        echo json_encode($res);
    }

}