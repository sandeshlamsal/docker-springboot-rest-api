package com.san.dockerspringbootrestapi.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    // #curl localhost:8080/test  will call the /test , GET method
    @RequestMapping("/test")
    public void test(){
    System.out.println("Test URL called using rest api"); //print in screen
    }

    @RequestMapping("/test1")
    public String test1(){
        return "Test is Called"; //printed in web browser
    }

}
