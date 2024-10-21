package com.example.spring.controller;

import com.example.spring.mapper.Mapper09;
import com.example.spring.service.Service01;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("main39")
public class Controller39 {
    private final Service01 service01;
//    private final Mapper09 mapper09;

    @GetMapping("sub1")
    public void method1(Integer money) {
        service01.trnasferMoney1(money);
        service01.trnasferMoney1(money);
    }

    @GetMapping("sub2")
    public void method2(Integer money) {
        service01.trnasferMoney2(money); // runtime exception
    }

    @GetMapping("sub3")
    public void method3(Integer money) throws ClassNotFoundException {
        service01.trnasferMoney3(money); // check exception
    }

    @GetMapping("sub4")
    public void method4(Integer money) {
        service01.trnasferMoney4(money);
    }
}

