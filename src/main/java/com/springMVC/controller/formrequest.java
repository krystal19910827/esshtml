package com.springMVC.controller;

import com.springMVC.model.order;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Created by lenovo on 2018/2/23.
 */
@Controller
@RequestMapping("/orderquery")
public class formrequest {
    @RequestMapping("input")
    public ModelAndView query(@RequestParam("outorder") String outorder, @RequestParam("order4G") String order4G, @RequestParam("phonenum") String phonenum, @RequestParam("tnsselect") String tnsselect) {
        ModelAndView mav = new ModelAndView();
        mav.addObject("outorder", outorder);
        mav.addObject("order4G", order4G);
        System.out.println(outorder);
        return mav;
    }
    @RequestMapping("output")
    public ModelAndView output1(){
        System.out.println("±Ìµ•œ‘ æ");
        ModelAndView mav = new ModelAndView("input");
        return mav;
    }
}
