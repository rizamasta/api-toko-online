<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$result = array(
	"status" =>500,
	"msg" =>  $message,
);
http_response_code(500);
if (defined('SHOW_DEBUG_BACKTRACE') && SHOW_DEBUG_BACKTRACE === TRUE): 
	$backtrace = array();
	foreach (debug_backtrace() as $error): 

		if (isset($error['file']) && strpos($error['file'], realpath(BASEPATH)) !== 0):
			array_push($backtrace,array('file'=>$error['file'],'line'=>$error['line'],'function'=>$error['function']));
		endif;

	endforeach;
	$result['backtrace']= $backtrace;
	echo json_encode($result);
else :
	echo json_encode($result);
endif;