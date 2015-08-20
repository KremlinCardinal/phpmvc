<?php
namespace controllers;

use models\external as me;
class external {
	public $vakantiedata;

	public function vakanties() {
		$externalData = new me\externalrequest();
		$this->vakantiedata = $externalData->getDataFromUrl('http://opendata.rijksoverheid.nl/v1/sources/rijksoverheid/infotypes/schoolholidays/schoolyear/2015-2016?output=json');
	}
}