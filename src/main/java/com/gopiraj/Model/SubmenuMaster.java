/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.Model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 *
 * @author GOPIRAJ
 */
public class SubmenuMaster implements Serializable {

    private Integer subMenuMasterId;
    private String subPageName;
    private MenuMaster menuMaster;
    private String subMenuName;

    public SubmenuMaster() {
    }

    public SubmenuMaster(Integer subMenuMasterId, String subPageName, MenuMaster menuMaster, String subMenuName) {
        this.subMenuMasterId = subMenuMasterId;
        this.subPageName = subPageName;
        this.menuMaster = menuMaster;
        this.subMenuName = subMenuName;
    }

    public Integer getSubMenuMasterId() {
        return subMenuMasterId;
    }

    public void setSubMenuMasterId(Integer subMenuMasterId) {
        this.subMenuMasterId = subMenuMasterId;
    }

    public String getSubPageName() {
        return subPageName;
    }

    public void setSubPageName(String subPageName) {
        this.subPageName = subPageName;
    }

    public MenuMaster getMenuMaster() {
        return menuMaster;
    }

    public void setMenuMaster(MenuMaster menuMaster) {
        this.menuMaster = menuMaster;
    }

    public String getSubMenuName() {
        return subMenuName;
    }

    public void setSubMenuName(String subMenuName) {
        this.subMenuName = subMenuName;
    }

}
