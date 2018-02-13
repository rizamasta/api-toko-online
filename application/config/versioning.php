<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$config['appName'] = '4Hire';

//Version Folder
define('versionTemplate',   "v1");

//Version Path
$config['vbody'] = 'body/'.constant('versionTemplate').'/';
$config['verror'] = 'errors/custom/'.constant('versionTemplate').'/';
$config['vtemplate'] = 'template/'.constant('versionTemplate').'/';

//Version Template Path
$config['tbody'] = constant('versionTemplate').'/';
