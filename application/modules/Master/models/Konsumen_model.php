<?php
class Konsumen_model extends CI_Model{
    protected $tbl = 'table_konsumen';

    public function getKonsumen($condition=array(),$column='*',$single=false){
        $this->db->select($column);
        $this->db->from($this->tbl);
        $this->db->where(array('id_kons'=>1));
        if(!empty($condition)){
            if(!empty($condition['id_kons'])){
                $this->db->where($condition);
            }
            else{
                $this->db->or_where($condition);
            }
        }
        if(!empty($condition['id_kons'])){
            return $this->db->get()->row();
        }
        else{
            if($single==true){
                return $this->db->get()->row();
            }
            else{
                return $this->db->get()->result();
            }
        }
    }
}