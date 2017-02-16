<?php
	/* 发表评论 */
	header("Content-Type:application/json;charset:utf-8");

	@$uname = $_REQUEST['uname'] or die('{"code":-2,"msg":"缺少用户名"}');
	@$mname = $_REQUEST['mname'] or die('{"code":-3,"msg":"缺少mname"}');
	@$content = $_REQUEST['content'] or die('{"code":-3,"msg":"缺少content"}');
	$prise = 0;
	$ptime = time()*1000;

	require('init.php');
	// 获取$uid
	$sql = "SELECT uid FROM dm_user WHERE uname='$uname'";
	$result = mysqli_query($conn,$sql);
	if($result === false){die('{"code":-101,"msg":"SQL ERROR"}');}
	$uid = mysqli_fetch_row($result)[0];

	$sql = "INSERT INTO publish_comment VALUES(NULL,'$mname','$content','$prise','$ptime','$uid')";	
	$result = mysqli_query($conn,$sql);
	if($result === false){die('{"code":-102,"msg":"SQL ERROR"}');}
	$output = [];
	$output['pid'] = mysqli_insert_id($conn);
	echo json_encode($output);

/* pid */
