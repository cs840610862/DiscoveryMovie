var play={
	ads:null,//放轮播图片的div
	turnPic:null,//ads下面的a标签
	DISTANCE:0,//总距离
	TIME:0,//总时间
	STEPS:0,//总步数
	time:0,//走每步的时间
	step:0,//每步的步长
	number1:0,//控制定时器1的步数
	number2:0,//控制定时器2的步数
	timer1:null,//定时器1
	timer2:null,//定时器2
	turnElem:null,
	BUTTON:null,
	First:1,
	load:0,
	init(){
		this.ads=document.getElementById("ads");
		this.DISTANCE=270;
		this.step=3;
		this.STEPS=this.DISTANCE/this.step;
		this.TIME=100;
		this.time=this.TIME/this.STEPS;
		window.onblur=this.closeT2.bind(this);
		window.onfocus=this.openT2.bind(this);
		document.getElementById("ads").onmouseover=this.closeT2.bind(this);
		document.getElementById("ads").onmouseout=this.openT2.bind(this);
		//启动定时器2开始轮播
		this.timer2=setTimeout(this.excute.bind(this),2500);
	},
	excute(){
		if(this.number2<0){
			return;
		}else if(this.number2>=0){
			this.orgLocation();
			this.timer1=setTimeout(this.moveLeft.bind(this),this.time);
			this.timer2=setTimeout(this.excute.bind(this),4000);
		}else{
			return;
		}
	},
	moveLeft(){
		if(this.number1>=0){
			this.turnPic=ads.querySelectorAll("a");
			this.turnPic[0].style.left="1040px";
			//left渐变
			this.turnPic[1].style.left=parseFloat(this.turnPic[1].style.left)-218/90+"px";
			this.turnPic[2].style.left=parseFloat(this.turnPic[2].style.left)-274/90+"px";
			this.turnPic[3].style.left=parseFloat(this.turnPic[3].style.left)-302/90+"px";
			this.turnPic[4].style.left=parseFloat(this.turnPic[4].style.left)-3+"px";
			//top渐变
			this.turnPic[1].style.top=parseFloat(this.turnPic[1].style.top)+20/90+"px";
			this.turnPic[2].style.top=parseFloat(this.turnPic[2].style.top)+30/90+"px";
			this.turnPic[3].style.top=parseFloat(this.turnPic[3].style.top)-30/90+"px";
			this.turnPic[4].style.top=parseFloat(this.turnPic[4].style.top)-20/90+"px";
			//宽度渐变
			this.turnPic[1].style.width=parseFloat(this.turnPic[1].style.width)-56/90+"px";
			this.turnPic[2].style.width=parseFloat(this.turnPic[2].style.width)-34/90+"px";
			this.turnPic[3].style.width=parseFloat(this.turnPic[3].style.width)+34/90+"px";
			this.turnPic[4].style.width=parseFloat(this.turnPic[4].style.width)+56/90+"px";
			//高度渐变
			this.turnPic[1].style.height=parseFloat(this.turnPic[1].style.height)-70/90+"px";
			this.turnPic[2].style.height=parseFloat(this.turnPic[2].style.height)-80/90+"px";
			this.turnPic[3].style.height=parseFloat(this.turnPic[3].style.height)+80/90+"px";
			this.turnPic[4].style.height=parseFloat(this.turnPic[4].style.height)+70/90+"px";
			
			this.number1++;
		};
		if(this.number1==90){
			this.reBuild("left");
			this.number1=0;
			return;
		}
		//console.log(this.time);
		this.timer1=setTimeout(this.moveLeft.bind(this),this.time);
	},
	moveRight(){
		if(this.number1>=0){
			this.turnPic=ads.querySelectorAll("a");
			this.turnPic[4].style.zIndex=7;
			this.turnPic[4].style.left="-30px";
			//left
			this.turnPic[3].style.left=parseFloat(this.turnPic[3].style.left)+3+"px";
			this.turnPic[2].style.left=parseFloat(this.turnPic[2].style.left)+308/90+"px";
			this.turnPic[1].style.left=parseFloat(this.turnPic[1].style.left)+274/90+"px";
			this.turnPic[0].style.left=parseFloat(this.turnPic[0].style.left)+218/90+"px";
			//top渐变
			this.turnPic[3].style.top=parseFloat(this.turnPic[3].style.top)+20/90+"px";
			this.turnPic[2].style.top=parseFloat(this.turnPic[2].style.top)+30/90+"px";
			this.turnPic[1].style.top=parseFloat(this.turnPic[1].style.top)-30/90+"px";
			this.turnPic[0].style.top=parseFloat(this.turnPic[0].style.top)-20/90+"px";
			//宽度渐变
			this.turnPic[3].style.width=parseFloat(this.turnPic[3].style.width)-56/90+"px";
			this.turnPic[2].style.width=parseFloat(this.turnPic[2].style.width)-34/90+"px";
			this.turnPic[1].style.width=parseFloat(this.turnPic[1].style.width)+34/90+"px";
			this.turnPic[0].style.width=parseFloat(this.turnPic[0].style.width)+56/90+"px";
			//高度渐变
			this.turnPic[3].style.height=parseFloat(this.turnPic[3].style.height)-70/90+"px";
			this.turnPic[2].style.height=parseFloat(this.turnPic[2].style.height)-80/90+"px";
			this.turnPic[1].style.height=parseFloat(this.turnPic[1].style.height)+80/90+"px";
			this.turnPic[0].style.height=parseFloat(this.turnPic[0].style.height)+70/90+"px";
			this.number1++;
		}
		if(this.number1==90){
			this.reBuild("right");
			this.number1=0;
			return;
		};
		this.timer1=setTimeout(this.moveRight.bind(this),this.time);
	},
	cut(e){
			//关闭计时器timer1,timer2
			clearTimeout(this.timer2);
			this.timer2=null;
			if(e.target==this.BUTTON[1]){
				this.moveLeft();
				this.timer2=setTimeout(this.excute.bind(this),3000);
			}else if(e.target==this.BUTTON[0]){
				this.moveRight();
				this.timer2=setTimeout(this.excute.bind(this),3000);
			}
	},
	orgLocation(){
		//每次走完之后，所有图片都归位
		this.turnPic=ads.querySelectorAll("a");
		//left
		this.turnPic[0].style.left="-30px";
		this.turnPic[1].style.left="188px";
		this.turnPic[2].style.left="462px";
		this.turnPic[3].style.left="770px";
		this.turnPic[4].style.left="1040px";
		//top
		this.turnPic[0].style.top="70px";
		this.turnPic[1].style.top="50px";
		this.turnPic[2].style.top="20px";
		this.turnPic[3].style.top="50px";
		this.turnPic[4].style.top="70px";
		//z-index
		this.turnPic[0].style.zIndex=8;
		this.turnPic[1].style.zIndex=8;
		this.turnPic[2].style.zIndex=8;
		this.turnPic[3].style.zIndex=8;
		this.turnPic[4].style.zIndex=8;
		//width
		this.turnPic[0].style.width="180px";
		this.turnPic[1].style.width="236px";
		this.turnPic[2].style.width="270px";
		this.turnPic[3].style.width="236px";
		this.turnPic[4].style.width="180px";
		//height
		this.turnPic[0].style.height="260px";
		this.turnPic[1].style.height="330px";
		this.turnPic[2].style.height="410px";
		this.turnPic[3].style.height="330px";
		this.turnPic[4].style.height="260px";
	},
	reBuild(dir){
		//类数组转为数组，把第一个剪到最后位置，再放入ads中
			//去掉内容里面的i标记
			this.turnElem=this.ads.innerHTML.replace(/<i><\/i>/g,"");
			//去掉首尾空字符
			this.turnElem=this.turnElem.replace(/^\s*|\s*$/g,"");
			//去掉两个标签之间的空字符
			this.turnElem=this.turnElem.replace(/>\s*[^<]</g,"><");
			//按照a标记切割字符串
			var arr=this.turnElem.split("</a>");
			arr.pop();
			if(dir=="left"){
				var temp=arr.shift();
				arr.push(temp);
			}else if(dir=="right"){
				var temp=arr.pop();
				arr.unshift(temp);
			}
			//放入ads中
			this.ads.innerHTML="<i></i><i></i>"+arr.join("</a>");
			//绑定按钮点击事件
			this.BUTTON=this.ads.querySelectorAll("i");
			this.BUTTON[0].addEventListener("click",this.cut.bind(this));
			this.BUTTON[1].addEventListener("click",this.cut.bind(this));
			//图片归位
			this.orgLocation();
	},
	delay(ms){
		var now=new Date();
		var exitTime=now.getTime()+ms;
		while(true){
			now=new Date();
			if(now.getTime()>exitTime) return;
		}
	},
	closeT2(){
		if(this.timer2!=null){
				clearTimeout(this.timer2);
				this.timer2=null;
			}
	},
	openT2(){
		if(this.timer2==null){
				this.timer2=setTimeout(this.excute.bind(this),2500);
			}
	}
}
//console.log(play.turnPic[4]);
//play.init();

//文字随着鼠标进入方向而进入图片
function ElemEnter(parentElem,enterElem){
	//获取所有的parentElem元素保存在变量pElem中
	this.timer=null;
	var pElem=document.getElementsByClassName(parentElem);
	//遍历pElem，获取每个pElem中的enterElem元素，保存在变量eElem中，绑定mouseover事件和mouseout事件
	//console.log(pElem);
	for(var i=0;i<pElem.length;i++){
		var eElem=pElem[i].getElementsByClassName(enterElem)[0];

		//console.log(eElem);
		function eventRegister(obj,pElem,eElem){
			//console.log(obj,pElem,eElem);
			pElem.addEventListener("mouseover",function(e){
				obj.mouseIn(e,pElem,eElem);
			});
			pElem.addEventListener("mouseout",function(e){
				obj.mouseOut(e,pElem,eElem);
			});
		}
		eventRegister(this,pElem[i],eElem);
		pElem[i].style.position="relative";
		pElem[i].style.overflow="hidden";
	}
}
ElemEnter.prototype.mouseIn=function(e,pElem,eElem){
	/*
		1.判断触发之前的元素是否包含在pElem中，如果是则不触发，否则触发
		2.触发移动处理函数
	*/
	if(pElem.contains(e.fromElement)) return;
	
	this.startMove(e,pElem,eElem,"in");
}
//父元素的宽度和高度保存在一个对象中，只写一次，只读一次，以后需要用的全部在对象中获取
ElemEnter.prototype.mouseOut=function(e,pElem,eElem){
	if(pElem.contains(e.toElement)) return;
	this.startMove(e,pElem,eElem,"out");
}
ElemEnter.prototype.startMove=function(e,pElem,eElem,way){
	/*
		1.判断鼠标进入方向
		2.根据进入方向的不同分别定位在四个初始方向
		3.开始移动元素
	*/
	var dir=this.getDir(e,pElem);
	if(way=="in"){
		if(dir==0 || dir==2){
			//进入框的left都设为0
			if(dir==0){
				//从下往上进入
				//top设为-this.height,目标为json.top
				eElem.style.top=this.height+"px";
			}else if(dir==2){
				//从上往下进入
				eElem.style.top=-this.height+"px";
			}
			eElem.style.left="0px";
			this.moveTarget(eElem,{'top':0,'opacity':this.opacity});
		}else if(dir==1 || dir==3){
			if(dir==1){
				eElem.style.left=this.width+"px";
			}else if(dir==3){
				eElem.style.left=-this.width+"px";
			}
			eElem.style.top="0px";
			this.moveTarget(eElem,{'left':0,'opacity':this.opacity});
		}else{console.log("获取鼠标进入方向错误")}
	}else if(way=="out"){
		switch(dir){
			case 0:
				this.moveTarget(eElem,{'top':this.height,'opacity':0});
				break;
			case 1: 
				this.moveTarget(eElem,{'left':this.width,'opacity':0});
				break;
			case 2: 
				this.moveTarget(eElem,{'top':-this.height,'opacity':0});
				break;
			case 3:
				this.moveTarget(eElem,{'left':-this.width,'opacity':0});
				break;
		}
	}
}
ElemEnter.prototype.moveTarget=function(eElem,json){
	/*
		1.获取当前left，top，opacity
		2.获取需要达到的目标left，top，opacity
		3.计算出目标减去当前的数值，即需要走过的距离，正数表示增大，负数表示减少
		4.按照速度，增量或者减量，从当前数值走向目标数值
		5.走动用for in循环遍历
	*/
	var _this=this;
	var k=(11-this.speed)>0?(11-this.speed):1;
	var delay=30;
	clearInterval(eElem.timer);
	eElem.timer=setInterval(function(){
		//获取当前的数值，再获取目标数值，再计算出步长
		var stop=true;
		for(var key in json){
			var current=parseFloat(getComputedStyle(eElem)[key]);
			var target=json[key];
			if(key=='opacity'){
				current*=100;
				target*=100;
			}
			//鼠标进入发生的事情
			if(current!=target) stop=false;
			if(stop){
				clearInterval(eElem.timer);
				eElem.timer=null;
			}else{
				var step=(target-current)/k;
				step=target>current?Math.ceil(step):Math.floor(step);
				if(key=='opacity'){
					eElem.style[key]=(current+step)/100;
				}else{
					eElem.style[key]=current+step+"px";
				}
			}
		}
	},delay);
}
ElemEnter.prototype.getDir=function(e,pElem){
	/*
		1.传入参数目标元素
		2.确定鼠标进入时相对父元素中心的坐标
		3.计算鼠标进入父元素的区域
	*/
	var h=this.height;
	var w=this.width;
	var x=(e.clientX-pElem.getBoundingClientRect().left-w/2)*(w>h ? (h/w):1);
	//计算鼠标进入时相对元素的坐标y
	var y=(h/2-(e.clientY-pElem.getBoundingClientRect().top))*(h>w ? (w/h):1);
	var deg=Math.round(((Math.atan2(y,x)*180/Math.PI)+180)/90+3)%4;
	return deg;
}
ElemEnter.prototype.set=function(json){
	for(var key in json){
		this[key]=json[key];
	}
}


//功能点：异步插入页头和页尾
window.onload=function(){
	//异步加载页头
	cs.ajax({
		url:'data/header.php',
		success:function(data){
			var d_uname=sessionStorage['d_uname'] || localStorage['d_uname'];
			var d_upwd=sessionStorage['d_upwd'] || localStorage['d_upwd'];
			cs.getById("head").innerHTML=data;
			//登录处理
			//如果登录账号已经保存，则直接自动登录
			if(d_uname && d_upwd){
				log_succ_handle();
				return;
			}
			/* 绑定登录框按钮单击事件 */
			cs.getById("head").onclick=function(e){
				if(e.target.className==="btn_log"){
					cs.getById("log_face").style.display="block";
				}else if(e.target.className==="btn_reg"){
					location.href="register.html";
				}
			}

			cs.query("#log_face .close").onclick=function(){
				//id为#log_face的元素显示隐藏
				document.getElementById("log_face").style.display="none";
			}

			cs.query("#log_face button[name='login']").onclick=function(){
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
			};
			function log_succ_handle(){
				//存在用户名，隐藏遮罩层，登录和注册隐藏，提示欢迎回来xxx，提示登录成功
				document.getElementById("log_face").style.display="none";
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
	//功能点：异步请求所有数据加载 -- 轮播
	cs.ajax({
		url:'data/main.php',
		success: function (datas){
			var html="<i></i><i></i>";
			for(var i=0;i<datas.carousel.length;i++){
				var carou=datas.carousel[i];
				html += `
				<a href="${carou.href}" target="_blank">
					<img src="${carou.src}">
				</a>
				`;
			}
			cs.getById("ads").innerHTML=html;
			//遍历绑定图片加载事件，等待所有图片加载完成之后再开始轮播
			var carouselImg=cs.getById("ads").querySelectorAll("img");
			for(var i=0;i<carouselImg.length;i++){
				carouselImg[i].onload= function (e){
					play.load++;
					if(play.load===datas.carousel.length){
						play.init();
					}
				}
			}
			//列表切换，热映部分列表绑定单击事件
			cs.query("#newPlay .hotPlay").onclick= function (e) {
				var tar=e.target;
				if(tar.nodeName==="A"){
					e.preventDefault();
					//绑定所有的A，当前点击的a链接目标的class去掉hidden，其他兄弟a的链接目标class加上hidden
					var a_list=this.querySelectorAll("a");
					for(var i=0;i<a_list.length;i++){
						if(a_list[i].getAttribute('href')===tar.getAttribute('href')){
							cs.query(tar.getAttribute('href')).className="hotShow";
							tar.className="active";
						}else{
							cs.query(a_list[i].getAttribute('href')).className += " hidden";
							a_list[i].className="";
						}
					}
				}
			};

			//异步请求 ---- 正在热映影片(being_play)
			html='<ul class="hotShow" id="being_playing">';
			for(var i=0;i<datas.being_play.length;i++){
				var playing=datas.being_play[i];
				html += `
						<li>
							<div>
								<a target="_blank" href="${playing.href}">
									<img src="${playing.src}" alt="">
								</a>
								<p>
									<i>${playing.grade}</i>
									${playing.mname}
								</p>
								<b>${playing.type}</b>
							</div>
						</li>
				`;
				var playing=datas.being_play[i];
			}
			html += '</ul><ul class="hotShow hidden" id="immediately_play">';
			for(var i=0;i<datas.immediately_play.length;i++){
				var immed=datas.immediately_play[i];
				html += `
					<li>
							<div>
								<a target="_blank" href="${immed.href}">
									<img src="${immed.src}" alt="">
								</a>
								<p>
									<i>${immed.grade}</i>
									${immed.mname}
								</p>
								<b>${immed.type}</b>
							</div>
						</li>
				`;
			}
			html += "<ul>";
			cs.query("#newPlay .movie-show-2").innerHTML=html;
			//异步加载 ---- 新片预告
			html = `
				<a href="${datas.prevue[0].href}">
						<img src="${datas.prevue[0].src}" alt="">
						<b></b>
					</a>
					<!-- 下面文字 -->
					<h1>${datas.prevue[0].simple_info}</h1>
					<p>${datas.prevue[0].playing_time}</p>
			`;
			cs.query("#mvPre .sideLf").innerHTML=html;
			html="";
			for(var i=1;i<datas.prevue.length;i++){
				var prevue=datas.prevue[i];
				html += `
					<a href="${prevue.href}">
						<img src="${prevue.src}" alt="">
						<b></b>
					</a>
				`;
			}
			cs.query("#mvPre .rt").innerHTML=html;
			//异步加载 ---- 热门搜索，经典搜索，综合搜索
			html="";
			ret_search(datas.searchrank,html);


		},
		error:function(){
			alert("数据请求失败");
		}
	});
};
//把数据里面的内容添加到html中，并返回html
function ret_search(data,conts){
	var html=conts || "";
	for(var i=0;i<data.length;i++){
		var search=data[i];
		html += `
					<li>
						<div class="wordDir">
							<a href="${search.href}">
								<!-- 152*227 -->
								<img src="${search.imgsrc}" alt="${search.sname}">
							</a>
							<!-- 不同方向进入文字 -->
							<div class="shadeLink">
								${search.infosrc && "<p>"+ search.infosrc+"</p>"}
								${search.watchsrc && "<p>"+ search.watchsrc+"</p>"}
							</div>
						</div>
						<h1>${search.sname}</h1>
						<p>${search.date}</p>
					</li>
				`;
	}
	cs.query("#ranking .show").innerHTML=html;
	//设置特效，文字随鼠标进入方向进入图片内
	var wordIn=new ElemEnter("wordDir","shadeLink");
	var style={
		width:152,
		height:227,
		speed:5,
		opacity:.8
	};
	wordIn.set(style);
}
//热门搜索，经典搜索，综合搜索绑定点击事件 --- 异步请求切换列表
cs.query("#ranking .nav").onclick= function (e){
	var tar=e.target;
	if(tar.nodeName==="A"){
		e.preventDefault();
		//1.当前项的父元素li变成红色，其他项变成黑色
		//2.根据点击的项的内容，异步请求该项的内容，并显示在页面上
		var lis=cs.queryAll("#ranking .nav a");
		for(var i=0;i<lis.length;i++){
			if(lis[i]===tar){
				tar.parentNode.className="active";
				cs.ajax({
					url:'data/main_searches.php',
					data:{search:tar.innerHTML},
					success: function (datas){
						console.log(datas);
						ret_search(datas);
					},
					error: function (datas){
						alert("数据刷新失败");
					}
				})
			}else{
				lis[i].parentNode.className="";
			}
		}
	}
}


















