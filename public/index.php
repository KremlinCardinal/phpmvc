<?php
session_start();
define('ROOT', dirname(__DIR__));

include_once ROOT."/application/library/autoloader.php";    //include autoloader

use library as lib;

new lib\setup();
$mvc = new lib\mvc();

$render = $mvc->run();

echo $render;
?>



