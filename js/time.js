/**
 * Created by Windows on 2017/1/25.
 */
//功能点：异步插入页头和页尾
window.onload=function() {
  //异步加载页头
  cs.ajax({
    url: 'data/header.php',
    success: function (data) {
      cs.getById("head").innerHTML = data;
    },
    error: function () {
      alert("响应完成但有问题！！！");
    }
  });
  //异步加载页尾
  cs.ajax({
    url: 'data/footer.php',
    success: function (data) {
      cs.getById("footer").innerHTML = data;
    },
    error: function () {
      alert("响应完成但有问题");
      cosole.log(arguments);
    }
  })
  //异步加载第一页
  cs.ajax({
    type:'GET',
    url:'data/movie_sort_list.php',
    data:{pageNum:1,pageSize:8},
    success: function (data) {
      pagerHandle(data);
    },
    error: function (data) {
      alert('响应完成但有问题');
    }
  });
}
//用来处理分页数据并显示在页面上
function pagerHandle(data){
  var html="";
  for(var i=0;i<data.data.length;i++){
    var info=data.data[i];
    html += `
        <a target="_blank" title="${info.sname}详情" href="prevue_1.html?mname=大话西游">
						<div class="honghe">
							<div class="hong">
								<img src="${info.src}" alt="${info.sname}剧照">
							</div>
						<div class="honghe-1">
							<div class="honghe-2">
								<div class="honghe-3">
									<p class="bb">${info.sname}</p><!--<p>理智感好笑  反转</p>-->
								</div>
								<span><i>${info.state}</i></span>
							</div><!--honghe-2结束-->
							<div class="honghe-4 clear">
								<p>别名：<i>${info.sname}</i></p>
								<p>英文名：${info.enname}</p>
								<p>导演：（ <span>${info.director}</span> ）</p>
								<p>类型：
									<i>${info.type}</i> | 地区：
									<i></i> | 年代：
									<i>${info.time}</i>
								</p>
								<p>评分：${info.grade} <img src="${info.gradesrc}" alt="0星推荐"></p>
							</div><!--honghe-4结束-->
							<div class="honghe-5">${info.comment}
							</div><!--honghe-5结束-->
						</div><!--honghe-1结束-->
					</div><!--honghe结束-->
				</a>
      `;
  }
  //电影信息显示在页面上
  cs.query('div.ss-3').innerHTML=html;
  //分页器条码显示数目
  /*
  * 1.首页和最后一页,上一页和下一页
  * 2.所有记录条数，第几页/总页数
  * 3.中间显示5页的信息
  * */
  html = `
    <p class="rpage">${data.recordCount} 条记录 ${data.pageNum}/${data.pageCount} 页 </p>
      <a href="${1}">首页</a>`;
	data.pageNum > 1 &&	(html +=`<a href="${data.pageNum-1}">上一页</a>`);
  data.pageNum-3>1 && (html += `<a href="${data.pageNum-1}">...</a>`);
  data.pageNum-3>0 && (html += `<a href="${data.pageNum-3}">${data.pageNum-3}</a>`);
  data.pageNum-2>0 && (html += `<a href="${data.pageNum-2}">${data.pageNum-2}</a>`);
  data.pageNum-1>0 && (html += `<a href="${data.pageNum-1}">${data.pageNum-1}</a>`);
  html += `<a href="${data.pageNum}" class="current">${data.pageNum}</a>`;
  parseInt(data.pageNum)+1<=data.pageCount && (html += `<a href="${parseInt(data.pageNum)+1}">${parseInt(data.pageNum)+1}</a>`);
  parseInt(data.pageNum)+2<=data.pageCount && (html += `<a href="${parseInt(data.pageNum)+2}">${parseInt(data.pageNum)+2}</a>`);
  parseInt(data.pageNum)+3<=data.pageCount && (html += `<a href="${parseInt(data.pageNum)+3}">${parseInt(data.pageNum)+3}</a>`);
  parseInt(data.pageNum)+3<data.pageCount && (html += `<a href="${parseInt(data.pageNum)+1}">...</a>`);

  data.pageNum<data.pageCount && (html += `<a href="${parseInt(data.pageNum)+1}">下一页</a>`);
  html += `<a href="${data.pageCount}">最后一页</a>`;
  cs.query('div.page-1').innerHTML = html;
}

//电影分类之---分页显示
/*
* 1.使用AJAX发送异步请求
* 2.传递的数据为显示的条数，页码
* 3.到数据库查询相应的数据，返回对应的数据
* 第一页（0-7）第二页（8-15）第三页（16-23）第n页（(n-1)*8-(n*8-1)）
* */
cs.query('div.page-1').onclick= function (e) {
  var tar=e.target;
  if(tar.nodeName==='A'){
    e.preventDefault();
    var pageNum= parseInt(tar.getAttribute('href'));
    cs.ajax({
      url:'data/movie_sort_list.php',
      data:{pageNum:pageNum,pageSize:8},
      success: function (data) {
        pagerHandle(data);
      },
      error: function (data) {
        alert('相应完成但有问题');
      }
    });
  }
}







