/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Business;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author GOPIRAJ
 */
public class GetDBData {
    public ResultSet getAllDataFromTable(String query)
    {
             final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
        final String DB_URL = "jdbc:mysql://localhost:3306/projecttest";

        //  Database credentials
        final String USER = "root";
        final String PASS = "root";
        ResultSet rs=null;
        Connection conn = null;
        Statement stmt = null;
        try{
            //STEP 2: Register JDBC driver
            Class.forName(JDBC_DRIVER);

            //STEP 3: Open a connection
            System.out.println("Connecting to a selected database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            System.out.println("Connected database successfully...");
      
            //STEP 4: Execute a query
            stmt = conn.createStatement();
            
            
            rs = stmt.executeQuery(query);
          
            
	        // System.out.println("Created table in given database...");
                }catch(SQLException se){
                //Handle errors for JDBC
                se.printStackTrace();
                }catch(Exception e){
                    //Handle errors for Class.forName
                    e.printStackTrace();
                }
            return rs;
    }
}
