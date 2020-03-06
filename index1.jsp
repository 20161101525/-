<html>
	<head>
		<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
		<meta name="ProgId" content="FrontPage.Editor.Document">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>index</title>
		<style type="text/css">
			div{list-style: none;}
			*{margin: 0;padding: 0;}
			ul{
				list-style: none;
			}
			a{
				text-decoration: none;
			}
			#nav ul{
				width: 1300px;
				height: 50px;
				border: 1px solid red;
				margin: 0 auto;
			}
			#nav ul li{
				width: 20%;
				line-height: 50px;
				float: left;
				text-align: center;
			}
			#nav ul li a{
				display: block;
				background: black;
				color: deepskyblue;
				font-weight: bold;
			}
			#nav ul li a:hover{
				background: white;
				color: deeppink;
			}
			.two li{
					width: 150px;
					height: 2px;
					/*margin: 100px 20px;*/
			}
			.two li .title{
				width: 100%;
				float: left;
				line-height: 100px;					
				text-align: center;
			}
			.two li .a{
				display: block;
				font-size: 50px;
				font-weight: bold;	
			}
			.two li:hover .title{
				background: lightpink;
				color: blue;
			}
			.wrap{
				width: 900px;
				height: 620px;
				margin: 0 auto;
			}
			.wrap li{
				list-style: none;
				display: inline-block;
			}
			.wrap li .boxCont{
				overflow: hidden;
			}
			.wrap li .boxCont img{
				width: 100%;
				height: 100%;
				transition: all 3s;
			}
			.wrap li:hover .boxCont img{
				transform: scale(1.5);
			}
			.one{
				width: 1100px;
				height: 550px;
				margin: 0 auto;
				background: url(img/1.JPG);
				animation: run 12s infinite;
			}
			@keyframes run{
					0%{background: url(img/1.JPG);background-size: 100% 100%;}
					20%{background: url(img/2.JPG);background-size: 100% 100%;}
					40%{background: url(img/3.JPG);background-size: 100% 100%;}
					60%{background: url(img/4.JPG);background-size: 100% 100%;}
					80%{background: url(img/5.JPG);background-size: 100% 100%;}
					100%{background: url(img/1.JPG);background-size: 100% 100%;}
			}
			.one img{
				position: absolute;
				top: 500px;
				left: 0;
			}
			.xian{
				position:absolute;
				margin:50px 1100px;
			}
			input[type="submit"]{
			     background:#0066FF;
				 font-size:18px;
				 margin:15px 15px;
			}
		</style>
	</head>
		<body bgcolor="#FFFFFF" background="images/bj.jpg" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<%@ page contentType="text/html;charset=gb2312"%>
		<%@ page language="java" import="java.sql.*"%>
		<%--@include file="protect/protect.jsp"--%>
		<jsp:useBean id="indexbean" scope="page" class="mydb.mydb"/>
		<div id="nav">
			<ul>
				<li><a href="index1.jsp">首页</a></li>
				<li><a href="shop/list.jsp">购物车</a></li>
				<li><a href="shop/orderkan.jsp">订单</a></li>
				<li><a href="notice/main1.jsp">系统消息</a></li>
				<li><a href="index.html">注销</a></li>
			</ul>
			
			<div class="two">
				<li>
					<div class="title">
					<a href="economic/economic.jsp">最新电影</a>
					</div>
				</li>
				<li>
					<div class="title">
					<a href="film/hotfilm.html">最热电影</a>
					</div>
				</li>
				<li>
					<div class="title">
					<a href="film/happyfilm.html">喜剧电影</a>
					</div>
				</li>
				<li>
					<div class="title">
					<a href="film/actionfilm.html">动作电影</a>
					</div>
				</li>
				<li>
					<div class="title">
					<a href="film/fantasyfilm.html">奇幻电影</a>
					</div>
				</li>
			</div>
			<div class="one">
				<div class="xian">
					<table id="__01"align="center" width="150px" height="550px" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td rowspan="4"></td>
							<td colspan="2" rowspan="2">
							<form method="post" action="login/modify.jsp" >
							<p align="left">&nbsp;&nbsp;<font face="华文隶书" size="+2"><strong>昵称：</strong><%=(String)session.getValue("name")%></p>
							<p align="left">&nbsp;&nbsp;&nbsp;<font face="华文隶书" size="+2"><strong>性别：</strong><%=(String)session.getValue("sex")%></p>
							<p align="left"><font face="华文隶书" size="+2"><input type="submit" name="Submit" value="修改个人资料"></p>
							</form>
							
							</td>
							</tr>
				</div>
			</div>
			
		</div>
		

	</body>
</html>
