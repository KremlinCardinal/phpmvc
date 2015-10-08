<?php
namespace library\database;

class query extends database {

	public function executeQuery($pQuery,$return = false, $affected_row = false) {
		$query = $pQuery;
		$result = mysqli_query($this->getConnection(),$query);
		if($return) {
            return $result;
		}
	}

	public function getArray($pQuery) {
		$result = $this->executeQuery($pQuery,true);
		$return = array();
		$i = 0;
		while($row = mysqli_fetch_assoc($result)) {
			$return[$i++] = $row;
		}
		return $return;
	}

	public function maakTabel($query)
	{
		$result = $this->executeQuery($query,true);

		/*Start van een array waarin de kolomnamen worden gezet*/
		$data = array();

		/*Invoeren van de kolom namen in de array*/
		while($row = mysqli_fetch_assoc($result))
		{
			$data[] = $row;
		}
		$colNames = array_keys(reset($data));

		/*Begin van de tabel en start regel met kolomnamen*/
		$rt= "<table border='1'><tr>";

		/*Plaatsen van de kolomnamen*/
		foreach($colNames as $colName)
		{
			$rt.= "<th>$colName</th>";
		}
		$rt.= "</tr>";

		/*Begin vullen van de gevonden informatie per rij*/
		$i = 0;
		foreach($data as $row)
		{
			$rt.= "<tr class='row_".$i."'>";
			foreach($colNames as $colName)
			{
				$rt.= "<td>".$row[$colName]."</td>";
			}
			$rt.= "</tr>";
			$i++;
		}
		$rt.= "</table>";

		return $rt;
	}
}