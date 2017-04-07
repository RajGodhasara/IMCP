/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Model;

import java.io.Serializable;

/**
 *
 * @author GOPIRAJ
 */
public class SocialLinks implements Serializable {

    private Integer SocialLinkId;
    private String facebook;
    private String gmail;
    private String twitter;

    public SocialLinks() {
    }

    public SocialLinks(Integer SocialLinkId, String facebook, String gmail, String twitter) {
        this.SocialLinkId = SocialLinkId;
        this.facebook = facebook;
        this.gmail = gmail;
        this.twitter = twitter;
    }

    public Integer getSocialLinkId() {
        return SocialLinkId;
    }

    public void setSocialLinkId(Integer SocialLinkId) {
        this.SocialLinkId = SocialLinkId;
    }

    public String getFacebook() {
        return facebook;
    }

    public void setFacebook(String facebook) {
        this.facebook = facebook;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public String getTwitter() {
        return twitter;
    }

    public void setTwitter(String twitter) {
        this.twitter = twitter;
    }

}
