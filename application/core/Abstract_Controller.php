<?php

(defined('BASEPATH')) OR exit('No direct script access allowed');

/* load the MX_Loader class */
require APPPATH . "third_party/MX/Controller.php";


class Abstract_Controller extends MX_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->database();
    }

    /**
     *
     * @return Array  Of User info
     */
    public function userInfo()
    {
        return $this->session->userdata('userToko');
    }
    public function getMethod($req){
        if($req==$_SERVER["REQUEST_METHOD"]){
            return true;
        }
        else{
            http_response_code(400);
            $res = array('msg'=>'Your request is unexpected','status'=>400,'data'=>date('d-m-Y H:i:s'));
            echo json_encode($res);
            die();
        }
    }

    public function getCompany($req){
        $data = $this->getModelDefault()->getCompany($req);
        if(!empty($data)){
            return $data;
        }
        else{
            http_response_code(500);
            $res = array('msg'=>'Unknown company','status'=>500,'data'=>date('d-m-Y H:i:s'));
            echo json_encode($res);
            die();
        }
    }
    /**
     * Model Default
     */
    public function getModelDefault(){
        $this->load->model('Default/Default_model');
        return new Default_model();
    }
    /**
     * --------------------------------------------------------------------------------------------------------------------------------
     * Master
     * --------------------------------------------------------------------------------------------------------------------------------
     * Model Konsumen
     */
    public function getModelMasterKonsumen(){
        $this->load->model('Master/Konsumen_model');
        return new Konsumen_model();
    }
    
    /**
     * --------------------------------------------------------------------------------------------------------------------------------
     * Transaksi
     * --------------------------------------------------------------------------------------------------------------------------------
     * Penjualan
     */
    public function getModelTransaksiPenjualan(){
        $this->load->model('Transaksi/Penjualan_model');
        return new Penjualan_model();
    }
    public function authApp($header,$needLogin=false){
        $res = array('msg'=>'default');
        if(!empty($header['comp_id'])){
            if($needLogin){
                if(!empty($header['x-access-token'])){
                    $hash_default = $header['x-access-token'];
                    $dataToken = $this->getModelUser()->getToken($hash_default);
                    if(!empty($dataToken)){
                        $new_hash = hash('sha256', str_replace(' ', '', $header['x-access-token']));
                        $dataToken->valid_until = date('Y-m-d H:i:s', strtotime('+90 minutes'));
                        $this->getModelUser()->updateToken($dataToken,$hash_default);
                    $dataToken = $this->getModelUser()->getToken($hash_default);
                        return $dataToken;
                    }
                    else{
                        $res = array('msg'=>'Token invalid','status'=>411,'data'=>date('d-m-Y H:i:s'));
                        echo json_encode($res);
                        die();
                    }
                }
                else{
                    http_response_code(401);
                    $res = array('msg'=>'User must login','status'=>410,'data'=>date('d-m-Y H:i:s'));
                    echo json_encode($res);
                    die();
                }
            }
            else{
                return $res = (object)array('comp_id'=>$header['comp-id']);   
                echo json_encode($res);
                die();                         
            }
        }
        else{
            http_response_code(401);
            $res = array('msg'=>'Access Denied','status'=>410,'data'=>date('d-m-Y H:i:s'));
            echo json_encode($res);
            die();
        }
    }

    public function getHeader($header=array()){
        if(!empty($header['key'])){
            return $this->key = json_decode($header['key']); 
        }
        else{
            $result = array(
                "status" =>401,
                "msg" =>  'Akses di tolak',
            );
            echo json_encode($result); 
            http_response_code(401);
            die();
        }
    }

    public function checkLogin($url="")
    {
        $status = $this->session->userdata('userForHire');
        $rd ="";
        if (empty($status)) {
            if(!empty($url)){
                $rd="?redir=".$url;
            }
            redirect('user/login'.$rd);
        } else {
            return $status;
        }
    }

    public function checkPermission($role,$allowed){
        if(in_array($role,$allowed)){
            return true;
        }
        else{
            $msg = array(
                'alert_msg'=>"Access denied, you don't have privileges to access that",
                'type_msg'=>'error',
                );
            $this->session->set_flashdata($msg);
            redirect("logout");
            return false;
        }
    }

    /**
     * User model
     */
    public function getModelUser(){
        $this->load->model('User/User_model');
        return new User_model();
    }
    
    /**
     * Register Model
     */
    public function getModelRegister(){
        $this->load->model('User/Register_model');
        return new Register_model();
    }
    /**
     *
     * @param type $array
     * @return array beutifier
     */
    public function pr($array) {
        echo "<pre>";
        print_r($array);
        die;
    }

    
     /**
     *
     * @param type $action
     * @param type $string
     * @param type $secret_key
     * @return type
     */
    public function encrypt_decrypt($action, $string, $secret_key) {
        $output = false;

        $encrypt_method = "AES-256-CBC";
        $secret_iv = "";

        // hash
        $key = hash('sha256', $secret_key);

        // iv - encrypt method AES-256-CBC expects 16 bytes - else you will get a warning
        $iv = substr(hash('sha256', $secret_iv), 0, 16);

        if ($action == 'encrypt') {
            $output = openssl_encrypt($string, $encrypt_method, $key, 0, $iv);
            $output = base64_encode($output);
        } else if ($action == 'decrypt') {
            $output = openssl_decrypt(base64_decode($string), $encrypt_method, $key, 0, $iv);
        }

        return $output;
    }

    /**
     *
     * @param String Get Extension
     * @return String Extension
     */
    public function getExtension($str)
    {
      $i = strrpos($str,".");
      if (!$i) { return ""; }
      $l = strlen($str) - $i;
      $ext = substr($str,$i+1,$l);
      return $ext;
    }

    public function dataTablesAjax($table, $primaryKey, $columsArray = array(), $sqljoinQuery = NULL, $extraWhere = null,$groupBy =null) {
      $tables = $table;
      // primaryKeys Tables
      $primaryKeys = $primaryKey;

      // echo $tables;die;
      $columns = $columsArray;
      $database = $this->load->database('default', TRUE);
      $sql_details = array(
          'user' => $database->username,
          'pass' => $database->password,
          'db' => $database->database,
          'host' => $database->hostname,
      );
      // print_r($sql_details);die;
      require APPPATH . "third_party/MX/ssp.customized.class.php";
      echo json_encode(
              SSP::simple($_GET, $sql_details, $tables, $primaryKeys, $columns, $sqljoinQuery, $extraWhere,$groupBy)
      );
      // echo $this->db->last_query();die;
    }

    public function getHash(){
        require APPPATH . "third_party/MX/PasswordHash.php";
        return new PasswordHash(12,false);
    }

    public function slugify($text)
    {
      // replace non letter or digits by -
      $text = preg_replace('~[^\pL\d]+~u', '-', $text);

      // transliterate
      $text = iconv('utf-8', 'us-ascii//TRANSLIT', $text);

      // remove unwanted characters
      $text = preg_replace('~[^-\w]+~', '', $text);

      // trim
      $text = trim($text, '-');

      // remove duplicate -
      $text = preg_replace('~-+~', '-', $text);

      // lowercase
      $text = strtolower($text);

      if (empty($text)) {
        return 'n-a';
      }

      return $text;
    }
    function getDomain() {
        $protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off' || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
        $domainName = $_SERVER['HTTP_HOST'] . '/';
        return $protocol . $domainName;
    }
}
