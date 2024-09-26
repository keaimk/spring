package com.example.spring.dto.c12;

import lombok.Data;

// Getter, Setter, ToString, EqualsAndHashCode,
// RequiredArgsConstructor
@Data
public class Car {
    private String make;
    private String model;
    private int year;
}