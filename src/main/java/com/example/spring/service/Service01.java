package com.example.spring.service;

import com.example.spring.mapper.Mapper09;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
@RequiredArgsConstructor
public class Service01 {
    private final Mapper09 mapper09;

    public void trnasferMoney1(Integer money) {
        mapper09.updateMoney1(money);
        mapper09.updateMoney2(money);
    }

    public void trnasferMoney2(Integer money) {
        mapper09.updateMoney1(money);
        int a = 0;
        int b = 5;
        mapper09.updateMoney2(money);
    }

    public void trnasferMoney3(Integer money) throws ClassNotFoundException {
        mapper09.updateMoney1(money);
        Class.forName("j.l.String");
        mapper09.updateMoney2(money);
    }

    public void trnasferMoney4(Integer money) {
        mapper09.updateMoney1(money);
        try {
            Class.forName("j.l.String");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        mapper09.updateMoney2(money);
    }
}
