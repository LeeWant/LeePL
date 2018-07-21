<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link href="css/allNeed.css" rel="stylesheet">
    <link href="css/forumtest.css" rel="stylesheet">
    <link href="css/testLogin.css" rel="stylesheet">
    <link href="css/footer.css" rel="stylesheet">
    <link href="css/lunbo.css" rel="stylesheet">
    <link href="css/testAside.css" rel="stylesheet">
    
    <link rel="SHORTCUT ICON" href="image/PlLogo.ico">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/index.css" rel="stylesheet">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
    
<%
	String dp1,dp2;
	if( request.getSession().getAttribute("user")!=""&& request.getSession().getAttribute("user")!=null)
	{
		dp1="none";
		dp2="";
		System.out.println("代码执行了");
		System.out.println((String)request.getSession().getAttribute("user")); 
	}
	else 
	{
		dp1 = "";
		dp2 = "none";
	}

%>
</head>
<body>
<!-- 顶部导航 -->
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation" id="menu-nav">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">植行植物论坛</a>
        </div>
        
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-left">
                <li><a href="index">主页</a></li>
                <li><a href="zhitie">植帖</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">百科 <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a target="_blank" href="https://baike.baidu.com/item/%E6%9C%88%E5%AD%A3%E8%8A%B1/14505544?fr=aladdin&fromid=32865&fromtitle=%E6%9C%88%E5%AD%A3" data-tab="tab-yj">月季</a></li>
                        <li><a target="_blank" href="https://baike.baidu.com/item/%E5%BA%B7%E4%B9%83%E9%A6%A8/34029?fr=aladdin" data-tab="tab-knx">康乃馨</a></li>
                        <li><a target="_blank" href="https://baike.baidu.com/item/%E6%BB%A1%E5%A4%A9%E6%98%9F/18819" data-tab="tab-mtx">满天星</a></li>
                        <li><a target="_blank" href="https://baike.baidu.com/item/%E7%8E%AB%E7%91%B0/63206" data-tab="tab-mg">玫瑰</a></li>
                    </ul>
                </li>
                <li><a href="#" data-toggle="modal" data-target="#about-modal">关于</a></li>
            </ul>
            <div style="display:<%=dp1%>" class="navbar-form navbar-right">
            	<a  type="button" class="btn btn-link" href="sign_in"><span class="glyphicon glyphicon-log-in"></span><b>登录</b></a>
            	<a  type="button" class="btn btn-link" href="sign_up"><span class="glyphicon glyphicon-user"></span><b>注册</b></a>
       		</div >
       		<div class="dropdown navbar-form navbar-right" style="display:<%=dp2%>">
                <div>
                    <img class="img-circle" src=<%=(String)request.getSession().getAttribute("img") %>>
                    <a id="name" type="button" class="dropdown-toggle" data-toggle="dropdown"><%=(String)request.getSession().getAttribute("user")%><span class="caret"></span></a>
                	<ul class="dropdown-menu" role="menu">
                        <li><a href="self" data-tab="tab-yj">个人中心</a></li>
                        <li><a href="fatie" data-tab="tab-yj">发布植帖</a></li>
                        <li class="divider"></li>
                        <li><a href="sign_out" data-tab="tab-knx">退出登录</a></li>
                	</ul>
                </div>
            </div>
      	 		
        </div>
    </div>
</div>
<div id="bannerTop">
    <div class="spanS">
        <span>你可以在本网浏览帖子也可以参与讨论 |</span>
        <span>你可以申请用户并发贴 |</span>
        <span>你可以在这里探索植物的奥秘 |</span>
        <span>愿你找到同样热爱植物的伙伴 </span>
    </div>
    <hr>
    <h1>Plants Planet</h1>
</div>

<div class="hot">
    <h1>Top Eight</h1><img src="image/hot.png"/>
</div>
<div id="contOut">
    <div class="content">
        <ul>
            <li class="con con1">
                <div class="img">
                    <img src="image/11.jpg"/>
                </div>
                <div class="conA">
                    <a href="forum.html">一株绿萝生长记录</a>
                </div>
                <span class="span1">1234+</span>
            </li>
            <li class="con con2">
                <div class="img">
                    <img src="image/33.jpg"/>
                </div>
                <div class="conA">
                    <a href="#">水仙花的医用价值</a>
                </div>
                <span class="span1">465+</span>
            </li>
            <li class="con con3">
                <div class="img">
                    <img src="image/22.jpg"/>
                </div>
                <div class="conA">
                    <a href="#">现存稀有植物调查</a>
                </div>
                <span class="span1">792+</span>
            </li>
            <li class="con con4">
                <div class="img">
                    <img src="image/44.jpg"/>
                </div>
                <div class="conA">
                    <a href="#">我在北方爬山的发现</a>
                </div>
                <span class="span1">1273+</span>
            </li>
            <li class="con con1">
                <div class="img">
                    <img src="image/11.jpg"/>
                </div>
                <div class="conA">
                    <a href="#">一株绿萝生长记录</a>
                </div>
                <span class="span1">1234+</span>
            </li>
            <li class="con con2">
                <div class="img">
                    <img src="image/33.jpg"/>
                </div>
                <div class="conA">
                    <a href="#">水仙花的医用价值</a>
                </div>
                <span class="span1">465+</span>
            </li>
            <li class="con con3">
                <div class="img">
                    <img src="image/22.jpg"/>
                </div>
                <div class="conA">
                    <a href="#">现存稀有植物调查</a>
                </div>
                <span class="span1">792+</span>
            </li>
            <li class="con con4">
                <div class="img">
                    <img src="image/44.jpg"/>
                </div>
                <div class="conA">
                    <a href="#">我在北方爬山的发现</a>
                </div>
                <span class="span1">1273+</span>
            </li>
        </ul>
    </div>
</div>
<!--翻页-->
<div id="cook">
    <div class="cookHot">
        <div class="slider">
            <div class="main" id="template_main">
                <div class="main-i" id="main_{{index}}">
                    <div class="caption">
                        <h2>{{h2}}</h2>
                        <!--<hr class="hr1" />-->
                        <dl>
                            <dt><a href="#" >{{a}}</a></dt>
                            <dd>{{b}}</dd>
                            <dt>{{c}} </dt>
                            <dd>{{d}}</dd>
                        </dl>
                    </div>
                    <img src="image/{{index}}.jpg" alt="图片加载中..."/>
                </div>
            </div>
            <div class="ctrl" id="template_ctrl">
                <a class="ctrl-i" id="ctrl_{{index}}" href="javascript:switchSlider({{index}});"><img src="image/{{index}}.jpg" alt="图片加载中..."/></a>
            </div>
        </div>
    </div>
</div>
<!--科属-->
<div id="contentAll">
    <div class="left">
        <div class="leftL">
            <a href="#" class="jie">界</a>
            <a href="#" class="men">门</a>
            <a href="#" class="gang">纲</a>
            <a href="#" class="mu">目</a>
            <a href="#" class="ke">科</a>
            <a href="#" class="shu">属</a>
            <a href="#" class="zhong">种</a>
            <a href="#" class="an">安神木科</a>
            <a href="#" class="af">阿福花科</a>
            <a href="#" class="bs">百岁兰科</a>
            <a href="#" class="nc">拟草藓属</a>
            <a href="#" class="xz">细枝藓属</a>
            <img src="image/more.png" alt="more..."/>
        </div>
    </div>
    <div class="right">
        <div class="new">
            <h3>New Forum Topics</h3>
        </div>
        <!--<div class="allN rightT"></div>-->
        <!--<div class="allN rightM"></div>-->
        <!--<div class="allN rightB"></div>-->
        <ul class="readUl">
            <li  class="allN readLi">
                <div class="read_img">
                    <img src="image/head_1.jpg">
                </div>
                <div class="reader_p">
                    <span><a href="#">其实很简单 :</a> </span>
                    <p>土先生, 蓝色闪电, 空锁满庭花雨,一缕阳光，一抹绿意，一片清新。让心灵随绿色沉静，任思绪在花间飞扬。</p>
                    
                </div>
            </li>
            <li  class="readLi">
                <div class="read_img">
                    <img src="image/head_2.jpg">
                </div>
                <div class="reader_p">
                    <span><a href="#">一颗开花的树 :</a> </span>
                    <p>笑履网路赏春晴，青衫携酒踏花行。春色满园关不住，一支红杏出墙来。</p>
                    
                </div>
            </li>
            <li  class="readLi">
                <div class="read_img">
                    <img src="image/head_3.jpg">
                </div>
                <div class="reader_p">
                    <span><a href="#">走啊走啊走 :</a> </span>
                    <p>花花生病别慌张，花草大夫来帮忙，头疼脑热开处方，营养不良配大餐，虫虫来了消灭光，保你花园现芬芳！</p>
                    
                </div>
            </li>
            <li  class="readLi">
                <div class="read_img">
                    <img src="image/head_4.jpg">
                </div>
                <div class="reader_p">
                    <span><a href="#">我是小红小明 :</a></span>
                    <p>梅兰竹菊饰雅居，碧叶青枝添新意。莫道一花无春色，绿染满眼皆情趣。</p>
                    
                </div>
            </li>
        </ul>
        <a href="#" class="more">Read More<img src="image/jian_tou.png"/></a>
    </div>
</div>
<div id="bgmiddle">
    <div class="opca"></div>
    <div class="contentC">
    <p>You can give us an E-mail or a message to help us improve.</p>
    <form class="advice">
        <input type="text" class="text" placeholder="Your Advice"/>
        <input type="submit" class="submit" value="确认"/>
    </form>
    </div>
</div>
<div id="footer">
    <p>Copyright&copy;2017 植行 Theme by Miss Tina All All Rights Reserved.</p>
    <a class="footerImg" href="#bannerTop" target="_self"><img src="image/jtIndex.png" alt="回到开头"/></a>
</div>
<script src="js/hidden.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript" charset="utf-8" src="js/lunbo.js"></script>
</body>
</html>