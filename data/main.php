<?php
	header('Content-Type:application/json;charset:utf-8');
	
	require("init.php");
	
	$output=[
		'carousel'=>null,
		'being_play'=>null,
		'immediately_play'=>null,
		'prevue'=>null,
		'searchrank'=>null
	];
	//加载1：查找轮播广告图片数据
	$sql="SELECT * FROM main_banner_carousel";
	$result=mysqli_query($conn,$sql);
	if($result===false){die('{"code":-101,"msg":"SQL error"}');}
	$output['carousel']=mysqli_fetch_all($result,1);

	//加载2：查找正在热映影片图片数据
	$sql="SELECT * FROM main_sortstate WHERE state='正在热映'";
	$result=mysqli_query($conn,$sql);
	if($result===false){die('{"code":-102,"msg":"SQL error"}');}
	$output['being_play']=mysqli_fetch_all($result,1);

	//加载3：查找即将上映的图片数据
	$sql="SELECT * FROM main_sortstate WHERE state='即将上映'";
	$result=mysqli_query($conn,$sql);
	if($result===false){die('{"code":-102,"msg":"SQL error"}');}
	$output['immediately_play']=mysqli_fetch_all($result,1);

	//加载4：新片预告
	$sql="SELECT * FROM main_prevue";
	$result=mysqli_query($conn,$sql);
	if($result===false){die('{"code":-102,"msg":"SQL error"}');}
	$output['prevue']=mysqli_fetch_all($result,1);

	//加载5：热门搜索
	$sql="SELECT * FROM main_searchrank WHERE search_type='热门搜索'";
	$result=mysqli_query($conn,$sql);
	if($result===false){die('{"code":-102,"msg":"SQL error"}');}
	$output['searchrank']=mysqli_fetch_all($result,1);


	//返回请求的数据
	echo json_encode($output);