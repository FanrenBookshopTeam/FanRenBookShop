<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>凡人书店首页</title>
<link rel="stylesheet" type="text/css" href="style/frontBase.css" />
<style>
.medium {
	height:600px;
}
.medium .mLeft2 {
	width:184px;
	height:598px;
	float:left;
	border:1px solid #487a6f;
	border-radius:4px 4px 0 0;
}
.mLeft2 div {
	height:35px;
	background:#487a6f;
	color:#fff;
	text-align:center;
	line-height:35px;
}
.mLeft2 ul {
	text-indent:50px;
	list-style:none;
	padding-left:10px;
	padding-right:10px;
}
.mLeft2 ul li a {
	width:164px;
	height:28px;
	display:block;
	font-size:14px;
	line-height:28px;
	text-decoration:none;
	color:#487a6f;
	font-weight:bold;
	border-bottom:1px dotted #487a6f;
}
.mLeft2 ul li a:hover {
	border-bottom:1px solid #487a6f;
	color:#F63;
}
.medium .mMedium {
	width:754px;
	height:600px;
	float:left;
	padding-left:10px;
	padding-right:10px;
}
.mMedium div {
	border-bottom:2px solid #487a6f;
	height:34px;
	line-height:34px;
	color:#487a6f;
	font-weight:bold;
}
.mMedium dl {
	width:148px;
	height:242px;
	float:left;
	padding:20px;
}
.mMedium dl dt img {
	width:148px;
	height:180px;
}
.mMedium dl dd {
	height:62px;
}
.mMedium dl dd span {
	display:block;
}

.mMedium .s1 a {
	font-size:12px;
	color:#000;
	text-decoration:none;
}
.mMedium .s2 {
	height:24px;
	line-height:24px;
	color:#aaa;
	font-size:12px;
}
.mMedium .s3 {
	color:#c30;
	font-weight:bold;
	font-size:14px;
}
.mMedium .s3 del {
	margin-left:10px;
	font-weight:normal;
	color:#aaa;
}
.mMedium .s1 .ahover,.mMedium .s1 a:hover {
	color:#ec7814;
	text-decoration: underline;
}

.medium .mRight {
	width:240px;
	height:600px;
	float:right;
}
.mRight .ti {
	height:34px;
	color:#d72832;
	font-size:16px;
	font-weight:bold;
	line-height:34px;
	text-indent:32px;
	background:url(image/prize.png) no-repeat 2px center;
}
.mRight .ti2 {
	height:25px;
	color:#487a6f;
	font-size:14px;
	line-height:25px;
	font-weight:bold;
	text-indent:10px;
	width:238px;
	border-top:1px solid #d8d8d8;
	border-right:1px solid #d8d8d8;
	border-left:1px solid #d8d8d8;
	border-bottom:1px dotted #d8d8d8;
	text-decoration:underline;
}
.mRight ul {
	width:220px;
	height:519px;
	border:1px solid #d8d8d8;
	padding:9px;
	list-style:none;
	text-indent:10px;
	font-size:12px;
	
}
.mRight ul .lastnon .bar1 {
	height:35px;
	line-height:35px;
	border-bottom:1px dotted #d8d8d8;
	width:220px;
	word-break: break-all;
	word-wrap:break-word;
	overflow:hidden;
}
.rank {
	font-size:14px;
	font-weight: 500;
	display:inline-block;
	width:27px;
	height:35px;
}

.mRight ul .lastnon .bookName {
	margin-left:7px;
}
#test {
	display:none;
}
.mRight ul .lastnon .bar2 {
	width:220px;
	height:175px;
	border-bottom:1px dotted #d8d8d8;
}
.bar2 .rank {
	margin-top:3px;
}
.bar2 img {
	vertical-align:top;
	margin-left:7px;
	margin-top:15px;
	width:90px;
	height:128px;
}
.bar2 {
	position:relative;
}
.bar2 .bookName2 {
	display:block;
	width:70px;
	height:50px;
	position:absolute;
	top:25px;
	left:145px;
	text-indent:0;
	overflow:hidden
}
.bar2 .bookName2 a {
	text-decoration:none;
	color:#000;	
}
.bar2 .bookName2 a:hover,.bar2 .bookName2 .ahover {
	text-decoration:underline;
	color:#ec7814;
}
.bar2 .price, .bar2 .price2{
	display:block;
	width:70px;
	height:20px;
	position:absolute;	
	left:145px;
	text-indent:0;
	font-size:14px;
}
.bar2 .price {
	top:80px;
	font-weight:bold;
	color:#c30;
}
.bar2 .price2 {
	top:100px;
	font-weight: normal;
	color:#aaa;
}
.mRight .lastnon .bar2{
	display:none;
}
.mRight .liOn .bar1 {
	display:none;
	
}
.mRight .liOn .bar2 {
	display:block;
}

</style>
<script>
window.onload = function(){
	//老板推荐
	var dts = document.getElementsByClassName('mMedium')[0].getElementsByTagName('dt');
	for(var i=0;i<dts.length;i++)
	{
		//字体状态改变
		dts[i].onmouseover = function(){
			var dl = this.parentNode;
			var a = dl.getElementsByTagName('dd')[0].getElementsByTagName('a')[0];
			a.className = 'ahover';
		}
		dts[i].onmouseout = function(){
			var dl = this.parentNode;
			var a = dl.getElementsByTagName('dd')[0].getElementsByTagName('a')[0];
			a.className = '';
		}
	}
	//图书畅销榜
	var lastnons = document.getElementsByClassName('lastnon');
	for(var i=0;i<lastnons.length;i++)
	{
		//手风琴效果
		lastnons[i].onmouseover = function(){
			var liOn = document.getElementsByClassName('liOn')[0];
			liOn.className = 'lastnon';
			this.className = 'lastnon liOn';
		}
		//字体状态改变
		var a2 = lastnons[i].getElementsByClassName('bar2')[0].getElementsByTagName('a')[0];
		a2.onmouseover = function(){
			var a3 = this.parentNode.parentNode.getElementsByClassName('bookName2')[0].getElementsByTagName('a')[0];
			a3.className = 'ahover';
		}
		a2.onmouseout = function(){
			var a3 = this.parentNode.parentNode.getElementsByClassName('bookName2')[0].getElementsByTagName('a')[0];
			a3.className = '';
		}

	}
}
</script>
</head>
<body>
<!--网页顶部，常用（含导航、logo、购物车、登录注册跳转、个人信息跳转等等）-->
<div class="top">
	<div class="tTop">
    	<div>
        	<span class="tTop1"><marquee width="900">message</marquee></span>
            <span class="tTop2">欢迎光临网上书店，请<a href="#" class="on">登录</a> <a href="#">成为会员</a> <a href="#">用户名</a></span>
        </div>
    </div>
    <div class="tMedium">
    	<span class="logo"></span>
        <div class="search">
        	<form method="post" action="">
            	<input type="text" class="info" />
                <input type="submit" class="query" value="" />
            </form>
        </div>
        <span class="shoppingCartAndOrder">
        	<a href="#" class="shoppingCart">购物车 0</a>
        </span>
    </div>
</div>
<!--网页中部、可变（全部图书分类不变），此处含有图书分类、新书上架及畅销榜-->
<div class="medium">
	<!--全部图书分类-->
	<div class="mLeft1">
    	<ul>
            <li><a href="#">历史</a></li>
            <li><a href="#">历史</a></li>
            <li><a href="#">历史</a></li>
            <li><a href="#">历史</a></li>
        </ul>
    </div>
   <!-- 图书分类-->
	<div class="mLeft2">
    	<div>图书分类</div>
        <ul>
            <li><a href="#">历史</a></li>
            <li><a href="#">历史</a></li>
            <li><a href="#">历史</a></li>
            <li><a href="#">历史</a></li>
        </ul>
	</div>
  <!--  新书上架-->
    <div class="mMedium">
    	<div>老板推荐</div>
        <ul>
        	<li>
            	<dl>
                    <dt><a href="#"><img src="image/ss.JPG" title="百岁只好，一言为定"  alt="百岁只好，一言为定" /></a></dt>
                    <dd>
                    	<span class="s1"><a href="#" title="百岁只好，一言为定">初次爱你，请多关照</a></span>
                        <span class="s2">咪蒙</span>
                        <span class="s3">¥26.90<del>¥39.80</del></span>
                    </dd>
       	 		</dl>
                <dl>
                    <dt><a href="#"><img src="image/ss.JPG" title="百岁只好，一言为定"  alt="百岁只好，一言为定" /></a></dt>
                    <dd>
                    	<span class="s1"><a href="#" title="百岁只好，一言为定">初次爱你，请多关照</a></span>
                        <span class="s2">咪蒙</span>
                        <span class="s3">¥26.90<del>¥39.80</del></span>
                    </dd>
       	 		</dl>
                <dl>
                    <dt><a href="#"><img src="image/ss.JPG" title="百岁只好，一言为定"  alt="百岁只好，一言为定" /></a></dt>
                    <dd>
                    	<span class="s1"><a href="#" title="百岁只好，一言为定">初次爱你，请多关照</a></span>
                        <span class="s2">咪蒙</span>
                        <span class="s3">¥26.90<del>¥39.80</del></span>
                    </dd>
       	 		</dl>
                <dl>
                    <dt><a href="#"><img src="image/ss.JPG" title="百岁只好，一言为定"  alt="百岁只好，一言为定" /></a></dt>
                    <dd>
                    	<span class="s1"><a href="#" title="百岁只好，一言为定">初次爱你，请多关照</a></span>
                        <span class="s2">咪蒙</span>
                        <span class="s3">¥26.90<del>¥39.80</del></span>
                    </dd>
       	 		</dl>
                <dl>
                    <dt><a href="#"><img src="image/ss.JPG" title="百岁只好，一言为定"  alt="百岁只好，一言为定" /></a></dt>
                    <dd>
                    	<span class="s1"><a href="#" title="百岁只好，一言为定">初次爱你，请多关照</a></span>
                        <span class="s2">咪蒙</span>
                        <span class="s3">¥26.90<del>¥39.80</del></span>
                    </dd>
       	 		</dl>
                <dl>
                    <dt><a href="#"><img src="image/ss.JPG" title="百岁只好，一言为定"  alt="百岁只好，一言为定" /></a></dt>
                    <dd>
                    	<span class="s1"><a href="#" title="百岁只好，一言为定">初次爱你，请多关照</a></span>
                        <span class="s2">咪蒙</span>
                        <span class="s3">¥26.90<del>¥39.80</del></span>
                    </dd>
       	 		</dl>
                <dl>
                    <dt><a href="#"><img src="image/ss.JPG" title="百岁只好，一言为定"  alt="百岁只好，一言为定" /></a></dt>
                    <dd>
                    	<span class="s1"><a href="#" title="百岁只好，一言为定">初次爱你，请多关照</a></span>
                        <span class="s2">咪蒙</span>
                        <span class="s3">¥26.90<del>¥39.80</del></span>
                    </dd>
       	 		</dl>
                <dl>
                    <dt><a href="#"><img src="image/ss.JPG" title="百岁只好，一言为定"  alt="百岁只好，一言为定" /></a></dt>
                    <dd>
                    	<span class="s1"><a href="#" title="百岁只好，一言为定">初次爱你，请多关照</a></span>
                        <span class="s2">咪蒙</span>
                        <span class="s3">¥26.90<del>¥39.80</del></span>
                    </dd>
       	 		</dl>
            </li>
        </ul>
	</div>
<!--    图书畅销榜-->
    <div class="mRight">
    	<div class="ti">图书畅销榜</div>
        <div class="ti2">总榜</div>
         <ul>
         <li class="lastnon liOn"><p class="bar1"><span class="rank">1</span><span class="bookName">舌尖上的中国：传4444444444444444444</span></p>
           <dl class="bar2">
             <dt>
                 <span class="rank">1</span>
                 <a href="#"><img src="image/ss.JPG" title="初次爱你，请多关照6666666"  alt="初次爱你，请多关照6666666" /></a>
             </dt>
             <dd>
               <span class="bookName2"><a href="#" title="初次爱你，请多关照6666666">初次爱你，请多关照666666666666666666666666666666666</a></span>
               <span class="price">¥26.90</span>
               <span class="price2"><del>¥39.80</del></span>
             </dd>    
           </dl>
         </li>
        <li class="lastnon"><p class="bar1"><span class="rank">1</span><span class="bookName">舌尖上的中国：传4444444444444444444</span></p>
           <dl class="bar2">
             <dt>
                 <span class="rank">1</span>
                 <a href="#"><img src="image/ss.JPG" title="初次爱你，请多关照6666666"  alt="初次爱你，请多关照6666666" /></a>
             </dt>
             <dd>
               <span class="bookName2"><a href="#" title="初次爱你，请多关照6666666">初次爱你，请多关照666666666666666666666666666666666</a></span>
               <span class="price">¥26.90</span>
               <span class="price2"><del>¥39.80</del></span>
             </dd>    
           </dl>
         </li>
         <li class="lastnon"><p class="bar1"><span class="rank">1</span><span class="bookName">舌尖上的中国：传4444444444444444444</span></p>
           <dl class="bar2">
             <dt>
                 <span class="rank">1</span>
                 <a href="#"><img src="image/ss.JPG" title="初次爱你，请多关照6666666"  alt="初次爱你，请多关照6666666" /></a>
             </dt>
             <dd>
               <span class="bookName2"><a href="#" title="初次爱你，请多关照6666666">初次爱你，请多关照666666666666666666666666666666666</a></span>
               <span class="price">¥26.90</span>
               <span class="price2"><del>¥39.80</del></span>
             </dd>    
           </dl>
         </li>
         <li class="lastnon"><p class="bar1"><span class="rank">1</span><span class="bookName">舌尖上的中国：传4444444444444444444</span></p>
           <dl class="bar2">
             <dt>
                 <span class="rank">1</span>
                 <a href="#"><img src="image/ss.JPG" title="初次爱你，请多关照6666666"  alt="初次爱你，请多关照6666666" /></a>
             </dt>
             <dd>
               <span class="bookName2"><a href="#" title="初次爱你，请多关照6666666">初次爱你，请多关照666666666666666666666666666666666</a></span>
               <span class="price">¥26.90</span>
               <span class="price2"><del>¥39.80</del></span>
             </dd>    
           </dl>
         </li>
         <li class="lastnon"><p class="bar1"><span class="rank">1</span><span class="bookName">舌尖上的中国：传4444444444444444444</span></p>
           <dl class="bar2">
             <dt>
                 <span class="rank">1</span>
                 <a href="#"><img src="image/ss.JPG" title="初次爱你，请多关照6666666"  alt="初次爱你，请多关照6666666" /></a>
             </dt>
             <dd>
               <span class="bookName2"><a href="#" title="初次爱你，请多关照6666666">初次爱你，请多关照666666666666666666666666666666666</a></span>
               <span class="price">¥26.90</span>
               <span class="price2"><del>¥39.80</del></span>
             </dd>    
           </dl>
         </li>
         <li class="lastnon"><p class="bar1"><span class="rank">1</span><span class="bookName">舌尖上的中国：传4444444444444444444</span></p>
           <dl class="bar2">
             <dt>
                 <span class="rank">1</span>
                 <a href="#"><img src="image/ss.JPG" title="初次爱你，请多关照6666666"  alt="初次爱你，请多关照6666666" /></a>
             </dt>
             <dd>
               <span class="bookName2"><a href="#" title="初次爱你，请多关照6666666">初次爱你，请多关照666666666666666666666666666666666</a></span>
               <span class="price">¥26.90</span>
               <span class="price2"><del>¥39.80</del></span>
             </dd>    
           </dl>
         </li>
         <li class="lastnon"><p class="bar1"><span class="rank">1</span><span class="bookName">舌尖上的中国：传4444444444444444444</span></p>
           <dl class="bar2">
             <dt>
                 <span class="rank">1</span>
                 <a href="#"><img src="image/ss.JPG" title="初次爱你，请多关照6666666"  alt="初次爱你，请多关照6666666" /></a>
             </dt>
             <dd>
               <span class="bookName2"><a href="#" title="初次爱你，请多关照6666666">初次爱你，请多关照666666666666666666666666666666666</a></span>
               <span class="price">¥26.90</span>
               <span class="price2"><del>¥39.80</del></span>
             </dd>    
           </dl>
         </li>
         <li class="lastnon"><p class="bar1"><span class="rank">1</span><span class="bookName">舌尖上的中国：传4444444444444444444</span></p>
           <dl class="bar2">
             <dt>
                 <span class="rank">1</span>
                 <a href="#"><img src="image/ss.JPG" title="初次爱你，请多关照6666666"  alt="初次爱你，请多关照6666666" /></a>
             </dt>
             <dd>
               <span class="bookName2"><a href="#" title="初次爱你，请多关照6666666">初次爱你，请多关照666666666666666666666666666666666</a></span>
               <span class="price">¥26.90</span>
               <span class="price2"><del>¥39.80</del></span>
             </dd>    
           </dl>
         </li>
         <li class="lastnon"><p class="bar1"><span class="rank">1</span><span class="bookName">舌尖上的中国：传4444444444444444444</span></p>
           <dl class="bar2">
             <dt>
                 <span class="rank">1</span>
                 <a href="#"><img src="image/ss.JPG" title="初次爱你，请多关照6666666"  alt="初次爱你，请多关照6666666" /></a>
             </dt>
             <dd>
               <span class="bookName2"><a href="#" title="初次爱你，请多关照6666666">初次爱你，请多关照666666666666666666666666666666666</a></span>
               <span class="price">¥26.90</span>
               <span class="price2"><del>¥39.80</del></span>
             </dd>    
           </dl>
         </li>
         <li class="lastnon"><p class="bar1"><span class="rank">1</span><span class="bookName">舌尖上的中国：传4444444444444444444</span></p>
           <dl class="bar2">
             <dt>
                 <span class="rank">1</span>
                 <a href="#"><img src="image/ss.JPG" title="初次爱你，请多关照6666666"  alt="初次爱你，请多关照6666666" /></a>
             </dt>
             <dd>
               <span class="bookName2"><a href="#" title="初次爱你，请多关照6666666">初次爱你，请多关照666666666666666666666666666666666</a></span>
               <span class="price">¥26.90</span>
               <span class="price2"><del>¥39.80</del></span>
             </dd>    
           </dl>
         </li>
      </ul>
	</div>
</div>
<!--网页底部，常用-->
<div class="bottom">©凡人有限公司</div>
</body>
</html>
