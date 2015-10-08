<?php
namespace controllers;

use models as mo;
class external {
	public $vakantiedata;

	public function vakanties() {
		$externalData = new mo\external();
		$this->vakantiedata = $externalData->externalRequest('http://opendata.rijksoverheid.nl/v1/sources/rijksoverheid/infotypes/schoolholidays/schoolyear/2015-2016?output=json');
	}
}