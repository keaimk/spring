package com.example.spring.controller;

import com.example.spring.dto.c12.Book;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("main12")
public class Controller12 {
    @RequestMapping("sub1")
    public String sub1(Model model) {
        Book book = new Book();
        book.setAuthor("linus");
        book.setPrice(500);
        book.setTitle("git");

        Book book2 = new Book("java", "shin", 600);

        model.addAttribute("books", List.of(book, book2));
        return null;
    }
}