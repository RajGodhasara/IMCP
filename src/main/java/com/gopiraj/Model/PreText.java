package com.gopiraj.Model;
// Generated Sep 19, 2016 6:34:26 PM by Hibernate Tools 3.6.0

import java.util.HashSet;
import java.util.Set;
 //

/**
 * PreText generated by hbm2java
 */
public class PreText implements java.io.Serializable {

    private Integer preTextId;
    private String title;
    private String message;
    private String forWhat;
     //private Set sentSmses = new HashSet(0);
    //private Set sentMails = new HashSet(0);

    public Integer getPreTextId() {
        return preTextId;
    }

    public void setPreTextId(Integer preTextId) {
        this.preTextId = preTextId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getForWhat() {
        return forWhat;
    }

    public void setForWhat(String forWhat) {
        this.forWhat = forWhat;
    }

}
