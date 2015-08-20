<?php
namespace library;

class setup {
	private $config;

	function __construct() {
		$this->config = json_decode(file_get_contents(ROOT.'/application/config.json'),true);
		$this->setConstants();
	}

	public function setConstants() {
		foreach($this->config['constants'] as $key => $val) {
			define($key,$val);
		}

		foreach($this->config['database'] as $key => $val) {
			define($key,$val);
		}
	}
}