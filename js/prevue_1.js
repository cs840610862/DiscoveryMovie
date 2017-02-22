var prevue_info = {};

/* 功能1：异步加载页头和页尾 */
window.onload = function () {
	//异步加载页头
	cs.ajax({
		url:'data/header.php',
		success:function(data){
			var d_uname=sessionStorage['d_uname'] || localStorage['d_uname'];
			var d_upwd=sessionStorage['d_upwd'] || localStorage['d_upwd'];
			document.querySelector("#head").innerHTML=data;
			//登录处理
			//如果登录账号已经保存，则直接自动登录
			
			if(d_uname && d_upwd){
				log_succ_handle();
				return;
			}
			// 绑定登录框登录按钮，注销按钮单击事件 
			document.querySelector("#head").onclick=function(e){
				if(e.target.className==="btn_log"){
					document.querySelector("#log_face").style.display="block";
				}else if(e.target.className==="btn_reg"){
					location.href="register.html";
				}
			}

			document.querySelector("#log_face .close").onclick=function(){
				//id为#log_face的元素显示隐藏
				document.getElementById("log_face").style.display="none";
			}

			// 点击登录，异步验证用户名和按钮
			document.querySelector("#log_face button[name='login']").onclick=function(){
				/*if(document.querySelector("p.pwd_deal input[type='checkbox']").checked){
					d_uname=localStorage['d_uname']=document.querySelector("input[name='uname']").value;
					d_upwd=localStorage['d_upwd'] =document.querySelector("input[name='upwd']").value;
				}else{
					d_uname=sessionStorage['d_uname']=document.querySelector("input[name='uname']").value;
					d_upwd=sessionStorage['d_upwd'] =document.querySelector("input[name='upwd']").value;
				}*/
				var xhr=new XMLHttpRequest();
				xhr.onreadystatechange=function(){
					if(this.readyState===4){
						if(this.status===200){
							doresponse(this);
						}else{
							alert("响应完成但有问题");
						}
					}
				}
				xhr.open("POST","user_login.php",true);
				xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
				xhr.send("uname=" + d_uname + "&upwd=" + d_upwd);
				function doresponse(xhr){
					console.log('login success');
					// 登陆成功则保存用户名和密码到webStorage
					if(document.querySelector("p.pwd_deal input[type='checkbox']").checked){
						d_uname=localStorage['d_uname']=document.querySelector("input[name='uname']").value;
						d_upwd=localStorage['d_upwd'] =document.querySelector("input[name='upwd']").value;
					}else{
						d_uname=sessionStorage['d_uname']=document.querySelector("input[name='uname']").value;
						d_upwd=sessionStorage['d_upwd'] =document.querySelector("input[name='upwd']").value;
					}
					var res=xhr.responseText;
					if(res==="succ"){
						log_succ_handle();
					}else if(res==="err"){
						//用户名或密码错误，跳转到错误处理页面
					}
				}
			};
			function log_succ_handle(){
				console.log('success handle');
				//存在用户名，隐藏遮罩层，登录和注册隐藏，提示欢迎回来xxx，提示登录成功
				document.querySelector("#login .btn").className="btn none";
				document.querySelector("#login p").className="block";
				document.querySelector("#login p").innerHTML="欢迎回来！用户："+d_uname+" <button class='logout'>注销</button>";
				//移除localstorage，显示登录框
				document.querySelector("#login button.logout").onclick= function (e) {
					localStorage.removeItem('d_uname');
					localStorage.removeItem('d_upwd');
					sessionStorage.removeItem('d_uname');
					sessionStorage.removeItem('d_upwd');
					history.go(0);
				}
			}
			
			cs.query("#log_face button[name='register']").onclick=function(){
				location.href="register.html";
			}
			
		},
		error:function(){
			alert("响应完成但有问题！！！");
		}
	});
	//异步加载页尾
	cs.ajax({
		url:'data/footer.php',
		success:function(data){
			cs.getById("footer").innerHTML=data;
		},
		error:function(){
			alert("响应完成但有问题");
			cosole.log(arguments);
		}
	});
}

// 异步加载看了还会看
/*
cs.ajax({
	type:'GET',
	url:'data/prevue_load_review.php',
	success:function (data) {
		console.log(data);
		var minfos = data;
		var html = '';
		for(var i=0; i < minfos.length; i++){
			var info = minfos[i];
			html += `
				<li>
					<a href="javascript:;" class="img-show">
						<img src="${info.imgsrc}">
						<em>01:40:54</em>
					</a>
					<p><a href="javascript:;">${info.mname}</a></p>
					<p>主演:${info.actors}</p>
				</li>
			`;
		}

		cs.query('div.v-slider>ul').innerHTML = html;
	}
});
*/
//功能：异步加载个人信息
cs.ajax({
	type:'POST',
	url:'data/prevue_person_info.php',
	data:{uname:sessionStorage['d_uname'] || localStorage['d_uname']},
	success:function (data) {
		console.log(data);
		cs.query(".c-commentPost .name").innerHTML = data.uname;
		cs.query(".c-commentPost .comment-aside-left img")
			.src = data.headImg;
	},
	error:function (data) {
		console.log(data);
	}
});

/* 功能：异步加载影评 */
function ajax_comment_load () {
	// 把地址栏的电影名字解析成键值对，保存在对象中
	prevue_info.sendData = cs.urlToObject(decodeURIComponent(location.href));
	cs.ajax({
		type:'POST',
		url:'data/prevue_movie_comments.php',
		data:prevue_info.sendData,
		success:function (comments) {
			console.log(comments);
			cs.query('.c-comment-h2 span').innerHTML = comments.count;
			var html = '';
			for(var i=0; i<comments.comments.length; i++){
				var comment = comments.comments[i];
				html += `
					<div class="c-user-comment">
						<!-- 左边头像 -->
						<div class="comment-aside-left">
							<img src="${comment.headImg}" class="useravt" alt="">
						</div>
						<!-- 右边评论部分 -->
						<div class="comment-aside-right">
							<p>
								<b class="name">${comment.uname}</b>
				        <em class="time">${cs.dateForm(new Date(parseInt(comment.ptime)),3)}</em>
							</p>
							<p class="userspeech">${comment.content}</p>
							<div class="userreplay none">
								<b class="name">诗如黎明cecile：</b>说
								<p>又见季冠森女神</p>
								<i></i>
							</div>
							<p class="usertoolbar">
								<a href="javascript:;" class="praise">
									<i></i>(${comment.prise})
								</a>
								<a href="javascript:;" class="replay">
									<i></i>回复
								</a>
							</p>
							<div class="replaybox none">
								<form class="post-box">
									<div class="textarea-wrapper">
										<textarea name="my-comment" class="textarea" maxlength="150"></textarea>
									</div>
									<div class="form-foot">
											<span>同步到：</span>
											<a href="javascript:;" class="wb-sina"></a>
											<a href="javascript:;" class="wb-tencent"></a>
											<span class="remain-font">还可以输入150字</span>
											<a href="javascript:;" class="publish-comment" data-pid="${comment.pid}">发表评论</a>
									</div>
									<p></p>
									<i></i>
								</form>
							</div>
						</div>
					</div>
					<div class="c-comment-vote"></div>
				`;
			}
			cs.query(".c-comment-reply .all-comments").innerHTML = html;
		},
		error:function (error) {
			console.log(error);
		}
	});
}
ajax_comment_load();
/* 功能：发表评论 */
cs.query(".post-box a.publish-comment")
	.addEventListener("click", function () {
		var _this = this;
		var comment = cs.query('.c-commentPost textarea');
		var uname = sessionStorage['d_uname'] || localStorage['d_uname'];
		var mname = prevue_info.sendData.mname;
		// 评论内容不能少于两个字符
		if(comment.value.length < 3){
			publish_result(this, '字数过少，不能少于2字符');
			return;
		}else{
			// 添加评论到数据库
			cs.ajax({
				type:'POST',
				url:'data/prevue_publish_comment.php',
				data:{uname:uname,mname:mname,content:comment.value},
				success:function (data) {
					if(parseInt(data.pid)>0){
						comment.value = "";
						publish_result(_this, '发表成功');
						ajax_comment_load();
					}
				},
				error:function (data) {
					console.log(data);
				}
			});
		};		
	});

// 功能：评论还可以输入的剩余字数
cs.query('.c-commentPost textarea').addEventListener('keyup', function () {
	still_input_words(this);
});
function still_input_words (elem) {
	var textNum = elem.value.length;
	elem.parentNode.parentNode.querySelector('span.remain-font').innerHTML = `还可以输入${150-textNum}字`;
}
// 功能：提示发表结果
function publish_result (comment_btn, showText) {
	var alertElem = comment_btn.parentNode.nextElementSibling;
	alertElem.style.display = 'block';
	alertElem.className="showAlert";

	alertElem.innerHTML = showText;
	setTimeout(function () {
		alertElem.className = 'hideAlert';
	},100)
	setTimeout(function () {
		alertElem.style.display = 'none';
	},1500)
}
// 功能：回复评论
/*
	1.点击回复，显示回复框
	2.回复之后保存到数据库并隐藏回复框
	3.实时加载回复的评论数据
*/
// 检查回复评论还能输入的字数
cs.query('.all-comments').addEventListener('keyup', function (e) {
	var tar = e.target;
	if(tar.nodeName === 'TEXTAREA'){
		still_input_words(tar);
	}
});
// 点击回复弹出回复框
cs.query(".all-comments").addEventListener('click', function (e) {
	var tar = e.target;
	if(tar.className.match(/\breplay\b/)){
		// 切换显示回复框
		var elem = tar.parentNode.nextElementSibling;
		if (elem.className.match(/\bnone\b/)) {
			elem.className = 'replaybox';
		}else{
		 	elem.className = 'replaybox none';
		}
	}else if (tar.className.match(/\bpublish-comment\b/)) {
		// 回复评论并且保存到数据库
		console.log(tar);
		// 判断文本域的字数
		var cArea = tar.parentNode.parentNode.querySelector('textarea');
		if(cArea.value.length >= 2){
			// 符合条件就回复
			var uname = sessionStorage['d_uname'] || localStorage['d_uname'];
			var content = cArea.value;
			var pid = tar.getAttribute('data-pid');
			cs.ajax({
				type:"POST",
				url:'data/prevue_replay_comment.php',
				data:{uname:uname,content:content,pid:pid},
				success:function (data) {
					if(data.rid >= 0){
						// 发表成功，刷新回复评论区域
						tar.parentNode.parentNode.querySelector('span.remain-font').innerHTML = `还可以输入150字`;
						var user_replay = tar.parentNode.parentNode.parentNode
							.parentNode.querySelector('.userreplay');
						tar.parentNode.parentNode.parentNode.className = "replaybox none";
						user_replay.className = "userreplay";
					}
				}
			});
		}else{
			publish_result(tar, '字数过少，不能少于2字符');
		}
	}
});






