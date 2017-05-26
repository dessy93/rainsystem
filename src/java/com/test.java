/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import Model.Test;
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
public class test {
    private Dao dao = new Dao();
    
    public String manage() throws SQLException {
          List<Test> manage_list = new ArrayList<Test>();
           System.out.println("into show");
          String sql = "select * from rainfull "; 
          ResultSet rs = dao.executeQuery(sql);
                while(rs.next()){
                manage_list.add(new Test(1,0,"2017/03/06"));
                }
     Map session = ActionContext.getContext().getSession();
    session.put("manage", manage_list);
    
    
    return "success";
     }
}
