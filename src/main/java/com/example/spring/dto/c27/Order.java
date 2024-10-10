package com.example.spring.dto.c27;

import lombok.Data;

@Data
public class Order {
    private String id;
    private String customerID;
    private String employeeID;
    private String orderDate;
    private String shipperID;
}