/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import Model.R_P_Model;
import com.opensymphony.xwork2.ActionContext;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

/**
 *
 * @author Administrator
 */
public class W_T_Action {
    public String showlist() throws SQLException, IOException{

 
     
      String url = "http://www.nmc.cn/publish/satellite/fy2.htm";
       
        Document doc = Jsoup.connect(url).get();
        String title = doc.body().toString();
        Elements c = doc.select("img#imgpath");
        String a = c.toString();
        String b = c.attr("src");
        System.out.println(b);
     
    Map session = ActionContext.getContext().getSession();
    session.put("link", b);
 
    
    return "success";
  
}
}
