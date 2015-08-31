<?php
namespace controllers;

use models\database as md;
class content {
	public $currentClass;
    public $controllerTitle;
	public $show_test;
	public $add_boe;
	public $table_result;
	public $internalRequest_result;

	function __construct() {
		$this->currentClass = get_class();
		$this->controllerTitle = '<h4>Controller = '.get_class().'</h4>';
	}

    public function show() {
		$this->show_test = 'Teststring in show';
    }

    public function add() {
		$this->add_boe = 'Boe';
    }

	public function error() {
		if(1 != 2) {
			throw new \Exception('<b>Error:</b> One does not equal with two in <b>'.__METHOD__.'</b> in file <b>'.__FILE__.'</b> on line <b>'.__LINE__.'</b>');
		}
	}

	public function table() {
		$db = new md\query();
		$res = $db->maakTabel("SELECT * FROM klanten");
		$this->table_result = $res;
	}

	public function internalRequest() {
		$db = new md\query();
		$res = $db->getArray("SELECT * FROM klanten");

		$this->internalRequest_result = json_encode($res, JSON_PRETTY_PRINT);
	}
}