<?php
session_start();
define('ROOT', dirname(__DIR__));

include_once ROOT."/application/library/autoloader.php";    //include autoloader

use library as lib;

new lib\setup();
$mvc = new lib\mvc();

try {
	$render = $mvc->run();
} catch(Exception $e) {
	$render = '<p class="errorMessage">'.$e->getMessage().'</p>';
}

?>

<!DOCTYPE html>
<html>
<head lang="nl">
    <meta charset="UTF-8">
    <meta name="robots" content="noindex">

	<link href='http://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="<?= BASE; ?>/css/default.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>
<body>
	<div id="wrapper">
		<header>
			<div class="container">
				<div class="title">
					MVC Opdracht
				</div>

				<nav>
					<a href="<?= BASE ?>/content/show">show</a> |
					<a href="<?= BASE ?>/content/add">add</a> |
					<a href="<?= BASE ?>/content/error">try, throw, catch</a> |
					<a href="<?= BASE ?>/gallery/show">gallery</a> |
					<a href="<?= BASE ?>/content/table">show table</a> |
					<a href="<?= BASE ?>/content/invalid">invalid uri</a> |
					<a href="<?= BASE ?>/external/vakanties">external request</a> |
					<a href="<?= BASE ?>/content/internalRequest">internal request</a>
				</nav>
			</div>

		</header>

		<main class="container">
			<div class="variables">
				<h3>Constants, variables, etc.</h3>
				<b>Constants:</b><br/>
				<pre>
					<?php print_r(get_defined_constants(true)['user']); ?>
				</pre>
				<br/>
				<b>GET values:</b><br/>
				<pre>
					<?php print_r($_GET); ?>
				</pre>
			</div>
			<hr/>
			<?= $render; ?>
		</main>

		<footer>
			<div class="container">
				&copy; <?= date('Y'); ?> Michiel Dijk
			</div>
		</footer>
	</div>
</body>
</html>



