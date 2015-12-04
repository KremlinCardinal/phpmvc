<?php
namespace library;

class mvc {
	private $view;
	private $action;
	private $controller;
	private $controllerstring;
    private $viewfile;
//    private $scripts;

	public function run() {
		if(empty($_GET)) {
            $_GET['uri'] = 'content/show';
        }
            self::startController();
            return self::getViewContents();
	}

	private function startController()
    {

        $router = new router();
        $controller = "controllers\\" . $router->getController();;
        $this->controller = $controller;
        $this->controllerstring = "controllers_" . $router->getController();

        $obj = new $controller();
        $method = $router->getAction();
        $this->action = $method;

        try {
            $obj->$method();
            $this->view = $obj;

            if (!empty($obj->view)) {
                $this->viewfile = $obj->view;
            } else {
                $this->viewfile = $method;
            }
        } catch (\Exception $e) {
            $this->render = '<p class="errorMessage">' . $e->getMessage() . '</p>';
        }
    }

	private function getViewContents() {
        $layout = file_get_contents(ROOT . '/application/views/layout/default.phtml');
        if(empty($this->render)) {
            ob_start();
            $file = file_get_contents(ROOT . '/application/views/' . $this->controllerstring . '/' . $this->viewfile . '.phtml');
            eval('?>' . $file);
            $this->render = ob_get_clean();
        }
        ob_start();
		eval('?>'.$layout);
		return ob_get_clean();
	}
}