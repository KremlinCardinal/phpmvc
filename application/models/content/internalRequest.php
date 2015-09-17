<?php
namespace models\content;

use library\database as ld;

class internalRequest {
    private $db;

    function __construct() {
        $this->db = new ld\query();
    }

    function returnTable() {
        return $this->db->getArray("SELECT * FROM klanten");
    }
}

