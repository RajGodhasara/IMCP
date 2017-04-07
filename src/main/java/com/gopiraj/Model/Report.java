package com.gopiraj.Model;
// Generated Sep 19, 2016 6:34:26 PM by Hibernate Tools 3.6.0

import java.util.Date;

/**
 * Report generated by hbm2java
 */
public class Report implements java.io.Serializable {

    private Integer reportId;
    private OrganizationAdmin organizationAdmin;
    private String title;
    private byte[] flies;
    private Date creationTime;

    public Report() {
    }

    public Report(OrganizationAdmin organizationAdmin, String title, byte[] flies, Date creationTime) {
        this.organizationAdmin = organizationAdmin;
        this.title = title;
        this.flies = flies;
        this.creationTime = creationTime;
    }

    public Integer getReportId() {
        return this.reportId;
    }

    public void setReportId(Integer reportId) {
        this.reportId = reportId;
    }

    public OrganizationAdmin getOrganizationAdmin() {
        return this.organizationAdmin;
    }

    public void setOrganizationAdmin(OrganizationAdmin organizationAdmin) {
        this.organizationAdmin = organizationAdmin;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public byte[] getFlies() {
        return this.flies;
    }

    public void setFlies(byte[] flies) {
        this.flies = flies;
    }

    public Date getCreationTime() {
        return this.creationTime;
    }

    public void setCreationTime(Date creationTime) {
        this.creationTime = creationTime;
    }

}
