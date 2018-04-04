<?php
defined('BASEPATH') OR exit('No direct script access allowed');


$route = array(
    'default_controller' => "Default/MyController/index",
    'user/authentication' => "User/Login/authentication",
    'profile/myprofile' => "User/Profile/index",

    'time/expense-list' => "Timesheet/Expense/listExpense",
    'page/privacy/term-condition' =>'Page/Privacy/term',
    '404_override' => 'Custom/error_404',
    'translate_uri_dashes' => TRUE
);
