package com.gopiraj.Model;
// Generated Sep 19, 2016 6:34:26 PM by Hibernate Tools 3.6.0

import java.util.Date;

/**
 * SentSms generated by hbm2java
 */
public class SentSms implements java.io.Serializable {

    private Integer sentSmsId;
    private Enquiry enquiry;
    private Person person;
    private PreText preText;
    private Date creationTime;

    public SentSms() {
    }

    public SentSms(Enquiry enquiry, Person person, PreText preText, Date creationTime) {
        this.enquiry = enquiry;
        this.person = person;
        this.preText = preText;
        this.creationTime = creationTime;
    }

    public Integer getSentSmsId() {
        return this.sentSmsId;
    }

    public void setSentSmsId(Integer sentSmsId) {
        this.sentSmsId = sentSmsId;
    }

    public Enquiry getEnquiry() {
        return this.enquiry;
    }

    public void setEnquiry(Enquiry enquiry) {
        this.enquiry = enquiry;
    }

    public Person getPerson() {
        return this.person;
    }

    public void setPerson(Person person) {
        this.person = person;
    }

    public PreText getPreText() {
        return this.preText;
    }

    public void setPreText(PreText preText) {
        this.preText = preText;
    }

    public Date getCreationTime() {
        return this.creationTime;
    }

    public void setCreationTime(Date creationTime) {
        this.creationTime = creationTime;
    }

}
