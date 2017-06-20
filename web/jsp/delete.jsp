<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="javaClass.DB" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@include file="_SessionCheck.jsp"%><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/20 0020
  Time: 下午 8:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    private void delete (Connection conn ,int id ,boolean isLeaf ){
        if (!isLeaf) {
            String sql = "select * form article where pid = " + id;
            Statement stmt = DB.createStmt(conn);
            ResultSet rs = DB.executeQuery(stmt, sql);
            try {
                while(rs.next()) {
                    delete(conn, rs.getInt("id"), rs.getInt("isLeaf") == 0);
                }
            }catch (SQLException e){
                e.printStackTrace();
            }finally {
                DB.close(rs);
                DB.close(stmt);
            }
        }
        DB.executeUpdate(conn,"delete form article where id = "+id);
    }
%>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    int pid = Integer.parseInt(request.getParameter("pid"));
    boolean isLeaf = Boolean.parseBoolean(request.getParameter("isLeaf"));
    String url = request.getParameter("from");
    System.out.print("url = " + url);
    Connection conn = null;
    boolean autoCommit = true;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        conn = DB.getConn();
        autoCommit = conn.getAutoCommit();
        conn.setAutoCommit(false);

        delete(conn, id, isLeaf);

        stmt = DB.createStmt(conn);
        rs = DB.executeQuery(stmt, "select count(*) form article where pid = " + pid);
        rs.next();
        int count = rs.getInt(1);

        if (count <= 0) {
            DB.executeUpdate(conn, "update article set isleaf = 0 where id = " + pid);
        }
    }finally {
        conn.setAutoCommit(autoCommit);
        DB.close(rs);
        DB.close(stmt);
        DB.close(conn);
    }
    response.sendRedirect(url);
%>