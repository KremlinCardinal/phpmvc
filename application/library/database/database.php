<?php
namespace library\database;

class database {
	private $con;

	function __construct($dbHost = DBHOST, $dbUser = DBUSER, $dbPass = DBPASS, $dbName = DBNAME) {
		$this->connect($dbHost,$dbUser,$dbPass,$dbName);
	}

	public function connect($dbHost, $dbUsername, $dbPassword, $dbName) {
		$this->con = mysqli_connect($dbHost, $dbUsername, $dbPassword, $dbName);
		if(mysqli_connect_errno()) {
			echo "Failed to connect to MySQL: ".mysqli_connect_error();
		}
	}

	public function getConnection() {
		return $this->con;
	}

	public function closeConnection() {
		mysqli_close($this->con);
	}
}