
function input_msg(obj,item_class,tip_i,tip_span,msg,v_class){
	//item_class:输入框父元素的类名
	//tip_i：input_tip里面i标签的类名
	//tip_span：input_tip里面span标签的类名
	//msg：input_tip里面span标签的内容
	item_class!=="" && (obj.parentNode.className=item_class);
	obj.parentNode.nextElementSibling.firstElementChild.className=tip_i;
	obj.parentNode.nextElementSibling.lastElementChild.className=tip_span;
	obj.parentNode.nextElementSibling.lastElementChild.innerHTML=msg;
	v_class!==undefined && (obj.nextElementSibling.className=v_class);
}

var can_log={
	email:false,
	phone:false,
	uname:false,
	upwd:false,
	v_upwd:false,
	valid_code:false,
	agree:false
};
var user_elem=document.querySelector("input[name='uname']");
user_elem.addEventListener("focus",function(){
	//获取焦点时，输入框没内容则显示提示消息
	this.value=="" &&	input_msg(this,'','i_remind','span_remind',"支持字母，数字，下划线的组合，4-20个字符");
});

user_elem.addEventListener("keyup",function(){
	//输入框有按键时，输入框没内容则显示提示消息
	input_msg(this,'form_item form_normal','i_remind','span_remind',"支持字母，数字，下划线的组合，4-20个字符");
});
function valid_user(){
	//正则验证字符串，不满足要求则提示错误消息
	//满足则验证数据库
	var userElem=user_elem;
	if(!/^\w{4,20}$/.test(user_elem.value)){
		input_msg(user_elem,'form_item form_warn','i_error','span_error',"用户名必须由4-20位字母，数字或下划线组成");
	}else{
		//数据库返回succ则成功，脱掉msg的class，内容置空，err则失败
		//1.创建XHR对象
		var xhr=new XMLHttpRequest();
		//2.监听
		xhr.onreadystatechange=function(){
			if(this.readyState===4){
				if(this.status===200){
					//对响应消息进行处理
					if(this.responseText==='succ'){
						//数据库存在该用户名
						input_msg(userElem,'form_item form_warn','i_error','span_error','用户名已注册');
						can_log.uname=false;
					}else{
						//可以注册，输入框后面显示小勾
						input_msg(userElem,'form_item form_normal','','','','i_states');
						can_log.uname=true;
					}
				}else{
					alert("响应完成但有问题");
				}
			}
		}
		//3.open
		xhr.open('POST','valid.php?uname='+user_elem.value,true);
		xhr.setRequestHeader('content-type','application/x-www-form-urlencoded');
		//4.send
		xhr.send(null);
	}
}
user_elem.addEventListener("blur",valid_user);
//密码验证：获取焦点，键盘按下，失去焦点
var upwd_e=document.querySelector("input[name='upwd']");
//获取焦点，下面的div出现提示，其他的都隐去
upwd_e.addEventListener("focus",function(){
	this.value=="" &&	input_msg(this,'form_item form_normal','i_remind','span_remind',"建议使用字母，数字，其他符号两种及以上组合，6-20个字符");
});
//按键时，检测密码长度，大于6位则显示小勾
upwd_e.addEventListener("keyup",function(){
	if(this.value.length>=6){
		input_msg(upwd_e,'form_item form_normal','','','','i_states');
	}else{
		input_msg(upwd_e,'form_item form_normal','','','','');
	}
	input_msg(this,'form_item form_normal','i_remind','span_remind',"建议使用字母，数字，其他符号两种及以上组合，6-20个字符");
});
//失去焦点时，检测密码长度，不满足要求则下面的提示div显示警告
function valid_upwd(){
	var len=upwd_e.value.length;
	if(len<6 || len>20){
		input_msg(upwd_e,'form_item form_warn','i_error','span_error',"长度只能在6-20个字符之间");
		can_log.upwd=false;
	}else{
		input_msg(upwd_e,'form_item form_normal','','',"",'i_states');
		can_log.upwd=true;
	}
}
upwd_e.addEventListener("blur",valid_upwd);
//确认密码验证，获取焦点和失去焦点的时候做验证
var v_upwd=document.querySelector("input[name='upwd_valid']");
//获取焦点，输入框为空则显示提示消息
v_upwd.addEventListener("focus",function(){
	this.value=="" &&	input_msg(this,'form_item form_normal','i_remind','span_remind',"请再次输入密码");
});
v_upwd.addEventListener("keyup",function(){
	this.value=="" &&	input_msg(this,'form_item form_normal','i_remind','span_remind',"请再次输入密码");
});
//失去焦点，验证通过显示小勾，不通过则显示警告
function valid_v_upwd(){
	if(v_upwd.value===""){
		input_msg(v_upwd,'form_item form_warn','i_error','span_error',"内容为空","");
	}else	if(v_upwd.value!==upwd_e.value){
		input_msg(v_upwd,'form_item form_warn','i_error','span_error',"两次输入密码不一致","");
		can_log.v_upwd=false;
	}else{
		input_msg(v_upwd,'form_item form_normal','','',"",'i_states');
		can_log.v_upwd=true;
	}
}
v_upwd.addEventListener("blur",valid_v_upwd);
//手机号验证
var phone=document.querySelector("input[name='phone']");
//1.获取焦点显示提示消息
phone.addEventListener("focus",function(){
	this.value=="" &&	input_msg(this,'form_item form_normal','i_remind','span_remind',"通过验证后，您可以使用该手机找回密码");
});
phone.addEventListener("keyup",function(){
	this.value=="" &&	input_msg(this,'form_item form_normal','i_remind','span_remind',"通过验证后，您可以使用该手机找回密码");
});
//2.拾取焦点进行数据库验证，通过显示小勾，不通过显示已注册
function valid_phone(){
	var _this=phone;
	//正则验证手机号，失败显示警告消息
	if(!/^1[34578]\d{9}$/.test(phone.value)){
		input_msg(phone,'form_item form_warn','i_error','span_error',"手机格式错误","");
	}else{
		var xhr=new XMLHttpRequest();
		xhr.onreadystatechange=function(){
			if(this.readyState==4){
				if(this.status==200){
					if(this.responseText==="succ"){
						input_msg(_this,'form_item form_warn','i_error','span_error',"手机号已注册","");
						can_log.phone=false;
					}else{
						input_msg(_this,'form_item form_normal','','',"",'i_states');
						can_log.phone=true;
					}
				}else{
					alert("响应完成但有问题");
				}
			}
		}
		//正则验证通过，继续验证数据库
		xhr.open('POST','valid.php?phone='+this.value,true);
		xhr.setRequestHeader("content-type","application/x-www-form-urlencoded");
		xhr.send(null);
	}
}
phone.addEventListener("blur",valid_phone);
//邮箱验证，通过则显示小勾，不通过则显示格式错误
var email=document.querySelector("input[name='email']");
email.addEventListener("focus",function(){
	this.value=="" &&	input_msg(this,'form_item form_normal','i_remind','span_remind',"请填写正确的邮箱地址");
});
email.addEventListener("keyup",function(){
	this.value=="" &&	input_msg(this,'form_item form_normal','i_remind','span_remind',"请填写正确的邮箱地址");
});
function valid_email(){
	//正则验证邮箱，不通过显示格式不对，通过显示小勾
	if(!/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test(email.value)){
		input_msg(email,'form_item form_warn','i_error','span_error',"邮箱格式错误",'');
		can_log.email=false;
	}else{
		input_msg(email,'form_item form_normal','','',"",'i_states');
		can_log.email=true;
	}
}
email.addEventListener("blur",valid_email);

// 生成验证码
function createCode() {
	var elem=document.getElementById('canas-valid');
	var ctx = elem.getContext('2d');
	ctx.textBaseline='top';
//	绘制一个矩形,随机背景颜色
	ctx.fillStyle=randColor(180,230);
	ctx.fillRect(0,0,100,30);
//	生成随机数字或者字母
	var str='ABCDEFGHJKLMNPQRSTUVWXY3456789';
	var valid_code="";
	for(var i=0;i<4;i++){
		var txt=str[randNum(0,str.length)];
		valid_code += txt;
		ctx.save();
		ctx.translate(i*25+12,15);
		ctx.rotate(randNum(-45,45)*Math.PI/180);
		ctx.fillStyle=randColor(80,180);
		var fs = randNum(16,30);
		ctx.font = fs+'px SimHei';
		ctx.fillText(txt,-fs/2,-fs/2);
		ctx.restore();
	}
//	生成随机的五条线
	for(var i=0;i<5;i++){
		ctx.beginPath();
		ctx.moveTo(randNum(0,100),randNum(0,30));
		ctx.lineTo(randNum(0,100),randNum(0,30));
		ctx.strokeStyle = randColor(0,255);
		ctx.stroke();
	}
//	生成随机的100个小点
	for(var i=0;i<100;i++){
		ctx.beginPath();
		ctx.fillStyle=randColor(0,255);
		ctx.arc(randNum(1,99),randNum(1,29),1,0,2*Math.PI);
		ctx.fill();
	}
	sessionStorage['validCode']=valid_code;
}
createCode();
// 全局函数：生成一个随即数字
function randNum(min,max){
	return Math.floor(min+Math.random()*(max-min));
}
// 全局函数：生成并返回一个随机颜色(rgb格式)
function randColor(min,max){
	return `rgb(${randNum(min,max)},${randNum(min,max)},${randNum(min,max)})`;
}

//绑定更换验证码事件
document.getElementById("canas-valid").onclick= function () {
	createCode();
}
// 验证码验证
var validElem=document.querySelector('input[name="authcode"]');
validElem.onblur= function () {
	var fillCode = this.value.toUpperCase();
	if(fillCode===sessionStorage['validCode']){
		can_log.valid_code=true;
	}else{
		can_log.valid_code=false;
	};
}

//点击登录按钮，验证是否可以登录
var btn_log=document.querySelector("button[name='register']");
btn_log.addEventListener("click",function(){
	/*valid_user();
	valid_upwd();
	valid_v_upwd();
	valid_phone();
	valid_email();*/
	can_log.agree = document.querySelector('input[type="checkbox"]').checked;
	var valid = (can_log.email && can_log.phone && can_log.uname &&
					can_log.upwd && can_log.v_upwd && can_log.valid_code);

	if(!valid){
		window.scrollTo(0,0);
	}else{
		location.href=`user_add.php?uname=${user_elem.value}&upwd=${upwd_e.value}&phone=${phone.value}&email=${email.value}`;
	}
});