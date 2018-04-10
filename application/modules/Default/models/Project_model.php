<?php
class Project_model extends CI_Model{
    protected $project ="ohrm_project";
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
    public function getListProject($db){
        $this->db->select(
            array(
                $db.'.'.$this->project.".project_id",
                $db.'.'.$this->project.".name",
            )
        );
        $this->db->from($db.'.'.$this->project);
        $this->db->where(array($db.'.'.$this->project.'.is_deleted'=>0));
        return $this->db->get()->result();
    }
}