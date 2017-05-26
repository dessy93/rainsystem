/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import Model.R_F_Model;
import Model.W_L_Model;
import com.opensymphony.xwork2.ActionContext;
import dao.Dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Administrator
 */
public class R_F_Action {
     private Dao dao = new Dao();
    
    public String manage() throws SQLException {
          List<R_F_Model> manage_list = new ArrayList<R_F_Model>();
          List<W_L_Model> manage_list1 = new ArrayList<W_L_Model>();
           List<R_F_Model> manage_list2 = new ArrayList<R_F_Model>();
            List<W_L_Model> manage_list3 = new ArrayList<W_L_Model>();
          System.out.println("into show");
          //String site="init";
          List<String> site = new ArrayList<String>();
           List<Float> number = new ArrayList<Float>();
          int i=0; 
       //   float number = 0;
          String sql = "select   *   from  rainfull  t where time=(select max(time)   from rainfull b where b.site     =t.site ) "; 
           String sql1 = "select   *   from  waterlevel  t where time=(select max(time)   from waterlevel b where b.site     =t.site ) limit 0,7"; 
          ResultSet rs = dao.executeQuery(sql);
                while(rs.next()){
                manage_list.add(new R_F_Model(rs.getInt("id"),rs.getString("site"),rs.getFloat("number"),rs.getString("time")));
                 System.out.println("date"+ rs.getInt("id")+ rs.getString("site")+rs.getFloat("number")+rs.getString("time"));
                // site = rs.getString("site");
                site.add(rs.getString("site"));             
                number.add(rs.getFloat("number"));
                
                if(rs.getFloat("number") > 0.2){
                      manage_list2.add(new R_F_Model(rs.getInt("id"),rs.getString("site"),rs.getFloat("number"),rs.getString("time")));
                      System.out.println("========================"+rs.getString("site"));
                }
                   
                }
                
          ResultSet rs1 = dao.executeQuery(sql1);
                while(rs1.next()){
                manage_list1.add(new W_L_Model(rs1.getInt("id"),rs1.getString("site"),rs1.getFloat("number"),rs1.getFloat("warning"),rs1.getString("time")));
                 System.out.println("date"+ rs1.getInt("id")+ rs1.getString("site")+rs1.getFloat("number")+rs1.getString("time"));
                 
                   if(rs1.getFloat("number") > rs1.getFloat("warning")){
                      manage_list3.add(new W_L_Model(rs1.getInt("id"),rs1.getString("site"),rs1.getFloat("number"),rs1.getFloat("warning"),rs1.getString("time")));
                      //System.out.println("========================"+rs.getString("site"));
                }
                 
                }
                
              
     Map session = ActionContext.getContext().getSession();
    session.put("manage", manage_list);
    session.put("manage1",manage_list1);
      session.put("site",site);
      session.put("number",number);
       session.put("manage2",manage_list2);
         session.put("manage3",manage_list3);
    
    return "success";
     }
}
