//手风琴效果
cs.query("ul.left_ul").addEventListener("click",function(e){
	var target=e.target;
	if(target.nodeName==="I"){
		//当前i的class改为open
		target.className = target.className==="close" ? "open":"close";
		//其他i的class改为close
	}
});