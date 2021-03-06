package com.gopiraj.Model;
// Generated Sep 19, 2016 6:34:26 PM by Hibernate Tools 3.6.0

import java.util.Date;
import java.util.Set;

/**
 * Task generated by hbm2java
 */
public class Task implements java.io.Serializable {

    private Integer taskId;
    private Employee employee;
    private OrganizationAdmin organizationAdmin;
    private String title;
    private String description;
    private Date creationTime;

    public Task() {
    }

    public Task(Integer taskId, Employee employee, OrganizationAdmin organizationAdmin, String title, String description, Date creationTime) {
        this.taskId = taskId;
        this.employee = employee;
        this.organizationAdmin = organizationAdmin;
        this.title = title;
        this.description = description;
        this.creationTime = creationTime;
    }

    public Integer getTaskId() {
        return taskId;
    }

    public void setTaskId(Integer taskId) {
        this.taskId = taskId;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public OrganizationAdmin getOrganizationAdmin() {
        return organizationAdmin;
    }

    public void setOrganizationAdmin(OrganizationAdmin organizationAdmin) {
        this.organizationAdmin = organizationAdmin;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getCreationTime() {
        return creationTime;
    }

    public void setCreationTime(Date creationTime) {
        this.creationTime = creationTime;
    }

}
