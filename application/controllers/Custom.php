<?php

class Custom extends Abstract_Controller
{
    public function __construct()
    {
    }

    public function error_404()
    {
        http_response_code(404);
        $res = array('msg'=>'Endpoint not found','status'=>404,'data'=>date('d-m-Y H:i:s'));
        echo json_encode($res);
    }
}
