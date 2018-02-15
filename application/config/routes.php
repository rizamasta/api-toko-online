<?php
defined('BASEPATH') OR exit('No direct script access allowed');


$route = array(
    'default_controller' => "Homepage/home/index",
    /**
     * authentication start
     */
    'user/login' => "User/Login/index",
    'user/login/out' => "User/Login/out",
    'user/login/auth' => "User/Login/authentication",
    'user/login/auth-social' => "User/Login/social",
    /**
     * authentication end
     */

     /**
      * usermanagement start
      */
      'user/list' => "User/User/index",
      /**
      * usermanagement end
      */
    '404_override' => 'Custom/error_404',
    'translate_uri_dashes' => TRUE
);
