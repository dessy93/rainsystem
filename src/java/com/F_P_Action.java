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
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.struts2.ServletActionContext;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

/**
 *
 * @author ivan93
 */
public class F_P_Action extends ActionSupport{
private Dao dao = new Dao();

    
   String text;
   String time;
   File inputfile;
   String inputfileFileName;

    public String getInputfileFileName() {
        return inputfileFileName;
    }

    public void setInputfileFileName(String inputfileFileName) {
        this.inputfileFileName = inputfileFileName;
    }

    public void setInputfile(File inputfile) {
        this.inputfile = inputfile;
    }

    public File getInputfile() {
        return inputfile;
    }

   

   
  


    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

   


    
    public String manage() throws SQLException, IOException {
  
//String sql = "insert into report(place,level,time) values('"+ getPlace()+"','"+ getLevel() + "','"+ getTime() +"')";

//System.out.println("regist username is:"+getUsername()+getPassword1());
//int i = dao.executeUpdate(sql);
 System.out.print("into manage");
   System.out.println("the filename is:" +  getInputfileFileName() );    
   
        //获取文件存储路径  
        String path = ServletActionContext.getRequest().getRealPath("/upload");  
        //输出流  
        String time = getTime();
        OutputStream os = new FileOutputStream(new File(path, getInputfileFileName()));  
        //输入流  
        System.out.println("path is " + path);
        InputStream is = new FileInputStream(getInputfile());  
          
        byte[] buf = new byte[1024];  
        int length = 0 ;  
       
        while(-1 != (length = is.read(buf) ) )  
        {  
            os.write(buf, 0, length) ;  
        }  
        is.close();  
        os.close();  
          
        return SUCCESS;  

//showlist();


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






}
