<?php
	/* 回复评论 */
	header("Content-Type:application;charset:utf-8");

	@$ruserid = $_REQUEST['ruserid'] or die('{"code":-2,"msg":"缺少ruserid"}');
	@$content = $_REQUEST['content'] or die('{"code":-3,"msg":"缺少content"}');
	@$publishid = $_REQUEST['publishid'] or die('{"code":-4,"msg":"publishid"}');
	$rtime = time()*1000;

	require('init.php');

	$sql = "INSERT INTO reply_comment VALUES(NULL,'$ruserid','$content','$rtime','$publishid')";
	$result = mysqli_query($conn,$sql);
	if($result === false){die('{"code":-101,"msg":"SQL ERROR"}');}
	$output = [];
	$output['rid'] = mysqli_insert_id($conn);
	echo json_encode($output);



