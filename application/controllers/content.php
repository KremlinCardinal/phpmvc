<?php
namespace controllers;

use models\content as mc;
use library\database as ld;
class content {
	public $currentClass;
    public $controllerTitle;
	public $show_test;
	public $add_boe;
	public $table_result;
	public $internalRequest_result;
    public $db;

	function __construct() {
		$this->currentClass = get_class();
		$this->controllerTitle = '<h4>Controller = '.get_class().'</h4>';
        $this->db = new ld\query();
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
		$res = new mc\table();
		$this->table_result = $res->giveTable();
	}

	public function internalRequest() {
		$res = new mc\internalRequest();
		$this->internalRequest_result = json_encode($res->returnTable(), JSON_PRETTY_PRINT);
	}
}