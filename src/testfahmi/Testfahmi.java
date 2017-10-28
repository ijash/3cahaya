/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testfahmi;

import java.sql.*;

public class Testfahmi {

    public static final String USERNAME = "root";
    public static final String PASSWORD = "ijasabb35";
    public static final String CONN_STRING = 
            "jdbc:mysql://66.96.231.241:3306/fahmi18";
    
    public static void main(String[] args) {
        Connection conn = null;
        
        try{
            conn = DriverManager.getConnection(CONN_STRING,USERNAME,PASSWORD);
            System.out.println("Connected");
        }
        catch (SQLException e){
            System.err.println(e);
        }
    }
    
}
