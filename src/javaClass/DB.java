package javaClass;

import java.sql.*;

/**
 * Created by Administrator on 2017/6/13 0013.
 */
public class DB {
    private final static String url = "jdbc:mysql:localhost:3306/bbs";
    private final static String name = "root";
    private final static String password = "root";

    public static Connection getconn(){
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
            conn = DriverManager.getConnection(url,name,password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  conn;
    }
    public static Statement createStmt(Connection conn){
        Statement stmt = null ;
        try {
            stmt = conn.createStatement();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return stmt;
    }

    public static ResultSet executeQuery(Statement stmt , String sql){
        ResultSet rs = null ;
        try {
            rs = stmt.executeQuery(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs;
    }

    public static void close (Connection conn){
        if(conn != null){
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            conn = null ;
        }
    }

    public static void close (Statement stmt){
        if(stmt != null){
            try {
                stmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            stmt = null ;
        }
    }

    public static void close (ResultSet rs){
        if(rs != null){
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            rs = null ;
        }
    }



}
