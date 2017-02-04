/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gopiraj.Model;

/**
 *
 * @author GOPIRAJ
 */
public class Error {
    // EmployeeMain -> Select All
    // EmployeeMain -> Update
    // Course -> Update
    //TaskMain -> update
    //SentSMS -> Update      only pretextmain is working for update
    
    
    
    // 
    
    
    //SOLUTIONS: in upadte when we first select the obj from database at that time session is already started 
    //           so after fatching data, there is no need of open session again in UPDATE method.
    //           --> so the sol is make session object globally and do not open session in update method.
    
    
    
    /**
     * REMAINING TASK: REPORT, ORG_ADMIN, ENQUIRY --> CONVERT INTO BUSINESS CLASS
     */
}
