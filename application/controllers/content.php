<?php
namespace controllers;

use models;
use library\database as ld;
class content {
    private $db;

    public $scripts = array();
    public $styles = array();

	public $currentClass;
    public $controllerTitle;
	public $show_test;
	public $add_boe;
	public $table_result;
	public $internalRequest_result;

    public $berendform_Klantnr;
    public $berendform_Voorletters;
    public $berendform_Voorvoegsel;
    public $berendform_Naam;
    public $berendform_Adres;
    public $berendform_Postcode;
    public $berendform_Plaats;
    public $berendform_Telefoon;
    public $berendform_Kredietcode;
    public $formerror = false;
    public $berendform_errormessage = '';

    public $getvalues;

	function __construct() {
		$this->currentClass = get_class();
		$this->controllerTitle = '<h4>Controller = '.get_class().'</h4>';
        $this->db = new ld\query();
        $this->scripts[] = '<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>';
        $this->styles[] = '<style>body{background-color: lightyellow}</style>';
	}

    public function show() {
		$this->show_test = 'Teststring in show';
    }

    public function add() {
		$this->add_boe = 'Boe';
        $this->view = 'show';
        $this->show_test = 'melachm';
    }

	public function error() {
		if(1 != 2) {
			throw new \Exception('<b>Error:</b> One does not equal with two in <b>'.__METHOD__.'</b> in file <b>'.__FILE__.'</b> on line <b>'.__LINE__.'</b>');
		}
	}

	public function table() {
		$res = new models\content();
		$this->table_result = $res->giveTable('SELECT * FROM klanten');
	}

	public function internalRequest() {
		$res = new models\content();
		$this->internalRequest_result = json_encode($res->internalRequest('SELECT * FROM klanten'), JSON_PRETTY_PRINT);
	}

    public function berendform() {
        $res = new models\content();
        if(!empty($_POST)) {
            $klantnr = $_POST['Klantnr'];
            $voorletters = $_POST['Voorletters'];
            $voorvoegsel = $_POST['Voorvoegsel'];
            $naam = $_POST['Naam'];
            $adres = $_POST['Adres'];

            if(preg_match('/^\d{4}\s?[a-z]{2}$/i',$_POST['Postcode']) === 1) {
                $postcode = $_POST['Postcode'];
            } else {
                $this->formerror = true;
                $this->berendform_errormessage .= 'Postode onjuist ingevuld. Format: 1234 AB';
            }

            $telefoon = $_POST['Telefoon'];
            $kredietcode = $_POST['Kredietcode'];

            if(!$this->formerror) {
                $res->update("UPDATE klanten SET Voorletters = '$voorletters', Voorvoegsel = '$voorvoegsel', Naam = '$naam', Adres = '$adres', Postcode = '$postcode', Telefoon = '$telefoon', Kredietcode = '$kredietcode' WHERE Klantnr = '$klantnr'");
            }

        }
        $formdata = $res->internalRequest('SELECT * FROM klanten WHERE Klantnr = 10010362');

        $this->berendform_Klantnr = $formdata[0]['Klantnr'];
        $this->berendform_Voorletters = $formdata[0]['Voorletters'];
        $this->berendform_Voorvoegsel = $formdata[0]['Voorvoegsel'];
        $this->berendform_Naam = $formdata[0]['Naam'];
        $this->berendform_Adres = $formdata[0]['Adres'];
        $this->berendform_Postcode = $formdata[0]['Postcode'];
        $this->berendform_Plaats = $formdata[0]['Plaats'];
        $this->berendform_Telefoon = $formdata[0]['Telefoon'];
        $this->berendform_Kredietcode = $formdata[0]['Kredietcode'];
    }

    public function loggedin() {
        $this->getvalues = $_GET;
        if(empty($_SESSION['loggedin'])) {
            $_SESSION['loggedin'] = $_GET['loggedin'];
        }
        if(empty($_SESSION['securetoken'])) {
            $_SESSION['securetoken'] = $_GET['securetoken'];
        }

    }

    public function loggedout() {}
}