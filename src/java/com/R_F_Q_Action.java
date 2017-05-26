/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;
import Model.R_F_Model;
import Model.R_P_Model;
import com.opensymphony.xwork2.ActionContext;
import java.sql.*;
import com.opensymphony.xwork2.ActionSupport;
import dao.Dao;

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
public class R_F_Q_Action extends ActionSupport{
private Dao dao = new Dao();
    
     String query;
     String keyword;

    public String getQuery() {
        return query;
    }

    public void setQuery(String query) {
        this.query = query;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }
    
    
public String showlist() throws SQLException, IOException{

     List<R_F_Model> manage_list = new ArrayList<R_F_Model>();
     String q = getQuery();
     String querywhat = "";
     if(q.equals("站点"))
         querywhat = "site";
     if(q.equals("日期"))
         querywhat = "time";
        
     
      System.out.println("into show");
     
  String sql = "select * from rainfull where " + querywhat + "= '"+getKeyword()+"' order by time desc"; 
  System.out.println("sql " + sql);
  ResultSet rs = dao.executeQuery(sql);
  while(rs.next()){
  manage_list.add(new R_F_Model(rs.getInt("id"),rs.getString("site"),rs.getFloat("number"),rs.getString("time")));
        System.out.println("date"+ rs.getInt("id")+ rs.getString("site")+rs.getFloat("number")+rs.getString("time"));
  }
     Map session = ActionContext.getContext().getSession();
    session.put("manage", manage_list);
 
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
