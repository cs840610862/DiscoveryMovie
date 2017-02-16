<?php
	/* 接收电影名字，返回电影评论 */
	header('Content-Type:application/json;charset:utf-8');

	@$mname = $_REQUEST['mname'];	
	require('init.php');

// 查询评论的总条数
	$sql = "SELECT COUNT(*) FROM publish_comment WHERE mname='$mname'";
	$result = mysqli_query($conn,$sql);
	if($result===false){die('{"code":-101,"msg":"SQL ERROR"}');}
	$output['count'] = mysqli_fetch_row($result)[0];
// 查询相关影评的信息
	$sql = "SELECT  pid,content,prise,ptime,userid,uname,headImg 
		FROM publish_comment,dm_user WHERE mname='$mname' AND uid=userid";
	$result = mysqli_query($conn,$sql);
	if($result===false){die('{"code":-102,"msg":"SQL ERROR"}');}
	$output['comments'] = mysqli_fetch_all($result,1);
	if(empty($output)){
		echo "{}";
	}else{
		echo json_encode($output);
	}

