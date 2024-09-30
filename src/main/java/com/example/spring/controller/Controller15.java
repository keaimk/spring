package com.example.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main15")
public class Controller15 {
    @RequestMapping("sub1")
    public void sub1() {
    }

    @RequestMapping("sub2")
    public void sub2() {
    }

    @RequestMapping("sub4")
    public void sub4() {
    }

    @RequestMapping("sub5")
    public void sub5() {
    }

    @RequestMapping("sub7")
    public void sub7() {
    }

    @RequestMapping("sub9")
    public void sub9(Model model) {
        model.addAttribute("some1", "hello import tag");
    }

    @RequestMapping("sub11")
    public void sub11() {
    }
    
}
