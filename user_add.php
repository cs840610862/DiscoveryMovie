<?php
	//接收用户名,帐号,'电话','QQ','email'，为数据库添加用户
	@$uname=$_REQUEST['uname'] or die("uname required");
	@$upwd=$_REQUEST['upwd'] or die("upwd required");
	@$phone=$_REQUEST['phone'] or die("phone required");
	//@$qq=$_REQUEST['qq'] or die("qq required");
	@$email=$_REQUEST['email'] or die("email required");
	$regTime=time()*1000;

	require('dm_init.php');
	$sql="INSERT INTO dm_user VALUES(null,'$uname','$upwd','$phone','123456789','$email','regTime',null)";
	$result=mysqli_query($conn,$sql);
	if($result===false){
		echo "注册失败!3秒后返回首页";
		echo "<br><a href='main.html'>立即返回首页</a>";
	}else{
		echo "
			<script>
				sessionStorage['d_uname']='$uname';
				sessionStorage['d_upwd']='$upwd';
				location.href='log_succ.html';
			</script>
		";
	}


