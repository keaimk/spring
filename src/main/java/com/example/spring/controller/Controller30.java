package com.example.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@Controller
@RequestMapping("main30")
public class Controller30 {
    @Autowired
    DataSource dataSource;

    @GetMapping("sub1")
    public String sub1() {
        int t = 500;
        String sql = """
                UPDATE db1.my_table58
                SET money = money - ?
                WHERE name = 'kim'
                """;
        String sql2 = """
                UPDATE db1.my_table58
                SET money = money + ?
                WHERE name = 'lee'
                """;
        try {
            Connection conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setInt(1, t);
            ps.executeUpdate();

            PreparedStatement pss = conn.prepareStatement(sql2);
            pss.setInt(1, t);
            pss.executeUpdate();

            ps.close();
            pss.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @GetMapping("sub2")
    public String sub2() {
        int t = 500;
        String sql = """
                UPDATE db1.my_table58
                SET money = money - ?
                WHERE name = 'kim'
                """;
        String sql2 = """
                UPDATE db1.my_table58
                SET money = money + ?
                WHERE name = 'lee'
                """;
        try {
            Connection conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setInt(1, t);
            ps.executeUpdate();

            int a = 0;
            int b = 5 / a; // Exception

            PreparedStatement pss = conn.prepareStatement(sql2);
            pss.setInt(1, t);
            pss.executeUpdate();

            ps.close();
            pss.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @GetMapping("sub3")
    public String sub3() {
        int t = 500;
        String sql = """
                UPDATE db1.my_table58
                SET money = money - ?
                WHERE name = 'kim'
                """;
        String sql2 = """
                UPDATE db1.my_table58
                SET money = money + ?
                WHERE name = 'lee'
                """;

        Connection conn = null;
        try {
            conn = dataSource.getConnection();
            conn.setAutoCommit(false);
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, t);
            ps.executeUpdate();

            int a = 0;
            int b = 5 / a; // Exception

            PreparedStatement pss = conn.prepareStatement(sql2);
            pss.setInt(1, t);
            pss.executeUpdate();

            conn.commit();

            pss.close();
            ps.close();

        } catch (Exception e) {
            try {
                conn.rollback();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            e.printStackTrace();
        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return null;
    }

    @GetMapping("sub4")
    public String sub4() {
        int t = 500;
        String sql = """
                UPDATE db1.my_table58
                SET money = money - ?
                WHERE name = 'kim'
                """;
        String sql2 = """
                UPDATE db1.my_table58
                SET money = money + ?
                WHERE name = 'lee'
                """;

        Connection conn = null;
        try {
            conn = dataSource.getConnection();
            conn.setAutoCommit(false);
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, t);
            ps.executeUpdate();

//            int a = 0;
//            int b = 5 / a; // Exception

            PreparedStatement pss = conn.prepareStatement(sql2);
            pss.setInt(1, t);
            pss.executeUpdate();

            conn.commit();

            pss.close();
            ps.close();

        } catch (Exception e) {
            try {
                conn.rollback();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            e.printStackTrace();
        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return null;
    }

    @GetMapping("sub5")
    public String sub5() {
        // 1. kim 계좌에서 1000 차감
        // 2. lee 계좌에서 1000 증액

        // 단. 모두 성공(commit), 모두 실패(rollback)
        int t = 1000;
        String sql = """
                UPDATE db1.my_table58
                SET money = money - ?
                WHERE name = 'kim'
                """;
        String sql2 = """
                UPDATE db1.my_table58
                SET money = money + ?
                WHERE name = 'lee'
                """;

        Connection conn = null;
        try {
            conn = dataSource.getConnection();
            conn.setAutoCommit(false);
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, t);
            ps.executeUpdate();

//            int a = 0;
//            int b = 5 / a;

            PreparedStatement pss = conn.prepareStatement(sql2);
            pss.setInt(1, t);
            pss.executeUpdate();

            conn.commit();


            ps.close();
            pss.close();
        } catch (Exception e) {
            try {
                conn.rollback();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            e.printStackTrace();
        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return null;
    }
}