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
	
	int prep,nextp,pageno,pagecount,pagesize,recordcount, i,j,k;

 	pagesize=5; //ÿҳ��¼��
 
	 //�����¼���� 
	String sql="select count(*) from user where actor='user'"	;
	ResultSet rs = userbean.executeQuery(sql);
	rs.next(); //��¼���մ�ʱָ��λ�ڵ�һ����¼֮ǰ
	recordcount=rs.getInt(1);//ִ��count(*)����ֶ��д�ż�¼����
	rs.close();	
	//������ҳ��
	pagecount=(recordcount+pagesize-1)/pagesize;

	//���ύҳ�Ĵ���
	if(request.getParameter("pageno")==null)  //û������ҳ��ʱ��ҳ��Ϊ1
   	 pageno=1;
	else
	pageno=Integer.parseInt(request.getParameter("pageno"));//�ַ���ת��Ϊ����

	if( pageno> pagecount)
	 pageno = pagecount;
 
	if (pageno<1)
	pageno =1;

	//��ǰ��ҳ���ж�
  	if(pageno==1)

 	prep = 1;

	else

  	prep = pageno -1;

 	if(pageno == pagecount)

  	nextp = pagecount;

 	else

  	nextp = pageno +1;
  	//��ʾ��ҳ
%>


<%

	String name,password,u_name,question,answer,sex,birthday,tel,qq,addr,jobaddr,actor;
 	//�����ݿ�
	sql="select * from user where actor='user' order by id desc";
 	rs = userbean.executeQuery(sql);
 
 	//Ҫ��ʾҳ���׼�¼
 	i=(pageno-1)*pagesize; 
 	//�ƶ�ָ�뵽�׼�¼ 
	for (j=0;j<i;j++)
 	rs.next();
 
	//��ʾ��¼��ÿҳ��ʾ5�� 
 	k=0; 
	out.print("<center>");
	out.print("<table>");

 	while(k<pagesize && rs.next())
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
		k++;
	}
 	out.print("</table><p>");

%>
<form action=yldelete.jsp method=post>
    <table border=0 width="100%">
        <tr>
           <td width="92"><font size="2">Ŀǰҳ��:<font size="2" color="blue"><%=pageno%></font> /<font size="2" color="blue"><%=pagecount%></font></font></td>
           <td width="88"><font size="2">��<font size="2" color="blue"><%=recordcount%></font>����¼</font></td>
           <td width="68"><font size="2">��</font><a href=yldelete.jsp?pageno=<%=prep%>><font size="2">[��һҳ]</font></a></td>
           <td width="55"><a href=yldelete.jsp?pageno=<%=nextp%>><font size="2">[��һҳ]</font></a></td>
           <td width="55"><a href=yldelete.jsp?pageno=1><font size="2">[��һҳ]</font></a></td>
           <td width="68"><a href=yldelete.jsp?pageno=<%=pagecount%>><font size="2">[���һҳ]</font></a></td>
           <td width="105"><font size="2">����ҳ��:</font>
                <input size=3 name=pageno type=text></td>
            <td width="41"><input type=submit name=SEND2 value=����></td>
         </tr>
      </table>
</form> 
</table>         
</div>
</div>
</div>
<!-- End ImageReady Slices -->
</body>
</html>