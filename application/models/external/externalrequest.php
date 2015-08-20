<?php
namespace models\external;

class externalrequest {
	public function getDataFromUrl($url) {
		return file_get_contents($url);
	}
}