<html>
<head>
<title>forget</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
	.one{
		margin:200px 0;
	}
	input[type="submit"]{
		float: left;
     	margin:0px 80px;
      	font-size: 15px;
     	background:deepskyblue;
    	opacity: 0.8;
	   	width:80px;
    	height:30px;
	}
	input[type="reset"]{
        float: left;
       	margin:0px 20px;
       	font-size: 15px;
       	background:deepskyblue;
      	opacity: 0.8;
      	width:80px;
      	height:30px;	 
	}
</style>
</head>
<body background="images/ybj.jpg">
<%@ page contentType="text/html;charset=gb2312"%>
<!-- ImageReady Slices (forget) -->
<table>
<form method="POST" action="searchmima.jsp">
  <div class="one">
    <center>
    <table align="center" width="39%" height="143">
      <tr>
        <td width="50%" align="center" height="19"><b>昵称</b></td>
        <td width="50%" height="19"><input type="text" name="name" size="20"></td>
      </tr>
	  <tr>
        <td width="50%" align="center" height="19"><b>密码提示问题</b></td>
        <td width="50%" height="19"><input type="text" name="question" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="center" height="19"><b>密码回答答案</b></td>
        <td width="50%" height="19"><input type="text" name="answer" size="20"></td>
      </tr>
      <tr>
        <td width="50%" height="105">
        <p align="center">
        <input type="submit" value="查找密码" name="B1" style="float: right" > </td>
        <td width="50%" height="105" align="center">
        <p>
        <input type="reset" value="重新输入" name="B2" style="float: left" ></td>
      </tr>
    </table>
    </center>
  </div>

</form>

</table>
<!-- End ImageReady Slices -->
</body>
</html>