/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Model;

import java.util.Date;

/**
 *
 * @author GOPIRAJ
 */
public class ActivityComment {

    private Integer activityCommentId;
    private String comment;
    private Activity activity;
    private Person person;
    private Date creationTime;

    public ActivityComment() {

    }

    public ActivityComment(Integer activityCommentId, String comment, Activity activity, Person person, Date creationTime) {
        this.activityCommentId = activityCommentId;
        this.comment = comment;
        this.activity = activity;
        this.person = person;
        this.creationTime = creationTime;
    }

    public Integer getActivityCommentId() {
        return activityCommentId;
    }

    public void setActivityCommentId(Integer activityCommentId) {
        this.activityCommentId = activityCommentId;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Activity getActivity() {
        return activity;
    }

    public void setActivity(Activity activity) {
        this.activity = activity;
    }

    public Person getPerson() {
        return person;
    }

    public void setPerson(Person person) {
        this.person = person;
    }

    public Date getCreationTime() {
        return creationTime;
    }

    public void setCreationTime(Date creationTime) {
        this.creationTime = creationTime;
    }

}
