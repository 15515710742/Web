	
$(function(){
	function loadPage(pno=0){
		$.ajax({
			url:"http://127.0.0.1:4000/details",
			type:"get",
			data:{pno},
			dataType:"json",
			success:function(data){
				console.log(data)
				var html = ``;
				for(var i=0;i<data.res.length;i++){				
					html+=`<li>
						<div class="box4">
							<img src="img/boxtm.png"/>
							<div class="box_lis1">
								<div class="box_pic">
									<div class="pic_right">
										<img src="${data.res[i].src_sm.split(',')[0]}"/>
										<img src="${data.res[i].src_sm.split(',')[1]}"/>
										<img src="${data.res[i].src_sm.split(',')[2]}"/>
									</div>
								</div>
								<div class="box_price">
									<span id="txt1">${data.res[i].bulk}</span>
								</div>
							</div>
							<div class="box_lis2">
								<div class="contry">
									<img src="img/cha.png"/>
									<span>中国品牌</span>
								</div>
								<div class="box_pic1">
									<a href="goods.html?id=${data.res[i].pid}">
										<img src="${data.res[i].src_lg.split(',')[0]}" class="now"/>
										<img src="${data.res[i].src_lg.split(',')[1]}"/>
										<img src="${data.res[i].src_lg.split(',')[2]}"/>
									</a>
								</div>
								<div class="box_price">
									<span class="price1">￥${data.res[i].newprice.toFixed(1)}</span>  
									<span class="price2">￥${data.res[i].oldprice.toFixed(1)}</span> 
									<span id="txt2">${data.res[i].disc}</span>
								</div>
								<div class="fottxt">
									<span>${data.res[i].title}</span>
									<a href="goods.html?id=${data.res[i].pid}">${data.res[i].detail}</a>
									<p>${data.res[i].bulk}</p>
								</div>		
							</div>
							<button>加入购物车</button>
							<div class="time"></div>					
						</div>
					</li>`;
				}
				$(".box3 #demo").html(html);

				var html=`<li><button>上一页</button></li>`;
				for(var i=1;i<=data.pageCount;i++){
					html+=`<li ${data.pno==i-1?'class="active"':''}"><button>${i}</button></li>`;
				}
				html+=`<li><button>下一页</button></li>`;
				$("#page").html(html);
				if(pno==0)
					$("#page").children(":first").addClass("disabled");
				if(pno==data.pageCount-1)
					$("#page").children(":last").addClass("disabled");

				/**大小图切换**/
				var $lis=$("#demo li");	
				for(var i=0;i<$lis.length;i++){
					(function(j){			
						var $box4=$("#demo li").eq(j).children();
						console.log($box4)
						$box4.mouseover(function(){
							$(".box4 button").css("display","block");
							$(".box4 #txt2").css("display","none");
							$(".box4 button").stop().animate({"left":"55px"},300)
							$(".box_lis2").stop().animate({"height":"520px"},300);
							$(".box_lis1").stop().animate({"margin-left":"85px","height":"520px"},300);
						}).mouseleave(function(){
							$(".box4 button").css("display","none");
							$(".box4 #txt2").css("display","block");
							$(".box4 button").stop().animate({"left":"15px"},300)
							$(".box_lis2").stop().animate({"height":"485px"},300);
							$(".box_lis1").stop().animate({"margin-left":0,"height":"485px"},300);
						})								
					})(i);

					$(".pic_right img").first().css("border","4px solid #DEB362");
					$(".pic_right img").bind("mouseover",function(){
						$(this).css("border","4px solid #DEB362").siblings("img").css("border","4px solid #fff");
						var $index = $(this).index();//获取当前点击的索引号
						$(".box_lis2 .box_pic1 img").eq($index).addClass("now").siblings(".box_pic1 img").removeClass("now");
					});
				}


				var lo = document.getElementsByClassName("time")[0];		 
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
					time.innerHTML = h+"天"+x+"时"+m+"分"+c+"秒";
				}
				setInterval(function() {
					shijian("2018,11,30",lo);
				},1000);
			}	
		});
	}
	loadPage();
	$("#page").on("click","button",function(){
		var $btn=$(this);
		if(!$btn.parent().is(".disabled,.active")){
		  if($btn.html()=="上一页"){
			//var pno=?;
		  }else if($btn.html()=="下一页"){
			//var pno=?;
		  }else{
			var pno=$btn.html()-1;
		  }
		  loadPage(pno);
		}
	});		
});
