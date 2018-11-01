    
var banner = document.getElementsByClassName("banner")[0];
var pics = banner.getElementsByClassName("pic");
var span= banner.getElementsByTagName("span");
var index = 0;
var timer = null;
for(var i = 0;i<pics.length;i++){
	pics[i].style.opacity = 0;
}
pics[index].style.opacity = 1;
function go(num){
	pics[index].style.opacity =0;
	pics[num].style.opacity =1;
	span[index].className = "";
	span[num].className = "now";
	index = num;
}
function auto(){
	timer = setInterval(function(){
		var n = index;
		n++;
		if(n>=pics.length){n=0};
		go(n);
	},2000)
}
banner.onmouseover = function(){
	clearInterval(timer)
}
banner.onmouseout = function(){
	auto()
}
auto();
for(var i = 0;i<span.length;i++){
	(function(j){
		span[j].onmouseover = function(){
			go(j)
		}
	}(i))
}			



$(function(){
	
	//广告轮播
	function move(){
		$(".note .conter ul").animate({"margin-top":"-30px"},800,function(){
			$(this).css("margin-top",0);
			$(".note ul li").first().appendTo($(".note ul"));
		});
	}
	setInterval(move,3000);

	/*右侧边栏*/
	$('#step1').click(function(e){
		e.preventDefault();
		var t1 = $(".wz").offset().top;
		$('html,body').animate({scrollTop:t1},'slow');
	});
	$('#step2').click(function(e){
		e.preventDefault();
		var t2 = $(".wz1").offset().top;
		$('html,body').animate({scrollTop:t2},'slow');
	});
	$('#step3').click(function(e){
		e.preventDefault();
		var t3 = $(".wz2").offset().top;
		$('html,body').animate({scrollTop:t3},'slow');
	});
	$('#step4').click(function(e){
		e.preventDefault();
		var t4 = $(".wz3").offset().top;
		$('html,body').animate({scrollTop:t4},'slow');
	});
	$('.toTop').click(function(e){
		e.preventDefault();
		$('html,body').animate({scrollTop:0},'slow');
	});
	//滚动到指定楼层
	$(window).scroll(function(){
		var height=$(window).scrollTop();
		var t1 = $(".wz").offset().top;
		var t2 = $(".wz1").offset().top;
		var t3 = $(".wz2").offset().top;
		var t4 = $(".wz3").offset().top;
		if(height>t1 && height<t2){
			$('#step1').addClass("active");
		}else{
			$('#step1').removeClass("active");
		}
		if(height>t2 && height<t3){
			$('#step2').addClass("active");
		}else{
			$('#step2').removeClass("active");
		}
		if(height>t3 && height<t4){
			$('#step3').addClass("active");
		}else{
			$('#step3').removeClass("active");
		}
		if(height>t4){
			$('#step4').addClass("active");
		}else{
			$('#step4').removeClass("active");
		}	
	});
});

/**vue* */
new  Vue({
	el:"#app",
	data:{
		list:[],
		//infoList:[]
	},
	methods:{
		getList(){		
			$.ajax({
				type:"get",
				url:"http://127.0.0.1:4000/index",
				async:true,
				success:res=>{
					this.list=res;
				}
			})
		},
		/*getInfo(){		
			$.ajax({
				type:"get",
				url:"http://127.0.0.1:4000/index/list",
				async:true,
				success:res=>{
					console.log(res)
					this.infoList=res;
				}
			})
		}*/
	},
	mounted(){
		this.getList();
		//this.getInfo();
	}	
});

//倒计时
var lo = document.getElementById("tm");
var lo1 = document.getElementById("tm1");
var lo2 = document.getElementById("tm2");
var lo3 = document.getElementById("tm3");
function shijian(sj,time){
	var d = new Date(sj);
	var t = d.getTime();
	var t2 = new Date();
	var d2 = t2.getTime();
	var d4 = (t-d2);
	var r=parseInt(d4/1000);
	var h = Math.floor(r/(3600*24));
	var x = Math.floor((r-(h*3600*24))/(60*60));
	var m =Math.floor((r-((h*3600*24)+(60*60*x)))/60);
	var c =Math.floor(r-((h*3600*24)+(60*60*x)+(60*m)));
	time.innerHTML = x+":"+m+":"+c;
}
setInterval(function() {
	shijian("2019,1,01",lo);
},1000);	  	
						
setInterval(function(){	
	shijian("2019,1,01",lo1);
},1000);	  	
setInterval(function(){	
	shijian("2019,1,01",lo2);
},1000);	  	
setInterval(function(){	
	shijian("2019,1,01",lo3);
},1000);










