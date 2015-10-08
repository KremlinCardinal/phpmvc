<?php
namespace models;

class external {
    public function externalRequest($url) {
        return file_get_contents($url);
    }
}