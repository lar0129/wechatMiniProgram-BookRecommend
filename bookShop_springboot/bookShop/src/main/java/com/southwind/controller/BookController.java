package com.southwind.controller;

import com.southwind.entity.Book;
import com.southwind.entity.Comment;
import com.southwind.mapper.BookMapper;
import com.southwind.mapper.CommentMapper;
import com.southwind.service.BookService;
import com.southwind.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("//book")
public class BookController {

    @Autowired
    private BookService bookService;
    @Autowired
    private BookMapper bookMapper;

    //增删改查
    @GetMapping("/list")
    public List<Book> list() {
        return this.bookService.list();
    }

    @DeleteMapping("/delete/{id}")
    public boolean delete(@PathVariable("id") Integer id) {
        return this.bookService.removeById(id);
    }

    @GetMapping("/find/{id}")
    public Book find(@PathVariable("id") Integer id) {
        return this.bookService.getById(id);
    }

    @PutMapping("/update")
    public boolean update(@RequestBody Book book) {
        return this.bookService.updateById(book);
    }

    @PostMapping("/add")
    public boolean add(@RequestBody Book book) {
        return this.bookService.save(book);
    }

    //删除全部
    @DeleteMapping("/deleteAll")
    public void deleteAll() {
        this.bookMapper.truncate();
    }
}
