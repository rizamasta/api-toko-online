<?php
defined('BASEPATH') OR exit('No direct script access allowed');


$route = array(
    'default_controller' => "Homepage/home/index",
    'user/login' => "User/Login/index",
    'user/test' => "User/User/test",
    'user/logout' => "User/User/logout",
    'user/login/auth' => "User/Login/auth",
    'user/login/auth-social' => "User/Login/loginSosial",
    '404_override' => 'Custom/error_404',
    'translate_uri_dashes' => TRUE
);
