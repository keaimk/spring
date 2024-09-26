package com.example.spring.dto.c12;


import lombok.AllArgsConstructor; // 모든 필드를 받는 생성자
import lombok.NoArgsConstructor; // 아규먼트 없는 생성자
import lombok.RequiredArgsConstructor; // final 필드 받는 생성자

//@AllArgsConstructor
//@NoArgsConstructor
@RequiredArgsConstructor
public class Player {

    private final int age;
    private final String name;
    private Boolean married;
}
