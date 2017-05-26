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
public class W_L_Action {
    
    private Dao dao = new Dao();
    
    public String manage() throws SQLException {
       
          List<W_L_Model> manage_list1 = new ArrayList<W_L_Model>();
          System.out.println("into show");        
           String sql1 = "select * from waterlevel "; 
                        
          ResultSet rs1 = dao.executeQuery(sql1);
                while(rs1.next()){
                manage_list1.add(new W_L_Model(rs1.getInt("id"),rs1.getString("site"),rs1.getFloat("number"),rs1.getFloat("warning"),rs1.getString("time")));
                 System.out.println("date"+ rs1.getInt("id")+ rs1.getString("site")+rs1.getFloat("number")+rs1.getString("time"));
                }
                              
    Map session = ActionContext.getContext().getSession();
    session.put("manage1",manage_list1);
    
    return "success";
     }
    
}
