<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta name="renderer" content="webkit">
<meta name="Keywords" content="" />
<meta name="Description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>首页</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/public.css">
<link rel="stylesheet" type="text/css" href="css/responsiveslides.css">
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/responsiveslides.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
</head>

<body>

	<div class="header">
		<div class="nav-top">
			<div class="logo">
				<div class="logo-main">
					<a href="index.html"><img src="img/logo.gif" alt="湖北第二师范学院"></a>
				</div>
			</div>
			<div class="word">
				<p>
					<a href="login.jsp">登录</a>&nbsp;|&nbsp;<a href="">注册</a>&nbsp;|&nbsp;<a
						href="">旧站入口</a>
				</p>
				<br>

				<form action="spageAction" method="post">
					<span class="search"> <s:textfield name="searchStr"
							cssClass="kuan" /> <input value="搜索" type="submit" class="an" />
					</span>
				</form>

			</div>
		</div>

		<div class="daohang">
			<ul class="nav">
				<li class="current"><a href="index.html"><b>网站首页</b></a></li>
				<li><s:url id="showlist" action="vpageAction">
						<s:param name="column">
							<s:property value="1" />
						</s:param>
					</s:url>
					<s:a href="%{showlist}">校园动态</s:a> <span>
						<p>
							<a href="news.html">最新公告</a>
						</p>
						<p>
							<a href="news.html">活动通知</a>
						</p>
				</span></li>

				<li><a href="newslist.html">校园风采</a> <span>
						<p>
							<a href="news.html">学校概况</a>
						</p>
						<p>
							<a href="news.html">办学特色</a>
						</p>
						<p>
							<a href="news.html">办学成果</a>
						</p>
						<p>
							<a href="news.html">校报校刊</a>
						</p>
						<p>
							<a href="news.html">校园风采</a>
						</p>
				</span></li>
				<li><a href="newslist.html">教师家园</a> <span>
						<p>
							<a href="news.html">读书交流</a>
						</p>
						<p>
							<a href="news.html">教师博客</a>
						</p>
						<p>
							<a href="news.html">名师风采</a>
						</p>
						<p>
							<a href="news.html">旅游生活</a>
						</p>
				</span></li>
				<li><a href="newslist.html">课程管理</a> <span>
						<p>
							<a href="news.html">教务管理</a>
						</p>
						<p>
							<a href="news.html">学科建设</a>
						</p>
						<p>
							<a href="news.html">高校课堂</a>
						</p>
						<p>
							<a href="news.html">家长课堂</a>
						</p>
				</span></li>
				<li><a href="newslist.html">学生乐园 </a> <span>
						<p>
							<a href="news.html">读书频道</a>
						</p>
						<p>
							<a href="news.html">班级主页</a>
						</p>
						<p>
							<a href="news.html">学生活动</a>
						</p>

				</span></li>
				<li><a href="newslist.html">教学园地</a> <span>
						<p>
							<a href="news.html">常规教学</a>
						</p>
						<p>
							<a href="news.html">教育科研</a>
						</p>
						<p>
							<a href="news.html">教师成长</a>
						</p>
						<p>
							<a href="news.html">教师风采</a>
						</p>
				</span></li>
				<li><a href="newslist.html">党旗飘扬</a> <span>
						<p>
							<a href="news.html">网上党校</a>
						</p>
						<p>
							<a href="news.html">队伍建设</a>
						</p>
						<p>
							<a href="news.html">党校生活</a>
						</p>
				</span></li>
				<li><a href="newslist.html">专题教育</a> <span>
						<p>
							<a href="news.html">安全教育</a>
						</p>
						<p>
							<a href="news.html">年组活动</a>
						</p>
						<p>
							<a href="news.html">备课组建设</a>
						</p>
						<p>
							<a href="news.html">艺术节</a>
						</p>
						<p>
							<a href="news.html">读书节</a>
						</p>
						<p>
							<a href="news.html">留言板</a>
						</p>
				</span></li>
			</ul>
		</div>
	</div>

	<div class="container">
		<div class="picture">
			<div class="callbacks_container">
				<ul class="rslides" id="slider">
					<li><a href="text-img.html"><img src="img/1.jpg" alt=""></a></li>
					<li><a href="text-img.html"><img src="img/2.jpg" alt=""></a></li>
					<li><a href="text-img.html"><img src="img/3.jpg" alt=""></a></li>
					<li><a href="text-img.html"><img src="img/4.jpg" alt=""></a></li>
				</ul>
			</div>
		</div>


		<div class="main">
			<div class="col">
				<div class="title">
					<h3>
						<a href="newslist.html">新闻动态</a>
					</h3>
					<a class="ai" href="newslist.html">more</a>
				</div>
				<div class="cont">
					<ul>
						<li><span>2015-10-25</span><a href="news.html">第十一周学校工作安排</a></li>
						<li><span>2015-10-25</span><a href="news.html">最新告家长书</a></li>
						<li><span>2015-9-30</span><a href="news.html">关于第十一届秋季运动的...</a></li>
						<li><span>2015-9-30</span><a href="news.html">最新国家法定节假日的...</a></li>
						<li><span>2015-9-30</span><a href="news.html">最新国家法定节假日的...</a></li>
					</ul>
				</div>
			</div>
			<div class="col">
				<div class="title">
					<h3>
						<a href="newslist.html">工作通知</a>
					</h3>
					<a class="ai" href="newslist.html">more</a>
				</div>
				<ul>
					<li><span>2015-9-30</span><a href="news.html">我校开展经典名著诵读活动</a></li>
					<li><span>2015-10-25</span><a href="news.html">我校开展第十一届秋季运动会</a></li>
					<li><span>2015-10-25</span><a href="news.html">我校开展徒步拉练活动</a></li>
					<li><span>2015-10-25</span><a href="news.html">让语文课绽放别样精彩</a></li>
					<li><span>2015-10-25</span><a href="news.html">让语文课绽放别样精彩</a></li>
				</ul>

			</div>
			<div class="col">
				<div class="title">
					<h3>
						<a href="newslist.html">学校公告</a>
					</h3>
					<a class="ai" href="newslist.html">more</a>
				</div>
				<ul>
					<li><span>2015-10-25</span><a href="news.html">全省县域义务教育均</a></li>
					<li><span>2015-10-25</span><a href="news.html">全省县域义务教育均</a></li>
					<li><span>2015-10-25</span><a href="news.html">全省县域义务教育均</a></li>
					<li><span>2015-10-25</span><a href="news.html">致家长的一封公开信</a></li>
					<li><span>2015-10-25</span><a href="news.html">致家长的一封公开信</a></li>
				</ul>
			</div>
		</div>

		<div class="divider"></div>
		<div class="newslist">
			<div class="left">
				<div class="dh-title">
					<h3>图片新闻</h3>
					<s:url id="ishowlist" action="ipageAction">
						<s:param name="column">
							<s:property value="1" />
						</s:param>
					</s:url>
					<s:a href="%{ishowlist}">
					more</s:a>
				</div>
				<div class="section-focus-pic" id="section-focus-pic">
					<div class="pages" data-scro="list">
						<ul>
							<li class="item-i" style="left:0px;"><a href="text-img.html"
								target="_blank"><img src="img/news1.jpg"></a>
								<h3>
									<a href="text-img.html" target="_blank">天安门广场&quot;史上最大花果篮&quot;竣工</a>
								</h3>
								<div></div></li>
							<li class="item-i"><a href="text-img.html" target="_blank"><img
									src="img/news2.jpg"></a>
								<h3>
									<a href="text-img.html" target="_blank">广州:10万元得来一座&quot;圆大厦&quot;</a>
								</h3>
								<div></div></li>
							<li class="item-i"><a href="text-img.html" target="_blank"><img
									src="img/news3.jpg"></a>
								<h3>
									<a href="text-img.html" target="_blank">百度视频移动端亿万用户的背后</a>
								</h3>
								<div></div></li>
							<li class="item-i"><a href="text-img.html" target="_blank"><img
									src="img/news4.jpg"></a>
								<h3>
									<a href="text-img.html" target="_blank">百度视频移动端亿万用户的背后</a>
								</h3>
								<div></div></li>
						</ul>
					</div>
					<div class="controler" data-scro="controler">
						<b class="down">1</b> <b>2</b> <b>3</b> <b>4</b>
					</div>

				</div>
			</div>
			<div class="right" id="right">
				<div class="content">
					<div id="con-tit" class="con-tit">
						<ul>
							<li class="select"><a href="newslist.html">新闻动态</a></li>
							<li><a href="newslist.html">工作通知</a></li>
							<li><a href="newslist.html">学校公告</a></li>
							<li><a href="newslist.html">学校公告</a></li>
						</ul>
					</div>
					<div class="con" id="con">
						<div class="tab-content" id="tab-content" style="display:block">
							<ul>
								<li><a href="news.html">我校学生参加第三届中小学生器乐节</a><span>2015-10-24</span></li>
								<li><a href="news.html">我校组织教职工趣味比赛</a><span>2015-10-24</span></li>
								<li><a href="news.html">大兴区榆垡协作区班主任说班会展示活动暨大兴区骨干…</a><span>2015-10-24</span></li>
								<li><a href="news.html">我校老师除雪活动剪影</a><span>2015-10-24</span></li>
								<li><a href="news.html">在实践学习中践行社会主义核心价值观-我校各年级社</a><span>2015-10-24</span></li>
								<li><a href="news.html">我校成功举办大兴区“十二五”2015教育科研周分会场</a><span>2015-10-24</span></li>
								<li><a href="news.html">我校成功举办大兴区“十二五”2015教育科研周分会场</a><span>2015-10-24</span></li>
							</ul>
						</div>
						<div class="tab-content" id="tab-content" style="display:none">
							<ul>
								<li><span>2015-9-30</span><a href="news.html">我校开展经典名著诵读活动</a></li>
								<li><span>2015-10-25</span><a href="news.html">我校开展第十一届秋季运动会</a></li>
								<li><span>2015-10-25</span><a href="news.html">我校开展徒步拉练活动</a></li>
								<li><span>2015-10-25</span><a href="news.html">让语文课绽放别样精彩</a></li>
								<li><span>2015-10-25</span><a href="news.html">让语文课绽放别样精彩</a></li>
							</ul>
						</div>
						<div class="tab-content" id="tab-content" style="display:none">
							<ul>
								<li><a href="news.html">我校学生参加第三届中小学生器乐节</a><span>2015-10-24</span></li>
								<li><a href="news.html">我校组织教职工趣味比赛</a><span>2015-10-24</span></li>
								<li><a href="news.html">大兴区榆垡协作区班主任说班会展示活动暨大兴区骨干…</a><span>2015-10-24</span></li>
								<li><a href="news.html">我校老师除雪活动剪影</a><span>2015-10-24</span></li>
								<li><a href="news.html">在实践学习中践行社会主义核心价值观-我校各年级社</a><span>2015-10-24</span></li>
								<li><a href="news.html">我校成功举办大兴区“十二五”2015教育科研周分会场</a><span>2015-10-24</span></li>
								<li><a href="news.html">我校成功举办大兴区“十二五”2015教育科研周分会场</a><span>2015-10-24</span></li>
							</ul>
						</div>
						<div class="tab-content" id="tab-content" style="display:none">
							<ul>
								<li><a href="news.html">我校学生参加第三届中小学生器乐节</a><span>2015-10-24</span></li>
								<li><a href="news.html">我校组织教职工趣味比赛</a><span>2015-10-24</span></li>
								<li><a href="news.html">大兴区榆垡协作区班主任说班会展示活动暨大兴区骨干…</a><span>2015-10-24</span></li>
								<li><a href="news.html">我校老师除雪活动剪影</a><span>2015-10-24</span></li>
								<li><a href="news.html">在实践学习中践行社会主义核心价值观-我校各年级社</a><span>2015-10-24</span></li>
								<li><a href="news.html">我校成功举办大兴区“十二五”2015教育科研周分会场</a><span>2015-10-24</span></li>
								<li><a href="news.html">我校成功举办大兴区“十二五”2015教育科研周分会场</a><span>2015-10-24</span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="divider"></div>
		<div class="pictureslist">
			<div class="pc-title">
				<a class="a-title" href="showimg.html"><h3>学生作品展示</h3></a><a
					href="showimg.html">more</a>
			</div>
			<div class="pictures" id="scrollbox" onMouseMove="MoveDiv(event);"
				onMouseOut="MoveOutDiv();">
				<div id="scrollcon" style="width:100%;">
					<table>
						<tbody>
							<tr>
								<td valign="top">
									<table width="100%">
										<tr>
											<td class="main_img"><a href="showimg.html"><img
													height="160" width="150" alt="" src="images1/1.jpg" /></a></td>
											<td class="main_img"><a href="showimg.html"><img
													height="160" width="150" alt="" src="images1/2.jpg" /></a></td>
											<td class="main_img"><a href="showimg.html"><img
													height="160" width="150" alt="" src="images1/3.jpg" /></a></td>
											<td class="main_img"><a href="showimg.html"><img
													height="160" width="150" alt="" src="images1/6.jpg" /></a></td>
											<td class="main_img"><a href="showimg.html"><img
													height="160" width="150" alt="" src="images1/5.jpg" /></a></td>
											<td class="main_img"><a href="showimg.html"><img
													height="160" width="150" alt="" src="images1/4.jpg" /></a></td>
											<td class="main_img"><a href="showimg.html"><img
													height="160" width="150" alt="" src="images1/7.jpg" /></a></td>
											<td class="main_img"><a href="showimg.html"><img
													height="160" width="150" alt="" src="images1/2.jpg" /></a></td>
											<td class="main_img"><a href="showimg.html"><img
													height="160" width="150" alt="" src="images1/1.jpg" /></a></td>
											<td class="main_img"><a href="showimg.html"><img
													height="160" width="150" alt="" src="images1/3.jpg" /></a></td>
											<td class="main_img"><a href="showimg.html"><img
													height="160" width="150" alt="" src="images1/4.jpg" /></a></td>
											<td class="main_img"><a href="showimg.html"><img
													height="160" width="150" alt="" src="images1/6.jpg" /></a></td>
											<td class="main_img"><a href="showimg.html"><img
													height="160" width="150" alt="" src="images1/4.jpg" /></a></td>
										</tr>
									</table>
								</td>
								<td><div id="scrollcopy" style="width:100%;"></div></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="divider"></div>

		<div class="bottom">
			<div class="yqlj">
				<div class="i-title">
					<h3>
						<a href="newslist.html">学生园地</a>
					</h3>
					<a class="ai" href="newslist.html">more</a>
				</div>
				<div class="item">
					<ul>
						<li><a href="news.html">低年级孩子的音乐故事</a><span>(2015.08.12)</span></li>
						<li><a href="news.html">小小舞蹈家</a><span>(2015.09.16)</span></li>
						<li><a href="news.html">小小彩纸变化多</a><span>(2015.09.16)</span></li>
						<li><a href="news.html">学会轮滑真开心</a><span>(2015.09.16)</span></li>

					</ul>
				</div>
			</div>

			<div class="yqlj">
				<div class="i-title">
					<h3>
						<a href="newslist.html">教师风采</a>
					</h3>
					<a class="ai" href="newslist.html">more</a>
				</div>
				<div class="item">
					<ul>
						<li><a href="news.html">做一个合格的教师</a><span>(2015.08.12)</span></li>
						<li><a href="news.html">小学英语教学10条建..</a><span>(2015.09.16)</span></li>
						<li><a href="news.html">民国哪些教育家</a><span>(2015.09.16)</span></li>
						<li><a href="news.html">小学生注意力与政策..</a><span>(2015.09.16)</span></li>
					</ul>
				</div>
			</div>
			<div class="yqlj">
				<div class="i-title">
					<h3>
						<a href="showimg.html">校园之星</a>
					</h3>
					<a class="ai" href="showimg.html">more</a>
				</div>
				<div class="item">
					<div class="item-1">
						<img src="images1/3.jpg" alt="">
					</div>
					<div class="bo-title">
						<h3>王月</h3>
					</div>
				</div>
			</div>
			<div class="yqlj">
				<div class="i-title">
					<h3>友情链接</h3>
				</div>
				<div class="item-i">
					<ul>
						<li class="now"><a href="">南湖小学</a></li>
						<li><a href="">光谷九小</a></li>
					</ul>
					<ul>
						<li><a href="">武汉实验小学</a></li>
						<li><a href="">光谷八小</a></li>
					</ul>
					<ul>
						<li><a href="">第二实验小学</a></li>
						<li><a href="">南湖小学</a></li>
					</ul>
					<ul>
						<li><a href="">武汉小学</a></li>
						<li><a href="">武汉教育信息网</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="divider"></div>
	</div>
	<div class="footer">
		<div class="message">
			<ul>
				<li class="weixin"><a href=""><img src="" alt=""></img></a></li>
				<li class="weibo"><a href=""><img src="" alt=""></a></li>
			</ul>
		</div>
		<div class="foot">
			版权所有 Copyright © 2005-2015 湖北第二师范学院<br> 地址：khsfkljhasjkhflkha<br>
			联系方式：hgsfgkakajkhkahklh
		</div>
	</div>
	</div>


</body>

<script type="text/javascript">
 function $(id)
{
  return typeof id==='string'?document.getElementById(id):id;
}

window.onload=function(){
  //获取鼠标滑过或点击的标签和要切换内容的元素
  var titles=$('con-tit').getElementsByTagName('li'),
      divs=$('con').getElementsByTagName('div');
      if(titles.length!=divs.length)
        return;
      //遍历titles下所有的li
      for(var i=0;i<titles.length;i++){
        titles[i].id=i;
        titles[i].onmouseover=function(){
          for(var j=0;j<titles.length;j++)
          {
            titles[j].className='';
            divs[j].style.display='none';
          }
          this.className='select';

          divs[this.id].style.display='block';
        }    
}
</script>
<script type="text/javascript">
jQuery.noConflict();
jQuery(function(){ 
  // Slideshow 
  jQuery("#slider").responsiveSlides({
    auto: true,
    pager: false,
    nav: true,
    speed: 500,
    timeout:4000,
    pager: true, 
    pauseControls: true,
    namespace: "callbacks"
  });
});
</script>
<script type="text/javascript">//校园风采轮播
     document.getElementById("scrollcopy").innerHTML = document.getElementById("scrollcon").innerHTML;
     MyMar=setInterval(Marquee,speed);
    </script>

<script type="text/javascript">
var dir=1;//每步移动像素，大＝快
var speed=10;//循环周期（毫秒）大＝慢
var MyMar=null;

function Marquee(){//正常移动
  var scrollbox = document.getElementById("scrollbox");
  var scrollcopy = document.getElementById("scrollcopy");
  if(dir>0&&(scrollcopy.offsetWidth-scrollbox.scrollLeft)<=0){
    scrollbox.scrollLeft=0;
  }
  if(dir<0 &&(scrollbox.scrollLeft<=0)){
    scrollbox.scrollLeft=scrollcopy.offsetWidth;
  }
    scrollbox.scrollLeft+=dir;
}

function onmouseoverMy(){
  window.clearInterval(MyMar);
}//暂停移动

function onmouseoutMy() {
  MyMar=setInterval(Marquee,speed);
}//继续移动

function r_left(){
  if(dir==-1)
  dir=1;
}//换向左移

function r_right(){
  if(dir==1)
  dir=-1;
}//换向右移

function IsIE(){
  var browser=navigator.appName
  if((browser=="Netscape")){
    return false;
  }
  else if(browser=="Microsoft Internet Explorer"){
    return true;
  }else{
    return null;
  }
}

var _IsIE = IsIE();
var _MousePX = 0;
var _MousePY = 0;
var _DivLeft = 0;
var _DivRight = 0;
var _AllDivWidth = 0;
var _AllDivHeight = 0;

function MoveDiv(e){

  var obj = document.getElementById("scrollbox");
  _MousePX = _IsIE ? (document.body.scrollLeft + event.clientX) : e.pageX;
  _MousePY = _IsIE ? (document.body.scrollTop + event.clientY) : e.pageY;
  //Opera Browser Can Support ''window.event'' and ''e.pageX''
  
  var obj1 = null;

  if(obj.getBoundingClientRect){
    //IE
    obj1 = document.getElementById("scrollbox").getBoundingClientRect();
    _DivLeft = obj1.left;
    _DivRight = obj1.right;
    _AllDivWidth = _DivRight - _DivLeft;
  }else if(document.getBoxObjectFor){
    //FireFox
    obj1 = document.getBoxObjectFor(obj); 
    var borderwidth = (obj.style.borderLeftWidth != null && obj.style.borderLeftWidth != "") ? parseInt(obj.style.borderLeftWidth) : 0;
    _DivLeft = parseInt(obj1.x) - parseInt(borderwidth);
    _AllDivWidth = Cut_Px(obj.style.width);
    _DivRight = _DivLeft + _AllDivWidth;
  }else{
    //Other Browser(Opera)
    _DivLeft = obj.offsetLeft;
    _AllDivWidth = Cut_Px(obj.style.width);
    var parent = obj.offsetParent;
    
    if(parent != obj){
      while (parent){  
        _DivLeft += parent.offsetLeft; 
        parent = parent.offsetParent;
      }
    }
    _DivRight = _DivLeft + _AllDivWidth;
  }

  var pos1,pos2;
  pos1 = parseInt(_AllDivWidth * 0.4) + _DivLeft;
  pos2 = parseInt(_AllDivWidth * 0.6) + _DivLeft;

  if(_MousePX > _DivLeft && _MousePX < _DivRight){
    if(_MousePX > _DivLeft && _MousePX < pos1){
      r_left(); //Move left
    }
    else if(_MousePX < _DivRight && _MousePX > pos2){
      r_right(); //Move right
    }
    if(_MousePX > pos1 && _MousePX < pos2){
      onmouseoverMy(); //Stop
      MyMar=null;
    }else if(_MousePX < pos1 || _MousePX > pos2){
      if(MyMar==null){
        MyMar=setInterval(Marquee,speed);
      }
    }
  }
}

function Cut_Px(cswidth){
  cswidth = cswidth.toLowerCase();
  if(cswidth.indexOf("px") != -1){
    cswidth.replace("px","");
    cswidth = parseInt(cswidth);
  }
  return cswidth;
}

function MoveOutDiv(){
  if(MyMar == null){
    MyMar=setInterval(Marquee,speed);
  }
}
}
</script>
</html>