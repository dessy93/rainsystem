/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import java.sql.*;
/**
 *
 * @author ivan93
 */
public class Dao {
    Connection con = null;
    Statement stat = null;
    ResultSet rs = null; 

public Dao() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/raindata","root","1234"); //连接数据库
            System.out.println("connect success!");
            stat = con.createStatement();
        } catch (Exception e) {
        // TODO: handle exception
            con = null;
        }
}
        
public ResultSet executeQuery(String sql) {    //数据库查询操作
        try {
                rs = stat.executeQuery(sql);
        } catch (Exception e) {
        // TODO: handle exception
                rs = null;
        }
                return rs;
        }
        public int executeUpdate(String sql) {   //数据库更新操作
        try {
                System.out.println(sql);
                stat.executeUpdate(sql);
                System.out.println("OK");
                return 0;
        } catch (Exception e) {
                System.out.println(e);
        }
                return -1;
        }
   
}
