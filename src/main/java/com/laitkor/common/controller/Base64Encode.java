package com.laitkor.common.controller;
import java.util.Arrays;

import org.apache.http.auth.Credentials;
import org.springframework.security.core.codec.Base64;

public class Base64Encode {
    public static void main(String[] args) {
        String hello = "Hello World";

        byte[] encoded = Base64.encode(hello.getBytes());

        Credentials dsf ;
        System.out.println(Arrays.toString(encoded));

        String encodedString = new String(encoded);
        System.out.println(hello + " = " + encodedString);
        
        
        encoded=     Base64.decode(encoded);
        
        System.out.println(hello + " = " + new String(encoded));
        
    }
}