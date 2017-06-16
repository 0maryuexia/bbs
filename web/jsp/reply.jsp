<%@page pageEncoding="utf-8" %>
<%@page import="java.sql.* ,javaClass.*" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    int rootId = Integer.parseInt(request.getParameter("rootId"));
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Java|Java世界_中文论坛|ChinaJavaWorld技术论坛 :...</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" type="text/css" href="../images/style.css" title="Integrated Styles">
    <script language="JavaScript" type="text/javascript" src="../images/global.js"></script>
    <link rel="alternate" type="application/rss+xml" title="RSS" href="http://bbs.chinajavaworld.com/rss/rssmessages.jspa?threadID=744236">
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tbody>
    <tr>
        <td width="140"><a href="http://bbs.chinajavaworld.com/index.jspa"><img src="../images/header-left.gif" alt="Java|Java世界_中文论坛|ChinaJavaWorld技术论坛" border="0"></a></td>
        <td><img src="../images/header-stretch.gif" alt="" border="0" height="57" width="100%"></td>
        <td width="1%"><img src="../images/header-right.gif" alt="" border="0"></td>
    </tr>
    </tbody>
</table>
<br>
<div id="jive-flatpage">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tbody>
        <tr valign="top">
            <td width="99%"><p class="jive-breadcrumbs"> <a href="../index.jsp">首页</a> &#187; <a href="http://bbs.chinajavaworld.com/forumindex.jspa?categoryID=1">ChinaJavaWorld技术论坛|Java世界_中文论坛</a> &#187; <a href="http://bbs.chinajavaworld.com/category.jspa?categoryID=2">Java 2 Platform, Standard Edition (J2SE)</a> &#187; <a href="http://bbs.chinajavaworld.com/forum.jspa?forumID=20&amp;start=0">Java语言*初级版</a> </p>
                <p class="jive-page-title"> 回复:  </p></td>
            <td width="1%"><div class="jive-accountbox"></div></td>
        </tr>
        </tbody>
    </table>
    <div class="jive-buttons">
        <table summary="Buttons" border="0" cellpadding="0" cellspacing="0"></table>
    </div> <br>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tbody>
    <tr valign="top">
            <td width="99%"><div id="jive-message-holder">
                <div class="jive-message-list">
                    <div class="jive-table">
                        <div class="jive-messagebox">
                            <table summary="Message" border="0" cellpadding="0" cellspacing="0" width="100%">
                                <tbody>
                                <tr id="jive-message-780144" class="jive-odd" valign="top">
                                    <td class="jive-first" width="1%">
                                         <!--  表 单从这里开始-->
                                       <form action="replyDeal.jsp" method="post">
										   标题<input type="text" name = "title"><br /><br />
                                           <p> 内容</p>
                                           <textarea rows="15" cols="80" name="cont"></textarea><br>
                                           <input type="submit" value="提交"  />
                                       </form><!--  表 单从这里结束-->
                                    </td>
                                </tr>
                                     <td class="jive-last" width="99%"></td>
                                </tbody>
                            </table>
                        </div>
                    </div>
                <div class="jive-message-list-footer">
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tbody>
                        <tr>
                            <td nowrap="nowrap" width="1%"></td>
                            <td align="center" width="98%"><table border="0" cellpadding="0" cellspacing="0">
                                <tbody>
                                <tr>
                                    <td><a href="http://bbs.chinajavaworld.com/forum.jspa?forumID=20"><img src="../images/arrow-left-16x16.gif" alt="返回到主题列表" border="0" height="16" hspace="6" width="16"></a> </td>
                                    <td><a href="http://bbs.chinajavaworld.com/forum.jspa?forumID=20">返回到主题列表</a> </td>
                                </tr>
                                </tbody>
                            </table></td>
                            <td nowrap="nowrap" width="1%">&nbsp;</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            
            <td width="1%"></td>
        </tr>
        
    </table>

</html>
