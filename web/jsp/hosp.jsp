<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/19 0019
  Time: 下午 3:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*,javaClass" %>
<%@ page import="javaClass.DB" %>
<%
    String title = request.getParameter("title");
    String cont = request.getParameter("cont");

    if (title != null && cont != null) {
        System.out.println("title=" + title);
        System.out.println("cont=" + cont);
        System.out.println("----------");
        Connection conn = DB.getConn();
        String sql = "insert into article values (null, '1', '1', "+title+", "+cont+", now(), '1')";
        Statement stmt = DB.createStmt(conn);
        try {
            stmt.executeUpdate(sql);

    }catch (SQLException e){
        System.out.println("sql错误");
    }finally {
        DB.close(stmt);
        DB.close(conn);}
    }
%>
<html>
<head>
    <title>创建新主题</title>
    <script src="../ckeditor/ckeditor.js"></script>
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tr>
        <td width="140"><a href="/jsp/article.jsp"><img src="../images/header-left.gif" alt="Java|Java世界_中文论坛|ChinaJavaWorld技术论坛" border="0"></a></td>
        <td><img src="../images/header-stretch.gif" alt="" border="0" height="57" width="100%"></td>
        <td width="1%"><img src="../images/header-right.gif" alt="" border="0"></td>
    </tr>
</table><br />
<form action="hosp.jsp" method="post">
    标题<input style="text" name="title"/>
    <p>内容</p>
    <textarea name="cont" id="editor1" rows="10" cols="80">
                                                在这里输入要提交的内容！
    </textarea>
    <script>
        // Replace the <textarea id="editor1"> with a CKEditor
        // instance, using default configuration.
        CKEDITOR.replace( 'editor1' );
    </script><br />
    <input type="submit" value="提交"  />
</form>
</body>
</html>
