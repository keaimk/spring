package com.example.spring.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface Mapper02 {

    @Select("""
            SELECT SupplierName
            FROM Suppliers
            WHERE SupplierId = 1
            """)
    String selectSupplierName();
}