/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Project;

import java.sql.*;
/**
 *
 * @author Arif
 */
public class ConnectionProvider {
    
    public static Connection getCon()
    {
    
        try{
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection con = DriverManager.getConnection("jdbc:Mysql://localhost:3306/project","root","");
        return con;
        
        }catch(Exception ex){
            return null;
        }
    }
    
}
