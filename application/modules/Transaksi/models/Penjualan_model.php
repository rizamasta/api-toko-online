<?php
class Penjualan_model extends CI_model{

    private $tbl= 'table_penjualan';
    private $konsumen= 'table_konsumen';
    public function getPenjualan($condition =array(),$column='*',$single=false){
        $this->db->select($column);
        $this->db->from($this->tbl);
        $this->db->join($this->konsumen,$this->tbl.'.id_kons='.$this->konsumen.'.id_kons','left');
        if(!empty($condition)){
            $this->db->where($condition);
        }

        if($single){
            return $this->db->get()->row();
        }
        else{
            return $this->db->get()->result();
        }
    }
    public function addPenjualan($data =array()){
        return $this->db->insert($this->tbl,$data);
    }
}