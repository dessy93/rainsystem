/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;


import Model.S_D_Model;
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
public class S_D_Action {
     private Dao dao = new Dao();
    
    public String manage() throws SQLException {
          List<S_D_Model> manage_list = new ArrayList<S_D_Model>();
           List<S_D_Model> manage_list1 = new ArrayList<S_D_Model>();
            List<S_D_Model> manage_list2 = new ArrayList<S_D_Model>();
             List<S_D_Model> manage_list3 = new ArrayList<S_D_Model>();
          System.out.println("into show");
          //String site="init";
       //   float number = 0;
          String sql = "select * from staff limit 0,3"; 
       
          ResultSet rs = dao.executeQuery(sql);
                while(rs.next()){
                manage_list.add(new S_D_Model(rs.getInt("id"),rs.getString("name"),rs.getString("phonenumber"),rs.getString("army")));
              //   System.out.println("date"+ rs.getInt("id")+ rs.getString("name")+rs.getString("phonenumber")+rs.getString("army"));      
                }
                
             String sql1 = "select * from staff where army = \"汉阳区支局\""; 
       
          ResultSet rs1 = dao.executeQuery(sql1);
                while(rs1.next()){
                manage_list1.add(new S_D_Model(rs1.getInt("id"),rs1.getString("name"),rs1.getString("phonenumber"),rs1.getString("army")));
              //   System.out.println("date"+ rs.getInt("id")+ rs.getString("name")+rs.getString("phonenumber")+rs.getString("army"));      
                }
                
             String sql2 = "select * from staff where army = \"青山区支局\"";    
                 ResultSet rs2 = dao.executeQuery(sql2);
                while(rs2.next()){
                manage_list2.add(new S_D_Model(rs2.getInt("id"),rs2.getString("name"),rs2.getString("phonenumber"),rs2.getString("army")));
             //    System.out.println("date"+ rs.getInt("id")+ rs.getString("name")+rs.getString("phonenumber")+rs.getString("army"));      
                }
                
              String sql3 = "select * from staff where army = \"江夏区支局\"";    
                 ResultSet rs3 = dao.executeQuery(sql3);
                while(rs3.next()){
                manage_list3.add(new S_D_Model(rs3.getInt("id"),rs3.getString("name"),rs3.getString("phonenumber"),rs3.getString("army")));
              //   System.out.println("date"+ rs.getInt("id")+ rs.getString("name")+rs.getString("phonenumber")+rs.getString("army"));      
                }
                
                
                

                
              
     Map session = ActionContext.getContext().getSession();
    session.put("manage", manage_list);
    session.put("manage1", manage_list1);
    session.put("manage2", manage_list2);
    session.put("manage3", manage_list3);

    
    return "success";
     }
}
