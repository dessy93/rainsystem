/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;
import Model.R_P_Model;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import java.sql.*;
import com.opensymphony.xwork2.ActionSupport;
import dao.Dao;

import java.io.IOException;


/**
 *
 * @author ivan93
 */
public class S_M_Action extends ActionSupport{
private Dao dao = new Dao();
    
    String username;
    String password;
    String permission;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPermission() {
        return permission;
    }

    public void setPermission(String permission) {
        this.permission = permission;
    }
    
    
    public String manage() throws SQLException, IOException {
  

     System.out.print("into manage");
  String sql = "insert into user(username,password,permission) values('"+ getUsername().trim()+"','"+ getPassword().trim() + "','"+getPermission() +"')";
//System.out.println("regist username is:"+getUsername()+getPassword1());
int i = dao.executeUpdate(sql);


if (i > -1) {
    System.out.println("success");
return "success";
}
 System.out.println("error");
return "error";


}
    


}
