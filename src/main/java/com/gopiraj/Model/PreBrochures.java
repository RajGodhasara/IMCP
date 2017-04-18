package com.gopiraj.Model;
// Generated Sep 19, 2016 6:34:26 PM by Hibernate Tools 3.6.0

import java.util.HashSet;
import java.util.Set;

/**
 * PreBrochures generated by hbm2java
 */
public class PreBrochures implements java.io.Serializable {

    private Integer preBrochuresId;
    private Person person;
    private String title;
    private byte[] upload;
    private Set sentMails = new HashSet(0);

    public PreBrochures() {
    }

    public PreBrochures(Person organizationAdmin, String title, byte[] upload) {
        this.person = organizationAdmin;
        this.title = title;
        this.upload = upload;
    }

    public PreBrochures(Person organizationAdmin, String title, byte[] upload, Set sentMails) {
        this.person = organizationAdmin;
        this.title = title;
        this.upload = upload;
        this.sentMails = sentMails;
    }

    public Integer getPreBrochuresId() {
        return this.preBrochuresId;
    }

    public void setPreBrochuresId(Integer preBrochuresId) {
        this.preBrochuresId = preBrochuresId;
    }

    public Person getPerson() {
        return person;
    }

    public void setPerson(Person person) {
        this.person = person;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public byte[] getUpload() {
        return this.upload;
    }

    public void setUpload(byte[] upload) {
        this.upload = upload;
    }

    public Set getSentMails() {
        return this.sentMails;
    }

    public void setSentMails(Set sentMails) {
        this.sentMails = sentMails;
    }

}
