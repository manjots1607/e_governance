package egovernance;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Avtar Singh
 */

import java.sql.*;
import javax.swing.*;
public class mysqlconnect {
    Connection conn=null;
    public static Connection ConnectDB(){
      try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/egovernance","root","manjot");
       JOptionPane.showMessageDialog(null,"connected to database");
       return conn;
      }
      catch(Exception e){
      JOptionPane.showMessageDialog(null, e);
      return null;
      }  
    }
}
