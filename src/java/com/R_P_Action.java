/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;
import Model.R_P_Model;
import com.opensymphony.xwork2.ActionContext;
import java.sql.*;
import com.opensymphony.xwork2.ActionSupport;
import dao.Dao;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

/**
 *
 * @author ivan93
 */
public class R_P_Action extends ActionSupport{
private Dao dao = new Dao();

    
    String place;
    String level;
    String time;

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
    
    public String manage() throws SQLException, IOException {
  
String sql = "insert into report(place,level,time) values('"+ getPlace()+"','"+ getLevel() + "','"+ getTime() +"')";
//System.out.println("regist username is:"+getUsername()+getPassword1());
int i = dao.executeUpdate(sql);

showlist();

if (i > -1) {
    System.out.println("success");
return "success";
}
 System.out.println("error");
return "error";
}
      
    
public String showlist() throws SQLException, IOException{

     List<R_P_Model> manage_list = new ArrayList<R_P_Model>();
     
        String url = "http://www.nmc.cn/publish/satellite/fy2.htm";
       
        Document doc = Jsoup.connect(url).get();
        String title = doc.body().toString();
        Elements c = doc.select("img#imgpath");
        String a = c.toString();
        String b = c.attr("src");
        System.out.println(b);
     
      System.out.println("into show");
  String sql = "select * from report"; 
  ResultSet rs = dao.executeQuery(sql);
  while(rs.next()){
  manage_list.add(new R_P_Model(rs.getInt("id"),rs.getString("place"),rs.getString("level"),rs.getString("time")));
        System.out.println("date"+ rs.getInt("id")+ rs.getString("place")+rs.getString("level")+rs.getString("time"));
  }
     Map session = ActionContext.getContext().getSession();
    session.put("manage", manage_list);
 
    session.put("link", b);
    return "success";
  
}




 private void close(FileOutputStream fos, FileInputStream fis) {
        if (fis != null) {
            try {
                fis.close();
            } catch (IOException e) {
                System.out.println("FileInputStream关闭失败");
                e.printStackTrace();
            }
        }
        if (fos != null) {
            try {
                fos.close();
            } catch (IOException e) {
                System.out.println("FileOutputStream关闭失败");
                e.printStackTrace();
            }
        }
    }

}
