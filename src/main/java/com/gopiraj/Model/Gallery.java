package com.gopiraj.Model;
// Generated Mar 26, 2017 11:06:23 AM by Hibernate Tools 3.6.0

/**
 * Gallery generated by hbm2java
 */
public class Gallery implements java.io.Serializable {

    private Integer galleryId;
    private byte[] image;

    public Gallery() {
    }

    public Gallery(byte[] image) {
        this.image = image;
    }

    public Integer getGalleryId() {
        return this.galleryId;
    }

    public void setGalleryId(Integer galleryId) {
        this.galleryId = galleryId;
    }

    public byte[] getImage() {
        return this.image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

}
