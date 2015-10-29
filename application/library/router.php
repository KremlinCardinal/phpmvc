<?php
namespace library;

class router extends mvc {
	private $_requestURI;
	private $_controller;
	private $_action;
	private $_mapArray = array();

	public function __construct() {
		$this->setMapArray();
		$this->_requestURI = explode('/', $_GET['uri']);
		$this->checkRoute();
	}

	private function setMapArray() {
		$this->_mapArray = array(
			'content' => array(
				'add',
				'error',
				'show',
				'table',
				'internalRequest',
                'berendform',
                'loggedin',
                'loggedout'
			),
			'gallery' => array(
				'show'
			),
			'external' => array(
				'vakanties'
			),
            'user' => array(
                'login',
                'logout'
            )
		);
	}

	private function getMapArray() {
		return $this->_mapArray;
	}

	public function getRequestURI() {
		return $this->_requestURI;
	}

	public function getController() {
		return $this->_controller;
	}

	public function getAction() {
		return $this->_action;
	}

	private function checkRoute() {

		$mapArray = $this->getMapArray();

		$pController = $this->getRequestURI()[0];
		$pAction = $this->getRequestURI()[1];
		$actionFound = false;

		if(isset($mapArray[$pController])) {
			$this->_controller = $pController;
			foreach($mapArray[$pController] as $key => $val) {
				if($val == $pAction) {
					$this->_action = $pAction;
					$actionFound = true;
					break;
				}
			}
			if(!$actionFound) {
				$this->_controller = 'error';
				$this->_action = 'notfound';
			}
		} else {
			$this->_controller = 'error';
			$this->_action = 'notfound';
		}
	}
}