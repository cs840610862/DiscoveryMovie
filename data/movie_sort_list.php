<?php
    /* 查询数据库中的记录，返回需要的页码的数据 */
    header('Content-Type:application/json;charset:utf-8');

    @$pageNum=$_REQUEST['pageNum'] or die('{"code":-2,"msg":"请输入需要显示的页码编号"}');
    @$pageSize=$_REQUEST['pageSize'] or die('{"code":-3,"msg":"请输入一页需要显示的数量"}');

    require('init.php');

    //创建数组用来保存返回的数据信息
    $output=[
        'pageNum'=>$pageNum,
        'pageSize'=>$pageSize,
        'pageCount'=>0,
        'recordCount'=>0,
        'data'=>null
    ];

    //查询记录总数
    $sql="SELECT COUNT(*) FROM dmovie.time_sorts";
    $result=mysqli_query($conn,$sql);
    if($result===false){die('{"code":-101,"msg":"SQL ERROR"}');}
    $output['recordCount']=mysqli_fetch_row($result)[0];
    $output['pageCount']=ceil($output['recordCount']/$output['pageSize']);

//    查询记录的数据
    $start=($output['pageNum']-1)*8;
    $end=$output['pageSize'];
    $sql="SELECT * FROM dmovie.time_sorts LIMIT $start,$end";
    $result=mysqli_query($conn,$sql);
    $mvs=mysqli_fetch_all($result,1);
    $output['data']=$mvs;

    echo json_encode($output);



