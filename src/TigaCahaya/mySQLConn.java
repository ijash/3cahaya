    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TigaCahaya;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class mySQLConn {

    public static final String USERNAME = "root";
    public static final String PASSWORD = "ijasabb35";
//    public static final String CONN_STRING = "jdbc:mysql://66.96.231.241:3306/fahmi18";
    public static final String CONN_STRING = "jdbc:mysql://192.168.0.11:3306/fahmi?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";

    public static void main(String[] args) {
        Connection conn = null;
        
        
        
        try{
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            conn = DriverManager.getConnection(CONN_STRING,USERNAME,PASSWORD);
            System.out.println("Connected");
        }
        catch (SQLException | ClassNotFoundException | IllegalAccessException | InstantiationException e){
            e.printStackTrace();
        }
    }
    
}
