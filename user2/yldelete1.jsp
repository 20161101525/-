<html>
<head>
<title>yllist</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
	div{list-style: none;}
			*{margin: 0;padding: 0;}
			ul{
				list-style: none;
			}
			a{
				text-decoration: none;
			}
			.aa{
				width:1350px;
				height:580px;
			}
			#nav ul{
				width: 1300px;
				height: 50px;
				border: 1px solid red;
				margin: 0 auto;
			}
			#nav ul li{
				width: 14.285%;
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
			.two ul{
				height:25%;
				width: 150px;
				height: 200px;
				border: 1px solid pink;
				margin: 0 30px;
			}
			.two ul li{
				line-height: 100px;
				float: center;
				text-align: center;
			}
			.two ul li a{
				display: block;
				background:deepskyblue;
				color: black;
				font-weight: bold;
			}
			.two ul li a:hover{
				background: white;
				color: deeppink;
			}
			.too{
				width:1300px;
				height:100px;
			}
			.too img{
				width:1350px;
				height:100px;
			}
			.three{
				width:1150px;
				margin:-200px 200px;
			}
			input[type="button"]{
				float: left;
		       	font-size: 15px;
		       	background:black;
				color:white;
		       	opacity: 0.8;
		       	width:80px;
		       	height:30px;
			}
</style>
</head>
<body>
	<%@ page contentType="text/html;charset=gb2312"%>
	<%@ page language="java" import="java.sql.*"%>
<div class="aa">
	<div id="nav">
			  <div class="too">
				    <img src="../img/12.JPG">
				</div>
			<ul>
				<li><a href="../index2.jsp">��ҳ</a></li>
				<li><a href="../user2/yhgl.html">�û���Ϣ����</a></li>
				<li><a href="../user1/yhgl.html">����Ա��Ϣ����</a></li>
				<li><a href="../book/bookgl.html">ͼ����Ϣ����</a></li>
				<li><a href="../notice/noticegl.html">���Թ���</a></li>
				<li><a href="../order/ordergl.html">������Ϣ����</a></li>
				<li><a href="../index.html">ע��</a></li>
			</ul>
	    </div>
		<div class="two">
		<ul>
				<li><a href="userlist.jsp">�鿴�����û�</a></li>
				<li><a href="yldelete.jsp">ɾ���û�</a></li>
			</ul>
		<div class="three">		
<!-- ImageReady Slices (regconfirm) -->
<table>
			<jsp:useBean id="userbean" scope="page" class="mydb.mydb"/>
			<form action="yldelete1.jsp" method="post">
			<tr>
			<td colspan="12">
			<input type="text" name="NAME">
			<input type="submit" value="����">*�������ǳ�</td>
			</tr>
			</form>
			<tr>
			<td width="7%" align="center">�ǳ�</td>
			<td width="7%" align="center">����</td>
			<td width="7%" align="center">��ʵ����</td>
			<td width="10%" align="center">������ʾ����&nbsp;</td>
			<td width="10%" align="center">����ش��&nbsp;</td>
			<td width="7%" align="center">�Ա�</td>
			<td width="8%" align="center">����������</td>
			<td width="7%" align="center">�绰</td>
			<td width="7%" align="center">QQ��</td>
			<td width="7%" align="center">��ͥסַ</td>
			<td width="7%" align="center">������λ</td>
			<td width="7%" align="center">��ɫ</td>
			</tr>

<%

	String name,password,u_name,question,answer,sex,birthday,tel,qq,addr,jobaddr,actor;
 	//�����ݿ�
 	String NAME = new String(request.getParameter("NAME").getBytes("ISO8859_1"));
	String sql="select * from user where actor='user' and name='"+NAME+"'";
 	ResultSet rs = userbean.executeQuery(sql);
 
	//��ʾ��¼��ÿҳ��ʾ5�� 
	out.print("<center>");
	out.print("<table>");

 	while(rs.next())
	{
		int id = rs.getInt(1);
  		name = rs.getString(2);
		password = rs.getString(5);
		u_name = rs.getString(13);
		question = rs.getString(11);
		answer = rs.getString(12);
		sex = rs.getString(3);
		birthday = rs.getString(4);
		tel = rs.getString(6);
		qq = rs.getString(8);
		addr = rs.getString(7);
		jobaddr = rs.getString(9);
		actor = rs.getString(10);
		
		
  		out.print("<table>"); 
  		out.print("<tr><td width='120' height='20'>"+name+"</td><td width='80' height='20'>"+password+"</td><td width='100'  height='20'>"+u_name+"</td><td width='130'  height='20'>"+question+"</td><td width='140'  height='20'>"+answer+"</td><td width='100'  height='20'>"+sex+"</td><td width='100'  height='20'>"+birthday+"</td><td width='100'  height='20'>"+tel+"</td><td width='100'  height='20'>"+qq+"</td><td width='100'  height='20'>"+addr+"</td><td width='60'  height='20'>"+jobaddr+"</td><td width='60'  height='20'>"+actor+"</td><td width='100' height='20'><a href=ylSaveDelete.jsp?id="+id+">ɾ��</a></td></tr>");
		out.print("</table>");
		
		out.print("</table>");

		out.print("<table>");
		out.print("<tr><td> <img src=");
		out.print('\"');
		out.print("images/separator2.gif");
		out.print('\"');
		out.print("width='1040'  height='6'></td></tr>");
		out.print("</table>");  
	}
 	out.print("</table><p>");

%>
</table>         
</div>
</div>
</div>
<!-- End ImageReady Slices -->
</body>
</html>