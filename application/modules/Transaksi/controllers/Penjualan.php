<?php
Class Penjualan extends Abstract_Controller
{
    public function __construct(){
        $this->key = $this->getHeader($this->input->request_headers());
    }   
    public function index(){
        $result = array(
            "status" =>403,
            "msg" =>  'access forbiden',
        );
        echo json_encode($result); 
        http_response_code(403);
    }
    public function add(){
        $data = json_decode(file_get_contents('php://input'));
        $data_penjualan = array(
                                'comp_id'=>$this->key->comp_id,
                                'id_kons' => $data->id_kons,
                                'no_invoice' =>$data->no_invoice,
                                'created_by' =>$data->user
                            );
        $this->getModelTransaksiPenjualan()->addPenjualan($data_penjualan);
        $result = array(
            "status" =>200,
            "msg" =>  'Berhasil menambah penjualan',
        );
        echo json_encode($result);
    }
    public function add_detail($id=""){

    }
    public function view($id=""){
        $condition = array(
                            'table_penjualan.comp_id'=>$this->key->comp_id,
                            'DATE(table_penjualan.created_at)'=>date('Y-m-d')
                        );
        if(!empty($id)){
            $condition['no_invoice']=$id;
        }
        
        $data_penjualan = $this->getModelTransaksiPenjualan()->getPenjualan($condition,array('table_penjualan.*','table_konsumen.nm_kons'));
        echo json_encode(array('status'=>200,'msg'=>'Data penjualat','data'=>$data_penjualan));

    }
    public function update($id=""){

    }
    public function delete($id=""){

    }
    public function delete_detail($id=""){

    }
}