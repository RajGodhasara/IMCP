package com.gopiraj.Model;
// Generated Sep 19, 2016 6:34:26 PM by Hibernate Tools 3.6.0



/**
 * PersonContactno generated by hbm2java
 */
public class PersonContactno  implements java.io.Serializable {


     private Integer peronContactnoId;
     private Person person;
     private Long contactNo;

    public PersonContactno() {
    }

    public PersonContactno(Person person, Long contactNo) {
       this.person = person;
       this.contactNo = contactNo;
    }
   
    public Integer getPeronContactnoId() {
        return this.peronContactnoId;
    }
    
    public void setPeronContactnoId(Integer peronContactnoId) {
        this.peronContactnoId = peronContactnoId;
    }
    public Person getPerson() {
        return this.person;
    }
    
    public void setPerson(Person person) {
        this.person = person;
    }
    public Long getContactNo() {
        return this.contactNo;
    }
    
    public void setContactNo(Long contactNo) {
        this.contactNo = contactNo;
    }




}


