<?php
	//
	@$uname=$_REQUEST['uname'];
	@$phone=$_REQUEST['phone'];
	require('dm_init.php');
	if($uname!==null){
		//用户名验证
		//在数据库里面寻找数据，如果找到，返回succ，说明不能注册该用户
		$sql="SELECT * FROM dm_user WHERE uname='$uname'";
		$result=mysqli_query($conn,$sql);
		if($result===false){die("SQL执行错误");}
		$user=mysqli_fetch_assoc($result);
		if($user===null){
			echo "err";
		}else{
			echo "succ";
		}
	}else if($phone!==null){
		//手机号验证
		//在数据库里面寻找数据，如果找到，返回succ，说明不能注册该用户
		$sql="SELECT * FROM dm_user WHERE phone=$phone";
		$result=mysqli_query($conn,$sql);
		if($result===false){die("SQL执行失败");}
		$user=mysqli_fetch_assoc($result);
		if($user===null){
			echo "err";
		}else{
			echo "succ";
		}
	}
