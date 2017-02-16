<?php
	header('Content-Type:text/plain');
	@$uname=$_REQUEST['uname'] or die('uname required');
	@$upwd=$_REQUEST['upwd'] or die('upwd required');
	
	require('dm_init.php');
	//用户名登录验证
	$sql="SELECT * FROM	dm_user WHERE uname='$uname'";
	$result=mysqli_query($conn,$sql);
	if($result===false){die("SQL语句执行失败");}
	$user=mysqli_fetch_assoc($result);
	if($user===null){
		echo "err";
	}else{
		echo "succ";
	}
