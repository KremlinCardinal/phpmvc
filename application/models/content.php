<?php
namespace models;

use library\database as ld;

class content {
    private $db;

    public function __construct() {
        $this->db = new ld\query();
    }

    public function internalRequest($query) {
        return $this->db->getArray($query);
    }

    public function giveTable($query) {
        return $this->db->maakTabel($query);
    }

    public function update($query) {
        $this->db->executeQuery($query, true);
    }
}

