<%-- 
    Document   : sqltest
    Created on : 2017-3-17, 9:35:15
    Author     : Administrator
--%>


<%@page import="com.google.gson.JsonArray"%>  
<%@page import="com.google.gson.JsonObject"%>  
<%@page import="java.sql.DriverManager"%>  
<%@page import="java.sql.ResultSet"%>  
<%@page import="java.sql.Statement"%>  
<%@page import="java.sql.Connection"%>  
<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  

    <%  
        String sql = "SELECT * FROM rainfull";  
        // 数据库链接  
        Connection conn = null;  
        // 向数据库发送sql语句  
        Statement st = null;  
        // 结果集  
        ResultSet rs = null;  
        String url = "jdbc:mysql://localhost:3306/raindata";  
        String user = "root";  
        String pass = "1234";  
        try {  
            Class.forName("com.mysql.jdbc.Driver");  
            //数据库的地址，密码，用户名  
            conn = DriverManager.getConnection(url, user, pass);  
            st = conn.createStatement();  
            rs = st.executeQuery(sql);  
  
            JsonObject object = new JsonObject();  
            JsonArray array = new JsonArray();  
  
            while (rs.next()) {  
  
                JsonObject ob = new JsonObject();  
  
                ob.addProperty("id", rs.getInt("id"));  
                ob.addProperty("site", rs.getString("site"));  
                ob.addProperty("number", rs.getFloat("number"));  
                ob.addProperty("times", rs.getString("time"));  
             
  
                array.add(ob);  
  
            }  
  
            object.add("News", array);  
            out.print(object.toString());  
  
        } catch (Exception e) {  
  
        } finally {  
            try {  
                rs.close();  
            } catch (Exception e) {  
            }  
            try {  
                st.close();  
            } catch (Exception e) {  
            }  
            try {  
                conn.close();  
            } catch (Exception e) {  
            }  
        }  
    %>  
