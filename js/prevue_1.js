var prevue_info = {};
prevue_info.sendData = cs.urlToObject(decodeURIComponent(location.href));

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
			/*
			if(d_uname && d_upwd){
				log_succ_handle();
				return;
			}
			// 绑定登录框按钮单击事件 
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

			document.querySelector("#log_face button[name='login']").onclick=function(){
				//发送异步请求，发送用户名和密码进行验证
				if(document.querySelector("p.pwd_deal input[type='checkbox']").checked){
					d_uname=localStorage['d_uname']=document.querySelector("input[name='uname']").value;
					d_upwd=localStorage['d_upwd'] =document.querySelector("input[name='upwd']").value;
				}else{
					d_uname=sessionStorage['d_uname']=document.querySelector("input[name='uname']").value;
					d_upwd=sessionStorage['d_upwd'] =document.querySelector("input[name='upwd']").value;
				}
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
					var res=xhr.responseText;
					if(res==="succ"){
						log_succ_handle();
					}else if(res==="err"){
						//用户名或密码错误，跳转到错误处理页面
					}
				}
			};*/
			function log_succ_handle(){
				//存在用户名，隐藏遮罩层，登录和注册隐藏，提示欢迎回来xxx，提示登录成功
				document.querySelector("#login .btn").className="btn none";
				document.querySelector("#login p").className="block";
				document.querySelector("#login p").innerHTML="欢迎回来！用户："+d_uname+" <button class='logout'>注销</button>";
				document.querySelector("#login button.logout").onclick= function (e) {
					//移除localstorage，显示登录框
					localStorage.removeItem('d_uname');
					localStorage.removeItem('d_upwd');
					sessionStorage.removeItem('d_uname');
					sessionStorage.removeItem('d_upwd');
					history.go(0);
				}
			}
			/*
			cs.query("#log_face button[name='register']").onclick=function(){
				location.href="register.html";
			}
			*/
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
										<a href="javascript:;" class="publish-comment">发表评论</a>
								</div>
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
/* 功能：发表评论 */
cs.query(".post-box a.publish-comment")
	.addEventListener("click", function () {
		var comment = cs.query('.c-commentPost textarea').value;
		var uname = sessionStorage['d_uname'] || localStorage['d_uname'];
		var mname = prevue_info.sendData.mname;
		// 评论内容不能少于两个字符
		if(comment.length < 3){
			publish_result('字数过少，不能少于2字符');
			return;
		}else{
			// 添加评论到数据库
			cs.ajax({
				type:'POST',
				url:'data/prevue_publish_comment.php',
				data:{uname:uname,mname:mname,content:comment},
				success:function (data) {
					if(parseInt(data.pid)>0){
						publish_result('发表成功');
					}
					console.log(data);
				},
				error:function (data) {
					console.log(data);
				}
			});
		};		
		function publish_result (showText) {
			var alertElem = cs.query('.post-box>p');
			console.log(alertElem);
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
	});

// 功能：评论还可以输入的剩余字数
cs.query('.c-commentPost textarea')
	.addEventListener('keyup', function () {
		var textNum = this.value.length;
		cs.query('.post-box .remain-font').innerHTML = `还可以输入${150-textNum}字`;
	});








