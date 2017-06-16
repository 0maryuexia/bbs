<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/16 0016
  Time: 下午 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javaClass.*,java.util.*,java.sql.*,java.util.*" %>
<%--<%--%>
<%--response.setCharacterEncoding("utf-8");--%>
<%--int pid =Integer(request.getParameter("pid"));--%>
<%--int rootId =Integer(request.getParameter("rootId"));--%>

<%--String title = request.getParameter("title");--%>
<%--String cont = request.getPathTranslated("cont");--%>

<%--Connection conn = DB1.getConn();--%>
<%--boolean autoCommit =conn.getAutoCommit();--%>
<%--conn.getAutoCommit(false);--%>
<%--String sql = "insert into article values (null, ?, ?, ?, ?, now(), ?)";--%>
<%--PreparedStatement pstmt = DB1.prepareStmt(conn,sql);--%>
<%--pstmt.setInt(1, pid);--%>
<%--pstmt.setInt(2, rootId);--%>
<%--pstmt.setString(3, title);--%>
<%--pstmt.setString(4, cont);--%>
<%--pstmt.setInt(5, 0);--%>
<%--pstmt.executeUpdate();--%>

<%--Statement stmt = DB1.createStmt(conn);--%>
<%--stmt.executeUpdate(autoCommit);--%>
<%--conn.commit();--%>
<%--conn.setAutoCommit(autoCommit);--%>
<%--DB1.close(pstmt);--%>
<%--DB1.close(stmt);--%>
<%--DB1.close(conn);--%>
<%--%>--%>
<!-- 下面是复制↓ -->
<%
    request.setCharacterEncoding("GBK");

    int pid = Integer.parseInt(request.getParameter("pid"));
    int rootId = Integer.parseInt(request.getParameter("rootId"));



    String title = request.getParameter("title");
    System.out.println("title="+title);
    String cont = request.getParameter("cont");
    System.out.println("connt="+cont);
    Connection conn = DB1.getConn();

    boolean autoCommit = conn.getAutoCommit();
    conn.setAutoCommit(false);

    String sql = "insert into article values (null, ?, ?, ?, ?, now(), ?)";
    PreparedStatement pstmt = DB1.prepareStmt(conn, sql);
    pstmt.setInt(1, pid);
    pstmt.setInt(2, rootId);
    pstmt.setString(3, title);
    pstmt.setString(4, cont);
    pstmt.setInt(5, 0);
    pstmt.executeUpdate();

    Statement stmt = DB1.createStmt(conn);
    stmt.executeUpdate("update article set isleaf = 1 where id = " + pid);

    conn.commit();
    conn.setAutoCommit(autoCommit);
    DB1.close(pstmt);
    DB1.close(stmt);
    DB1.close(conn);


%>
<!-- 上面是复制↑ -->
<html>
<head>
    <title>跳转页面</title>
</head>
<body>
    <span id = "time" style="background:red">5</span>秒后跳转，如不跳转请点击下面链接！
    <script language="JavaScript1.2" type="text/javascript">
        <!--
        //  Place this in the 'head' section of your page.

        function delayURL(url) {
            var delay = document.getElementById("time").innerHTML;
//alert(delay);
            if(delay > 0) {
                delay--;
                document.getElementById("time").innerHTML = delay;
            } else {
                window.top.location.href = url;
            }
            setTimeout("delayURL('" + url + "')", 1000); //delayURL(http://wwer)
        }

        //-->

    </script>


    <a href="article.jsp">主题列表</a>
    <script type="text/javascript">
        delayURL("/jsp/article.jsp");
    </script>
</body>
</html>
