$(function(){
    /**头部动态加载**/
    $(`<link rel="stylesheet" href="css/header.css">`).appendTo("head");
    $.ajax({
        url:"header.html",
        type:"get",
        success:function(res){
            $(res).replaceAll("#header");
            /**微信和微博的显示与隐藏**/          
            $(".weibo").hide();
            $(".weixin").hide();
            $("#sina").mouseover(function(){
                $(".weibo").show();
            }).mouseout(function(){
                $(".weibo").hide();
            });
            $("#weChat").mouseover(function(){
                $(".weixin").show();
            }).mouseout(function(){
                $(".weixin").hide();
            });
            /**全部分类部分的显示与隐藏**/
            $(".lis5 li:first").show().siblings().hide();
            $(".lis5").on("mouseover","li",function(){
                $(".lis5 li").show();
            }).on("mouseout","li",function(){
                $(".lis5 li:first").siblings().hide();
            })
	        /*左侧边栏回到顶部*/
            $('#toTop').click(function(e){
                e.preventDefault();
                $('html,body').animate({scrollTop:0},'slow');//慢慢回到页面顶部
            });
            $(window).scroll(function(){
                if($(this).scrollTop() <300) {
                    $('#toTop').fadeOut('slow');//toTop按钮淡出
                } else {
                    $('#toTop').fadeIn('slow');//反之按钮淡入
                }
            });
        }
    });
    /****底部部动态加载****/
    $(`<link rel="stylesheet" href="css/footer.css">`).appendTo("head");
    $.ajax({
        url:"footer.html",
        type:"get",
        success:function(res){
            $(res).replaceAll("#footer");
        }
    });  
})