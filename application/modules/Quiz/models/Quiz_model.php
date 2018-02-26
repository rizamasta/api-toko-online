<?php
class Quiz_model extends CI_Model
{
    protected $tblQ="tbl_quiestion_bank";
    protected $tblA="tbl_question_bank_answer";
    protected $tblAn="tbl_answers_question";
    protected $tblG="tbl_generated_question";
    public function __construct(){
        parent::__construct();
        $this->load->database();
    }

    public function getQuestion($category =1, $limit=50){
        $this->db->select(array(
                                $this->tblQ.".qid",
                                $this->tblQ.".type",
                                $this->tblQ.".category",
                                $this->tblQ.".question",
                                $this->tblQ.".correct_describe"
                        ));
        $this->db->from($this->tblQ);
        $this->db->order_by('rand()');
        $this->db->limit($limit);
        $this->db->where(array(
                                $this->tblQ.".category"=>$category,
                                $this->tblQ.".status"=>1,
                                $this->tblQ.".is_deleted"=>0
                            ));
        $query = $this->db->get();
        return $query->result();
    }

    public function getAnswers($qID){
        $this->db->select(array(
            $this->tblA.".answer_id",
            $this->tblA.".qid",
            $this->tblA.".answer",
            $this->tblA.".weight"
        ));
        $this->db->from($this->tblA);
        // $this->db->order_by('rand()');
        $this->db->where(array(
                                $this->tblA.".qid"=>$qID,
                                $this->tblA.".status"=>1,
                                $this->tblA.".is_deleted"=>0
                            ));
        $query = $this->db->get();
        return $query->result();
    }
    public function getQuiz($gid){
        $this->db->select($this->tblG.'.*');
        $this->db->select('NOW() as `current_time`',FALSE);
        $this->db->from($this->tblG);
        $this->db->where(array(
            $this->tblG.".gid"=>$gid,
            $this->tblG.".is_deleted"=>0
        ));
        $query = $this->db->get();
        return $query->row();
    }

    public function insertQuiz($data){
        return $this->db->insert($this->tblG,$data);
    }
    public function insertAnswer($data){
        return $this->db->insert($this->tblAn,$data);
    }
    public function updateQuiz($data,$condition){
        return $this->db->update($this->tblG,$data,$condition);
    }



}
