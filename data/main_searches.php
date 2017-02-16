<?php
    header('Content-Type/json;charset:utf-8');

    @$search=$_REQUEST['search'] or die('{"code":-2,"msg":"缺少搜索条件"}');
    require('init.php');
    $sql="SELECT * FROM main_searchrank WHERE search_type='$search'";
    $result=mysqli_query($conn,$sql);
    if($result===false){die('{"code":-101,"msg":"SQL err"}');}

    $datas=mysqli_fetch_all($result,MYSQLI_ASSOC);
    echo json_encode($datas);
