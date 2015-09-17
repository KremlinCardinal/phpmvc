<?php
namespace models\content;

use library\database as ld;

class table {
    private $db;

    function __construct() {
        $this->db = new ld\query();
    }

    function giveTable() {
        return $this->db->maakTabel("SELECT * FROM klanten");
    }
}

