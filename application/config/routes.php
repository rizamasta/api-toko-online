<?php
defined('BASEPATH') OR exit('No direct script access allowed');


$route = array(
    'default_controller' => "Default/MyController/index",
    'auth/login' => "User/Login/login",
    'profile/myprofile' => "User/Profile/index",

    /**
     * REGISTER
     */
    'register' => "User/Register/index",
    'test/looping/(:num)' =>  "Default/MyController/looping/$1",

    'upload/receipt' =>  "Upload/Upload/receipt",

    'project/list' => "Default/Project/projectList",
    'page/privacy/term-condition' =>'Page/Privacy/term',
    '404_override' => 'Custom/error_404',
    'translate_uri_dashes' => TRUE
);
