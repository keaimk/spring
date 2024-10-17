package com.example.spring.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface Mapper03 {
    @Select("""
            SELECT Description
            FROM Categories
            WHERE CategotyId = 1
            """)
    String getDescription();
}