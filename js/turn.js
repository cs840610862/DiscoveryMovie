/*
	1.图片自动轮播
	2.左右箭头控制轮播
	3.下面的圆形按钮点击轮播跳转
*/
imgs = [{
	i: 0,
	src: "img/1.jpg"
}, {
	i: 1,
	src: "img/2.jpg"
}, {
	i: 2,
	src: "img/3.jpg"
}, {
	i: 3,
	src: "img/4.jpg"
}, {
	i: 4,
	src: "img/5.jpg"
}];
var slider = {
	liWidth: 0,
	timer: null,
	turn: null, //#turn的div
	imgList: null, //#imgList的ul
	imgNum: null, //放12345..圆形按钮的ol
	imgArr: [], //放初始图片地址的数组
	index: 1, //展示图片是第几张
	currLeft: 0, //当前的定位left值
	waitTime: 4000,
	init() {
		var _this = this; //留住this
		this.liWidth = parseFloat(getComputedStyle(document.getElementById("turn")).width);
		this.turn = document.getElementById("turn");
		this.imgList = document.getElementById("imgList");
		this.imgNum = document.getElementById("imgNum");;
		this.updateView();
		this.timer = setInterval(this.move.bind(this, -1), this.waitTime);
		this.turn.addEventListener("click", function(e) {
			var elem = e.target;
			clearInterval(_this.timer);
			_this.timer = null;
			if (elem.className === "next") {
				//一旦点击下一个按钮，停掉计时器，然后向左移动
				_this.move(-1);
			} else if (elem.className === "prev") {
				//一旦点击下一个按钮，停掉计时器，然后向左移动
				_this.move(1);
			} else if (elem.parentNode.getAttribute("id") === "imgNum") {
				//console.log("cs");
				var n = parseInt(elem.innerHTML);
				_this.move.call(_this, _this.index + 1 - n);
			}
		});
	},
	updateView() {
		//根据imgs的内容，更新轮播图片
		//遍历imgs，按顺序把图片放入到#imgs里面
		var html = "";
		var olNum = "";
		this.index = imgs[0].i;
		for (var i = 0; i < imgs.length; i++) {
			html += `
				<li><img src="${imgs[i].src}"></li>	
			`;
			if (this.index === i) {
				olNum += `<li class="active">${i+1}</li>`;
			} else {
				olNum += `<li>${i+1}</li>`;
			}
		}
		this.imgList.innerHTML = html;
		this.imgNum.innerHTML = olNum; //生成12345按钮
	},
	move(n) {
		//如果n>0,则把右边的剪到左边，使得最终显示的图片始终在第一张
		if (n >= 0) {
			img2 = imgs.slice(0, -n);
			imgs = imgs.splice(-n).concat(img2);
			this.updateView();
			//console.log(imgs,this.imgList.innerHTML);
			this.imgList.style.transition = "all 0s ease";
			this.imgList.style.left = -n * this.liWidth + "px";
			this.currLeft = parseFloat(getComputedStyle(this.imgList).left);
			this.imgList.style.transition = "all 1s ease";
			this.imgList.style.left = this.currLeft + n * this.liWidth + "px";
			if (this.timer === null) {
				this.timer = setInterval(this.move.bind(this, -1), this.waitTime);
			}
		} else if (n < 0) {
			//在当前的left基础上移动距离:n*liWidth
			this.currLeft = parseFloat(getComputedStyle(this.imgList).left);
			this.imgList.style.transition = "all 1s ease";
			this.imgList.style.left = this.currLeft + n * this.liWidth + "px";
			//移动完之后，把第一张剪到最后一张，再更新一次界面
			imgs = imgs.concat(imgs.splice(0, -n));
			setTimeout(reUpdate.bind(this), 1000);

			function reUpdate() {
				this.imgList.style.transition = "all 0s ease";
				this.imgList.style.left = 0;
				this.updateView();
				if (this.timer === null) {
					this.timer = setInterval(this.move.bind(this, -1), this.waitTime);
				}
			}
		}
	},
}
slider.init();