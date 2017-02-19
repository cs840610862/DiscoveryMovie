<?php
	/* 回复评论 */
	header("Content-Type:application/json;charset:utf-8");

	@$uname = $_REQUEST['uname'] or die('{"code":-2,"msg":"缺少rusername"}');
	@$content = $_REQUEST['content'] or die('{"code":-3,"msg":"缺少content"}');
	@$pid = $_REQUEST['pid'] or die('{"code":-4,"msg":"pid"}');
	$rtime = time()*1000;

	require('init.php');

	$sql = "SELECT uid FROM dm_user WHERE uname='$uname'";
	$result = mysqli_query($conn, $sql);
	if($result === false){die('{"code":-101,"msg":"SQL ERROR"}');}
	$uid = mysqli_fetch_row($result)[0];

	$sql = 
		"INSERT INTO replay_comment VALUES(NULL,$uid,'$content',$rtime,$pid)";
	$result = mysqli_query($conn,$sql);
	if($result === false){die('{"code":-102,"msg":"SQL ERROR"}');}
	$output = [];
	$output['rid'] = mysqli_insert_id($conn);
	if($output['rid']){
		echo json_encode($output);
	}else{
		echo json_encode('{"rid":-1}');
	}



