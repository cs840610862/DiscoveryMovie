(function(){
	//功能：异步插入页头和页尾
	window.onload=function() {
		//异步加载页头
		cs.ajax({
			url: 'data/header.php',
			success: function (data) {
				cs.getById("head").innerHTML = data;
				var ul=document.getElementById("menuStair");
				var con=ul.querySelectorAll("li");
				window.onscroll=scroll;
				ul.addEventListener("click",function(e){
					/*
					 1.循环判断点击的对象是哪一个
					 2.对应的点击事件跳转到相应的位置
					 */
					console.dir(con);
					for(var i=0;i<con.length;i++){
						if(e.target.parentNode==con[i]){
							switch(i){
								case 0:window.scrollTo(0,550); break;
								case 1:window.scrollTo(0,750); break;
								case 2:window.scrollTo(0,930); break;
								case 3:window.scrollTo(0,1130); break;
								case 4:window.scrollTo(0,1310); break;
								case 5:window.scrollTo(0,1520); break;
							}
						}
					}
				});
				function scroll(){
					var scrolly = window.scrollY;
					//如果楼梯挨着页脚的时候，就马上隐藏楼梯
					if(scrolly >= (cs.getById("footer").offsetTop-424)){
						ul.style.display="none";
						console.log('隐藏楼梯');
						return;
					}
					var stairs = cs.queryAll('#main_1 div.d1');
					var distance=[];
					for(var i=0;i<stairs.length;i++){
						distance.push(stairs[i].offsetTop);
					}
					if(scrolly >= (distance[0]-100-54)){
						//显示楼梯列表
						ul.style.display="block";
						//根据相应的位置，对应的部分突出显示
						if(scrolly>=(distance[5]-100-54*5)){
							fadeIn(con,5);
						}else if(scrolly>=(distance[4]-100-54*4)){
							fadeIn(con,4);
						}else if(scrolly>=(distance[3]-100-54*3)){
							fadeIn(con,3);
						}else if(scrolly>=(distance[2]-100-54*2)){
							fadeIn(con,2);
						}else if(scrolly>=(distance[1]-100-54*1)){
							fadeIn(con,1);
						}else if(scrolly>=(distance[0]-100)){
							fadeIn(con,0);
						}
					}else{
						//影藏楼梯列表
						ul.style.display="none";
					}
				}
				function fadeIn(elem,index){
					//遍历elem下面所有li，如果下标不等于index则去掉样式
					for(var i=0;i<elem.length;i++){
						if(i!=index){
							elem[i].className="";
						}else{
							elem[i].className="scroll"
						}
					}
				}
			},
			error: function (){
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
				console.log(arguments);
			}
		})
	}
}
)();











