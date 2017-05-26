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
public class C1_Action {
     private Dao dao = new Dao();
    
    public String manage() throws SQLException {
          List<R_F_Model> manage_list = new ArrayList<R_F_Model>();      
          System.out.println("into show");
          //String site="init";
        
           List<Float> number = new ArrayList<Float>();
          int i=0; 
       //   float number = 0;
          String sql = "select number from rainfull where site = \"华中科技大学\" order by time asc"; 
          
          ResultSet rs = dao.executeQuery(sql);
                while(rs.next()){
                manage_list.add(new R_F_Model(rs.getInt("id"),rs.getString("site"),rs.getFloat("number"),rs.getString("time")));
                 System.out.println("date"+ rs.getInt("id")+ rs.getString("site")+rs.getFloat("number")+rs.getString("time"));
                // site = rs.getString("site");                
                number.add(rs.getFloat("number"));
                }
                
     
                
              
     Map session = ActionContext.getContext().getSession();
    session.put("manage", manage_list);
      session.put("number",number);
    
    return "success";
     }
}
