
var chbAll = document.querySelector(".list1>table>thead>tr>th:first-child>input");
chbAll.onclick = function(){
	var chbAll = this;
	var chbs = document.querySelectorAll(".list1>table>tbody>tr>td:first-child>input");
	for(var chb of chbs){
		chb.checked = chbAll.checked;
	}
}
var all = document.querySelector(".list1>table>tfoot>tr>td:first-child>input");
all.onclick = function(){
	var all = this;
	var chbs = document.querySelectorAll(".list1>table>tbody>tr>td:first-child>input");
	for(var chb of chbs){
		chb.checked = all.checked;
	}
}
var table=document.getElementById("data");
var btns=table.getElementsByTagName("button");
for(var btn of btns){
	btn.onclick=function(){
		var btn=this;
		var input=btn.parentNode.children[1]; 
		var n=parseInt(input.value);
		if(btn==input.nextElementSibling)
			n++;
		else if(n>1)
			n--;
			input.value=n;
		var td=btn.parentNode.nextElementSibling;
		var price=parseFloat(btn.parentNode.previousElementSibling.innerHTML);
		var sub=price*n;
		td.innerHTML=`${sub.toFixed(2)}`;
		var tdTotal=document.getElementById("priceTotal");
		var tds=table.querySelectorAll("tbody>tr>td:nth-child(5)");
		var total=0;
		for(var td of tds){
			total+=parseFloat(td.innerHTML);
		}
		tdTotal.innerHTML=`${total.toFixed(2)}`;

		var count=document.getElementById("count");
		var num=table.querySelectorAll("tbody>tr>td:nth-child(4)>input");
		var Tal=0;
		for(var c of num){
			Tal+=parseFloat(c.value);
		}
		count.innerHTML=`${Tal}`;
	}
}

/*
        var cals = document.getElementsByName("cal");
		var selected = document.getElementById("selected");
		var ff = document.getElementById("ff");
		var trs = document.getElementsByTagName("tr");
		var all = document.getElementsByName("all");
		var shangs = document.getElementsByName("shang");
		var nums = document.getElementsByName("num");
		var jians = document.getElementsByName("jian");
		var adds = document.getElementsByName("add");
		var totDel = document.getElementById("totDel");
		var priceTotal = document.getElementById("priceTotal");
		var selectedTotal = document.getElementById("selectedTotal");
		all[0].onchange = function(){
			for(var i = 0;i < shangs.length;i++){
				shangs[i].checked = this.checked;
			}
			all[1].checked = this.checked;
			totalPrice();
		}
		all[1].onchange = function(){
			for(var i = 0;i < shangs.length;i++){
				shangs[i].checked = this.checked;
			}
			all[0].checked = this.checked;
			totalPrice();
		}
		for(var i = 0;i < shangs.length;i++){
			shangs[i].onchange = checkAll;
		}
		function checkAll(){
			var c = true;
			for(var i = 0;i < shangs.length;i++){
				if(shangs[i].checked == false){
					c = false;
					break;
				}
			}
			for(var k = 0;k < all.length;k++){
				all[k].checked = c;
			}
			sel();
			totalPrice();
		}
		function totalPrice(){
			var p = 0;
			var total = 0;
			for(var i = 1;i < trs.length-1;i++){
				if(trs[i].getElementsByTagName("input")[0].checked){
					var rowPrice =trs[i].cells[4].innerHTML;
					var num = document.getElementsByName("num")[i-1];
					p = p + parseFloat(rowPrice);
					total = total + parseInt(num.value);
				}
				
			}
			priceTotal.innerHTML = p.toFixed(2);
			selectedTotal.innerHTML=total;
		}
		function getRowPrice(tr){
			var cols = tr.cells;
			var price = cols[2].innerHTML;
			var num = tr.getElementsByTagName("input")[2];
			var rowPrice = cols[4];
			rowPrice.innerHTML = price * parseInt(num.value);
			if(num.value <= 1){
				num.previousElementSibling.value = " ";
			}else{
				num.previousElementSibling.value = "-";
			}
			totalPrice();
		}
		for(var i = 0;i < nums.length;i++){
			nums[i].onkeyup = function(){
				getRowPrice(this.parentNode.parentNode);
			};
			jians[i].onclick = function(){
				if(this.nextElementSibling.value <= 1){
					this.value = " ";
				}else{
					this.value = "-";
					this.nextElementSibling.value--;
					
				}
				getRowPrice(this.parentNode.parentNode);
			}
			adds[i].onclick = function(){
				this.previousElementSibling.value++;
				if(this.previousElementSibling.value > 1){
					this.previousElementSibling.previousElementSibling.value = "-";
				}
				getRowPrice(this.parentNode.parentNode);
			}
		}
		function del(){
			this.parentNode.parentNode.parentNode.removeChild(this.parentNode.parentNode);
			totalPrice();
		}
		for(var i = 1;i < trs.length-1;i++){
			var btn = trs[i].getElementsByTagName("span")[0];
			btn.onclick = del;
		}
		totDel.onclick = function(){
			for(var i = 0;i < shangs.length;i++){
				if(shangs[i].checked =true){
					shangs[i].parentNode.parentNode.parentNode.removeChild(shangs[i].parentNode.parentNode);
					i--;
				}
				
			}
			totalPrice();
		}
		selected.onclick = function(){
			spans = this.getElementsByTagName("span");
			for(var i = 1;i < spans.length;i++){
				if(spans[i].style.display != "none"){
					spans[i].style.display="none";
				}else{
					spans[i].style.display = "inline";
				}
			}
			if(ff.style.display != "none"){
				ff.style.display = "none";
			}else{
				ff.style.display = "block";
			}
		}
		function sel(){
			for(var i = 0;i < shangs.length;i++){
				var dd = document.getElementById("dd"+i);
				if(shangs[i].checked == true){
					dd.style.display = "block";
				}else{
					dd.style.display = "none";
				}
			}
		}
		for(var i = 0;i < cals.length;i++){
			cals[i].onclick = function(){
				this.parentNode.style.display = "none";	
				for(var j = 0;j < cals.length;j++){
					var dd = document.getElementById("dd"+j);
					if(dd.style.display == "none"){
						shangs[j].checked = false;
					}
				}
				totalPrice();
				checkAll();
			}
		}*/






