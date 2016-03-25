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
					<a href="index.jsp"><img src="img/logo.gif" alt="湖北第二师范学院"></a>
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
				<li class="current"><a href="index.jsp"><b>网站首页</b></a></li>
				<li><a href="vpageAction?column=17">新闻动态</a> <span>
						<p>
							<a href="vpageAction?column=2">通知公告</a>
						</p>
						<p>
							<a href="vpageAction?column=6">工作动态</a>
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
							<a href="message.jsp">留言板</a>
						</p>
				</span></li>
			</ul>
		</div>
	</div>

	<div class="container">
		<div class="picture">
			<div class="callbacks_container">
				<ul class="rslides" id="slider">
					<s:subset source="#application.list16" start="0" count="4">
						<s:iterator>
							<li><a href="vGetDetial?newsId=<s:property value="newsId"/>"><img
									src="<%=request.getContextPath()%>/editor/attached/<s:property value="fileName"/>"
									alt=""></a></li>
						</s:iterator>
					</s:subset>
				</ul>
			</div>
		</div>


		<div class="main">
			<div class="col">
				<div class="title">
					<h3>
						<a href="vpageAction?column=17">新闻动态</a>
					</h3>
					<a class="ai" href="vpageAction?column=17">more</a>
				</div>
				<div class="cont">
					<ul>
						<s:subset source="#application.list17" start="0" count="5">
							<s:iterator>
								<li><span><s:date name="uploadDate"
											format="yyyy-MM-dd" /></span><a
									href="vGetDetial?newsId=<s:property value="newsId"/>"><s:property
											value="newsTitle" /></a></li>
							</s:iterator>
						</s:subset>
					</ul>
				</div>
			</div>
			<div class="col">
				<div class="title">
					<h3>
						<a href="vpageAction?column=2">通知公告</a>
					</h3>
					<a class="ai" href="vpageAction?column=2">more</a>
				</div>
				<ul>
					<s:subset source="#application.list2" start="0" count="5">
						<s:iterator>
							<li><span><s:date name="uploadDate"
										format="yyyy-MM-dd" /></span><a
								href="vGetDetial?newsId=<s:property value="newsId"/>"><s:property
										value="newsTitle" /></a></li>
						</s:iterator>
					</s:subset>
				</ul>

			</div>
			<div class="col">
				<div class="title">
					<h3>
						<a href="vpageAction?column=6">工作动态</a>
					</h3>
					<a class="ai" href="vpageAction?column=6">more</a>
				</div>
				<ul>
					<s:subset source="#application.list6" start="0" count="5">
						<s:iterator>
							<li><span><s:date name="uploadDate"
										format="yyyy-MM-dd" /></span><a
								href="vGetDetial?newsId=<s:property value="newsId"/>"><s:property
										value="newsTitle" /></a></li>
						</s:iterator>
					</s:subset>
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
							<s:subset source="#application.list1" start="0" count="4">
								<s:iterator status="st">
									<s:url id="scan" action="vGetDetial">
										<s:param name="newsId">
											<s:property value="newsId" />
										</s:param>
									</s:url>																
										<li class="item-i" <s:if test="#st.first">style="left:0px;"</s:if>>									
									<s:a href="%{scan}" target="_blank">
										<img
											src="<%=request.getContextPath()%>/editor/attached/<s:property value="fileName"/>">
									</s:a>
									<h3>
										<s:a href="%{scan}" target="_blank">
											<s:property value="newsTitle" />
										</s:a>
									</h3>
									</li>
								</s:iterator>
							</s:subset>
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
							<li class="select"><a href="vpageAction?column=17">新闻动态</a></li>
							<li><a href="vpageAction?column=2">通知公告</a></li>
							<li><a href="vpageAction?column=6">工作动态</a></li>
							<li><a href="vpageAction?column=18">学校公告</a></li>
						</ul>
					</div>
					<div class="con" id="con">
						<div class="tab-content" id="tab-content" style="display:block">
							<ul>
								<s:iterator value="application.list17">
									<li><a
										href="vGetDetial?newsId=<s:property value="newsId"/>"><s:property
												value="newsTitle" /></a><span><s:date name="uploadDate"
												format="yyyy-MM-dd" /></span></li>
								</s:iterator>
							</ul>
						</div>
						<div class="tab-content" id="tab-content" style="display:none">
							<ul>
								<s:iterator value="application.list2">
									<li><a
										href="vGetDetial?newsId=<s:property value="newsId"/>"><s:property
												value="newsTitle" /></a><span><s:date name="uploadDate"
												format="yyyy-MM-dd" /></span></li>
								</s:iterator>
							</ul>
						</div>
						<div class="tab-content" id="tab-content" style="display:none">
							<ul>
								<s:iterator value="application.list6">
									<li><a
										href="vGetDetial?newsId=<s:property value="newsId"/>"><s:property
												value="newsTitle" /></a><span><s:date name="uploadDate"
												format="yyyy-MM-dd" /></span></li>
								</s:iterator>
							</ul>
						</div>
						<div class="tab-content" id="tab-content" style="display:none">
							<ul>
								<s:iterator value="application.list18">
									<li><a
										href="vGetDetial?newsId=<s:property value="newsId"/>"><s:property
												value="newsTitle" /></a><span><s:date name="uploadDate"
												format="yyyy-MM-dd" /></span></li>
								</s:iterator>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="divider"></div>
		<div class="pictureslist">
			<div class="pc-title">
				<a class="a-title" href="vpageAction?column=22">
					<h3>学生作品展示</h3>
				</a><a href="vpageAction?column=22">more</a>
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
											<s:iterator value="application.list22">
												<td class="main_img"><a
													href="vGetDetial?newsId=<s:property value="newsId"/>"><img
														height="160" width="150" alt=""
														src="<%=request.getContextPath()%>/editor/attached/<s:property value="fileName"/>" /></a></td>
											</s:iterator>
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
						<a href="vpageAction?column=19">学生园地</a>
					</h3>
					<a class="ai" href="vpageAction?column=19">more</a>
				</div>
				<div class="item">
					<ul>
						<s:subset source="#application.list19" start="0" count="4">
							<s:iterator>
								<li><a
									href="vGetDetial?newsId=<s:property value="newsId"/>"><s:property
											value="newsTitle" /></a><span>(<s:date name="uploadDate"
											format="yyyy-MM-dd" />)
								</span></li>
							</s:iterator>
						</s:subset>
					</ul>
				</div>
			</div>

			<div class="yqlj">
				<div class="i-title">
					<h3>
						<a href="vpageAction?column=20">教师风采</a>
					</h3>
					<a class="ai" href="vpageAction?column=20">more</a>
				</div>
				<div class="item">
					<ul>
						<s:subset source="#application.list19" start="0" count="4">
							<s:iterator>
								<li><a
									href="vGetDetial?newsId=<s:property value="newsId"/>"><s:property
											value="newsTitle" /></a><span>(<s:date name="uploadDate"
											format="yyyy-MM-dd" />)
								</span></li>
							</s:iterator>
						</s:subset>
					</ul>
				</div>
			</div>
			<div class="yqlj">
				<div class="i-title">
					<h3>
						<a href="vpageAction?column=22">校园之星</a>
					</h3>
					<a class="ai" href="vpageAction?column=22">more</a>
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

</script>
</html>