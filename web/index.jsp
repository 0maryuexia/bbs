<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/13 0013
  Time: 下午 3:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  System.out.println("访问者ip："+request.getRemoteAddr());

  response.sendRedirect("/jsp/article.jsp");
%>
<html>
  <head>
    <title>首页</title>
  </head>
  <body>
  这里是首页<br>
  <a  href="jsp/article.jsp">GO_BBS</a>
  </body>
</html>
