<?php
	header('Content-Type:application/json;charset:utf-8');

	require('init.php');

	$sql = "SELECT * FROM prevue_review LIMIT 0,10";
	$result = mysqli_query($conn, $sql);
	if($result === false){die('{"code":-101,"msg":"SQL ERROR"}');}
	$movies = mysqli_fetch_all($result, 1);
	echo json_encode($movies);
