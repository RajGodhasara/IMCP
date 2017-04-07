/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gopiraj.dispature;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.web.servlet.DispatcherServlet;

/**
 *
 * @author GOPIRAJ
 */
public class MyDispatureServlet extends DispatcherServlet {

    private static SessionFactory sf;

    static {
        System.out.println("Going to Check CFG File.");
        sf = new Configuration().configure().buildSessionFactory();
        System.out.println("Done Checking CFG file.");
    }

    public static SessionFactory getSessionFactory() {
        return sf;
    }
}
