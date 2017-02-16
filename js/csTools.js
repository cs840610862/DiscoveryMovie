//创建构造函数
function cscz(){}
//发送异步请求
cscz.prototype.ajax=function(obj){
	/*
		obj={
			type:,		//请求消息类型
			url:,			//请求地址
			data:,		//发送请求的数据
			success:,	//成功时候调用的函数
			error:,		//失败时候调用的函数
		}
	*/
	obj.type=obj.type || "POST";
	if(obj.data){
		var data="";
		for(var key in obj.data){
			data += `${key}=${obj.data[key]}&`;
		}
		data=data.slice(0,-1);
	}else{
		var data=null;
	};
	var xhr=new XMLHttpRequest();
	xhr.onreadystatechange=function(){
		if(this.readyState===4){
			var data=this.responseText;
			if(data){	//data不为空时
				try{
					data=JSON.parse(data);
				}catch(err){}
			}else{		//data为空的时候
				
			}
			if(this.status===200){
				obj.success !== undefined && obj.success(data,"success",xhr);
			}else{
				obj.error !== undefined && obj.error(data);
			}
		}
	}
	obj.type==='GET' && (obj.url += ('?'+data));
	xhr.open(obj.type,obj.url,true);
	obj.type==='POST' &&
	xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	if(obj.type==='POST'){
		xhr.send(data);
	}else{
		xhr.send(null);
	}
}
cscz.prototype.getById=function(idName){
	return document.getElementById(idName);
}
cscz.prototype.query=function(selector){
	return document.querySelector(selector);
};
cscz.prototype.queryAll=function(selector){
	return document.querySelectorAll(selector);
};
cscz.prototype.urlToObject = function (url) {
	/* 把url转化为对象并返回 */
	var sendData = url.split('?')[1];
	var arr = sendData.split('&');
	var obj = {},arr2 = [];
	for(var i=0; i<arr.length; i++){
		arr2 = arr[i].split("=");
		obj[arr2[0]] = arr2[1];
	}
	return obj;
}
cscz.prototype.prefix = function (data) {
	return data<10 ? "0"+data : ""+data;
}
cscz.prototype.dateForm = function (date,n) {
	//n=1返回yy-mm-dd
	//n=2返回hh:mm:ss
	//n=3返回yy-mm-dd hh:mm:ss
	console.log(date)
	if(n === 1){
		return this.prefix(date.getFullYear())+"-"+
			this.prefix(date.getMonth()+1)+"-"+ this.prefix(date.getDate());
	}else if(n === 2){
		return this.prefix(date.getHours())+":"+
			this.prefix(date.getMinutes())+":"+ this.prefix(date.getSeconds());
	}else if (n === 3) {
		return this.prefix(date.getFullYear())+"-"+
			this.prefix((date.getMonth()+1))+"-"+ this.prefix(date.getDate())
			+' '+this.prefix(date.getHours())+":"+
			this.prefix(date.getMinutes())+":"+ this.prefix(date.getSeconds());
	}
	
}
var cs=new cscz();