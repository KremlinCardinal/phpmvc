<?php
namespace controllers;

use models;
use library\database as ld;
class user {
    private $db;

    public $loginerror;

    function __construct() {
        $this->db = new ld\query();
        $this->loginerror = '';
    }

    public function login() {
        if((isset($_GET['loggedin']) && $_GET['loggedin'] == "false") && (isset($_GET['showerror']) && $_GET['showerror'] == "true")) {
            $this->loginerror = 'Verkeerde gebruikersnaam of wachtwoord ingevoerd';
        }
    }

    public function logout() {
        session_unset();
        header("Location: ".BASE."/content/loggedout");
    }
}