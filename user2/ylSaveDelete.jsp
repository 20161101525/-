<%@ page contentType="text/html;charset=gb2312"%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="deletebean" scope="page" class="mydb.mydb"/>

<%
//接受id参数并转换为整型
 int id=Integer.parseInt(request.getParameter("id"));

//将该记录删除 
 String sql = "delete from user where id ="+id;
deletebean.executeUpdate(sql);

 
%>
//提示删除成功

<script language='javascript'>
    alert("你成功删除了这个用户")
    location='yldelete.jsp';
</script>
