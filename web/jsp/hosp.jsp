<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/19 0019
  Time: 下午 3:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<%@ page import="javaClass.DB" %>
<%
    request.setCharacterEncoding("GBK");
    String action = request.getParameter("action");
    String title = request.getParameter("title");
    String cont = request.getParameter("cont");
    if (title != null && cont != null) {
        System.out.println(title);
        System.out.println(cont);
        Connection conn = DB.getConn();

        boolean autoCommit = conn.getAutoCommit();
        conn.setAutoCommit(false);

        int rootId = -1;

        String sql = "insert into article values (null, ?, ?, ?, ?, now(), ?)";
        PreparedStatement pstmt = DB.prepareStmt(conn, sql, Statement.RETURN_GENERATED_KEYS);
        pstmt.setInt(1, 0);
        pstmt.setInt(2, rootId);
        pstmt.setString(3, title);
        pstmt.setString(4, cont);
        pstmt.setInt(5, 0);
        pstmt.executeUpdate();

        ResultSet rsKey = pstmt.getGeneratedKeys();
        rsKey.next();
        rootId = rsKey.getInt(1);

        Statement stmt = DB.createStmt(conn);
        stmt.executeUpdate("update article set rootid = " + rootId + " where id = "	+ rootId);

        conn.commit();
        conn.setAutoCommit(autoCommit);
        DB.close(pstmt);
        DB.close(stmt);
        DB.close(conn);

        response.sendRedirect("article.jsp");

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
<form action="hosp.jsp" method="hosp">
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
