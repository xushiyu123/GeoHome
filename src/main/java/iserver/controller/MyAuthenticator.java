package iserver.controller;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

/**
 * @program: GeoServer
 * @description:
 * @author: XUSHIYU
 * @create: 2019-10-11 14:19
 */
public class MyAuthenticator extends Authenticator{
    String userName=null;
    String password=null;

    public MyAuthenticator(){
    }
    public MyAuthenticator(String username, String password) {
        this.userName = username;
        this.password = password;
    }
    protected PasswordAuthentication getPasswordAuthentication(){
        return new PasswordAuthentication(userName, password);
    }
}
