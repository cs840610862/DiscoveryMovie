<?php
	/* 返回评论部分个人信息 */
	header('Content-Type:application/json;charset:utf-8');

	@$uname = $_REQUEST['uname'] or die('{"code":-2,"msg":"缺少用户名"}');

	require('init.php');
	$sql = "SELECT uname,headImg FROM dm_user WHERE uname='$uname'";
	$result = mysqli_query($conn,$sql);
	if($result === false){die('{"code":-101,"msg":"SQL ERROR"}');}

	$output = mysqli_fetch_assoc($result);
	
	echo json_encode($output);


