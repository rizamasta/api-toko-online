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

      /**
       * start quiz home 
       */
      'free/generate-quiz' => "Quiz/Testcase/generate",
      'free/test/(:any)' => "Quiz/Testcase/quiz/$1",
      'free/test-start/(:any)' => "Quiz/Testcase/startTest/$1",
      'free/submit' => "Quiz/Testcase/submit",
      'quiz/result' => "Quiz/Result/index",
      'quiz/detail/(:any)' => "Quiz/Result/detail/$1",
      /**
       * end quiz home
       */

       'page/privacy/term-condition' =>'Page/Privacy/term',
    '404_override' => 'Custom/error_404',
    'translate_uri_dashes' => TRUE
);
