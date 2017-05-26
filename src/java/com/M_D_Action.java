/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;


import Model.M_D_Model;

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
public class M_D_Action {
     private Dao dao = new Dao();
    
    public String manage() throws SQLException {
          List<M_D_Model> manage_list = new ArrayList<M_D_Model>();
           List<M_D_Model> manage_list1 = new ArrayList<M_D_Model>();
         
          System.out.println("into show");
          //String site="init";
       //   float number = 0;
          String sql = "select * from material where storehouse = \"硚口物质中心\""; 
       
          ResultSet rs = dao.executeQuery(sql);
                while(rs.next()){
                manage_list.add(new M_D_Model(rs.getInt("id"),rs.getString("name"),rs.getString("unit"),rs.getInt("number"),rs.getString("staff"),rs.getString("staffphone"),rs.getString("storehouse")));
               //  System.out.println("date"+ rs.getInt("id")+ rs.getString("name")+rs.getString("phonenumber")+rs.getString("army"));      
                }
                
             String sql1 = "select * from material where storehouse = \"团山物质中心\""; 
       
          ResultSet rs1 = dao.executeQuery(sql1);
                while(rs1.next()){
                manage_list1.add(new M_D_Model(rs1.getInt("id"),rs1.getString("name"),rs1.getString("unit"),rs1.getInt("number"),rs1.getString("staff"),rs1.getString("staffphone"),rs1.getString("storehouse")));
              //   System.out.println("date"+ rs.getInt("id")+ rs.getString("name")+rs.getString("phonenumber")+rs.getString("army"));      
                }
                
     
                
                
                

                
              
     Map session = ActionContext.getContext().getSession();
    session.put("manage", manage_list);
    session.put("manage1", manage_list1);


    
    return "success";
     }
}
