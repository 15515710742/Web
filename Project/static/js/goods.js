		
 var lo = document.getElementById("time");		 
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
		shijian("2018,12,30",lo);
		},1000);		


window.addEventListener("load",function(){
			var txt=document.getElementById("js");
		     add.onclick=function(){
				var txt1=txt.value*1;
				txt.value=++txt1;
			}
		     del.onclick=function(){
		     	if(txt.value<=1){
		     		txt.value="1";
		     	}
		     	else if(txt.value>1){
				var txt1=txt.value*1;
				txt.value=--txt1;
				}
			}
		});	
		
var btn = document.getElementById("btn2");
var show = document.getElementById("showm");
btn.onmouseover=function(){
			show.style.display="block";
		}
		btn.onmouseout=function(){
		show.style.display="none"
		}
	

$(function() {
	$("#cbtn").click(function(event){
	    var flyer=$("#fly")
		var n=$(".count span").text();
			n++;
		$(".count span").text(n)
		flyer.fly({
			start: {
				left: event.clientX,
				top: event.clientY
			},
			end: {
				left:1900,
				top:160,
				width: 0,
				height: 0
			}
		});
		
	});
	var ione = $(".one"),
		ithe = $(".the"),
		itwo = $(".two img"),
		tthe = $(".the img");	
	var arr = ["img/bg1.jpg","img/bg2.jpg","img/bg3.jpg","img/bg4.jpg"];
	var oarr = ["img/lg1.jpg","img/lg2.jpg","img/lg3.jpg","img/lg4.jpg"];
	itwo.each(function(i){
		$(this).hover(function(){
			$(".one img").attr("src",arr[i])
			tthe.attr("src",oarr[i])
			itwo.removeClass("active")
			$(this).addClass("active")
		})		
		ione.mousemove(function(a){
			var evt = a || window.event
			ithe.css('display','block')
			var ot = evt.clientY-($(".one").offset().top- $(document).scrollTop())-87;
			var ol = evt.clientX-($(".one").offset().left- $(document).scrollLeft())-87;
			if(ol<=0){
				ol = 0;
			}
			if(ot<=0){
				ot = 0;
			}
			if(ol>=175){
				ol=175
			}
			if(ot>=175){
				ot=175
			}
			$("span").css({'left':ol,'top':ot})
			var ott = ot/350*800
			var oll = ol/350*800
			tthe.css({'left':-oll,'top':-ott})
		})
		ione.mouseout(function(){
			ithe.css('display','none')
		})
		
	})	
})
	
