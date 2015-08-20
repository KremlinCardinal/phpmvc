<?php
namespace controllers;

class gallery {
	public $imageArray;

	public function show() {
		$images = glob("img/*.{jpg,png,gif}", GLOB_BRACE);
		$this->imageArray = $images;
	}
}