package com.springMVC.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by lenovo on 2018/2/23.
 */
@Controller
public class app {
    @RequestMapping("/orderquery")
    public String request() {
        return "orderquery";
    }
}
