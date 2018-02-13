<?php

(defined('BASEPATH')) OR exit('No direct script access allowed');

/* load the MX_Loader class */
require APPPATH . "third_party/MX/Controller.php";


class Abstract_Controller extends MX_Controller {

    public function __construct() {
        parent::__construct();

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
}
