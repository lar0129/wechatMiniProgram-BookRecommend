package com.southwind.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.southwind.entity.Book;
import com.southwind.entity.Comment;
import com.southwind.mapper.BookMapper;
import com.southwind.mapper.CommentMapper;
import com.southwind.service.BookService;
import com.southwind.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookServiceImpl extends ServiceImpl<BookMapper, Book> implements BookService {

    @Autowired
    private BookMapper bookMapper;
}