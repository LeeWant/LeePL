<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>植行</title>
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
                <li class="active"><a href="index">主页</a></li>
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
            <div class="navbar-form">
			<form action="zhitie" class="input-group" style="margin-left:200px;margin-top:0px positon:relative;width:300px">  
			       <input type="text" name="content" class="form-control" placeholder="请输入字段名" />  
			            <span class="input-group-btn">  
			               <button type="submit" class="btn btn-info btn-search">查找</button>  
			            </span>  
			</form> 
            <div style="display:<%=dp1%>" class="navbar-right">
            	<a  type="button" class="btn btn-link" href="sign_in"><span class="glyphicon glyphicon-log-in"></span><b>登录</b></a>
            	<a  type="button" class="btn btn-link" href="sign_up"><span class="glyphicon glyphicon-user"></span><b>注册</b></a>
       		</div >
       		<div class="dropdown navbar-right" style="display:<%=dp2%>">
                <div class="read_img">
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
</div>
<!-- 轮播 -->
<div id="ad-carousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#ad-carousel" data-slide-to="0" class="active"></li>
        <li data-target="#ad-carousel" data-slide-to="1"></li>
        <li data-target="#ad-carousel" data-slide-to="2"></li>
        <li data-target="#ad-carousel" data-slide-to="3"></li>
        <li data-target="#ad-carousel" data-slide-to="4"></li>
    </ol>
    <div class="carousel-inner">
        <div class="item active">
            <img src="flowerImg/mh.jpg" alt="1 slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>梅花</h1>
					<br>
                    <p>那是一朵梅，凌霜斗雪,迎春开放,风骨俊傲,不趋荣利，铮铮傲骨，不于冬寒。故我开在冬日笑那芬芳如笙箫。</p>
					<p><a target="_blank" href="luntan" class="sign">进入论坛</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img src="flowerImg/yj1.jpg" alt="2 slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>月季花</h1>
					<br>
                    <p>幸福的时光很短暂，但是我希望你能铭记，给你的月季那是我的祝福，是我对你崇高的敬意。</p>
					<p><a target="_blank" href="luntan" class="sign">进入论坛</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img src="flowerImg/mtx1.jpg" alt="3 slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>满天星</h1>
					<br>
                    <p>孤独的满天星，像个配角站在你的边上却能衬托出你的美丽，但这是我们共同的时光，拥有你很快乐。</p>
					<p><a target="_blank" href="luntan" class="sign">进入论坛</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img src="flowerImg/knx3.jpg" alt="4 slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>康乃馨</h1>
					<br>
                    <p>热情、魅力、使人柔弱的爱、真情、母亲我爱你、温馨的祝福、热爱着你、慈祥、不求代价的母爱</p>
					<p><a target="_blank" href="luntan" class="sign">进入论坛</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img src="flowerImg/yj2.jpg" alt="5 slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>玫瑰花</h1>
					<br><br><br>
                    <p>当那渐行渐远的列车，载着你远走他乡时，我早已把思念化为守望，望着那娇艳欲滴的玫瑰，在这小园香径里，悄悄为你绽放。</p>
					<p><a target="_blank" href="luntan" class="sign">进入论坛</a></p>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#ad-carousel" data-slide="prev"><span
            class="glyphicon glyphicon-chevron-left"></span></a>
    <a class="right carousel-control" href="#ad-carousel" data-slide="next"><span
            class="glyphicon glyphicon-chevron-right"></span></a>
</div>
	

<!-- 关于 -->
    <div class="modal fade" id="about-modal" tabindex="-1" role="dialog" aria-labelledby="modal-label"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">关闭</span></button>
                    <h4 class="modal-title" id="modal-label">关于</h4>
                </div>
                <div class="modal-body">
                    <p>植行论坛</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">了解了</button>
                </div>
            </div>
        </div>
    </div>
<!-- 尾部 -->
    <footer>
        <p>Copyright &copy; 2017 植行 Theme by Miss Tina All All Rights Reserved.</p>
    </footer>
<script type="text/javascript">

	
</script>
</body>
</html>