package javaClass;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;

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
        conn = DriverManager.getConnection(url,name,password);
        return  conn;
    }



}
