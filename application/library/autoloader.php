<?php
set_include_path(ROOT.'/application');
spl_autoload_extensions('.php');
spl_autoload_register(
	function($classname) {
		spl_autoload(strtolower(str_replace("\\", "/", $classname)));
	}
);