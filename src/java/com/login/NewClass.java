/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login;

/**
 *
 * @author ASHUTOSH
 */
public class NewClass {

    public static void main(String[] args) {
        loginDao dao = new loginDao();
        String user = "user";
        String pass = "user1";
        Boolean d = dao.check(user, pass);
        System.out.println(d);
    }
}
