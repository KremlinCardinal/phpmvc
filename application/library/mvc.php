<?php
namespace library;

class mvc {
	private $view;
	private $action;
	private $controller;
	private $controllerstring;

	public function run() {
		if(empty($_GET)) {
			$_GET['uri'] = 'content/show';
		}

		self::startController();
		return self::getViewContents();
	}

	private function startController() {
		$router = new router();
		$controller = "controllers\\".$router->getController();;
		$this->controller = $controller;
		$this->controllerstring = "controllers_".$router->getController();

		$obj = new $controller();
		$method = $router->getAction();
		$this->action = $method;

		$obj->$method();
		$this->view = $obj;
	}

	private function getViewContents() {
		ob_start();
		$file = file_get_contents(ROOT.'/application/views/'.$this->controllerstring.'/'.$this->action.'.phtml');
		eval('?>'.$file);
		return ob_get_clean();
	}
}