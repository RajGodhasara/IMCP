package com.gopiraj.Model;
// Generated Sep 19, 2016 6:34:26 PM by Hibernate Tools 3.6.0

/**
 * EnquiryContactno generated by hbm2java
 */
public class EnquiryContactno implements java.io.Serializable {

    private Integer enquiryConId;
    private Enquiry enquiry;
    private long contactNumber;

    public EnquiryContactno() {
    }

    public EnquiryContactno(Enquiry enquiry, long contactNumber) {
        this.enquiry = enquiry;
        this.contactNumber = contactNumber;
    }

    public Integer getEnquiryConId() {
        return this.enquiryConId;
    }

    public void setEnquiryConId(Integer enquiryConId) {
        this.enquiryConId = enquiryConId;
    }

    public Enquiry getEnquiry() {
        return this.enquiry;
    }

    public void setEnquiry(Enquiry enquiry) {
        this.enquiry = enquiry;
    }

    public long getContactNumber() {
        return this.contactNumber;
    }

    public void setContactNumber(long contactNumber) {
        this.contactNumber = contactNumber;
    }

}
