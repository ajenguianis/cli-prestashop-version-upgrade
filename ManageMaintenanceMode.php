<?php
include('../config/config.inc.php');
$token = getopt('', array('token:'));
if (!$token || $token != 'b48a877f50d20963eaa2ccab09651c877f') {
    die('UNAUTHORIZED: You are not authorized to visit this page!');
}
$action = getopt('', array('action:'));
if (!$action) {
    die('You have to set action');
}

if($action=='enable'){
    Configuration::updateValue('PS_SHOP_ENABLE', '0');
}
if($action=='disable'){
    Configuration::updateValue('PS_SHOP_ENABLE', '1');
}
return true;