package com.example.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("main25")
public class Controller25 {
    @Autowired
    DataSource dataSource;

    // /main25/sub1?country=uk
    @GetMapping("sub1")
    public void sub1(Model model, String country) {
        String sql = STR."""
                SELECT CustomerName
                FROM Customers
                WHERE Country = '\{country}'
                """;

        List<String> list = new ArrayList<>();
        try {
            Connection conn = dataSource.getConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            try (conn; stmt; rs) {
                while (rs.next()) {
                    String name = rs.getString("CustomerName");
                    list.add(name);
                }
                model.addAttribute("nameList", list);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // 특정 가격인 상품명 조회
    // 메소드,jsp

    // /main25/sub2?price=20.00
    @GetMapping("sub2")
    public void sub2(Model model, String price) {
        String sql = STR."""
                SELECT ProductName
                FROM Products
                WHERE Price = '\{price}'
                """;

        List<String> list = new ArrayList<>();
        try {
            Connection connection = dataSource.getConnection();
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            try (connection; stmt; rs) {
                while (rs.next()) {
                    list.add(rs.getString("ProductName"));
                }

                model.addAttribute("nameList", list);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}