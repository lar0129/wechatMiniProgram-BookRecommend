package com.southwind.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.southwind.entity.Comment;
import com.southwind.mapper.CommentMapper;
import com.southwind.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author admin
 * @since 2022-11-31
 */
@RestController
@RequestMapping("//comment")
public class CommentController {

    @Autowired
    private CommentService commentService;
    @Autowired
    private CommentMapper commentMapper;

    //增删改查
    @GetMapping("/list")
    public List<Comment> list() {
        return this.commentService.list();
    }

    @DeleteMapping("/delete/{id}")
    public boolean delete(@PathVariable("id") Integer id) {
        return this.commentService.removeById(id);
    }

    @GetMapping("/find/{id}")
    public Comment find(@PathVariable("id") Integer id) {
        return this.commentService.getById(id);
    }

    @PutMapping("/update")
    public boolean update(@RequestBody Comment comment) {
        return this.commentService.updateById(comment);
    }

    @PostMapping("/add")
    public boolean add(@RequestBody Comment comment) {
        return this.commentService.save(comment);
    }

    //删除全部
    @DeleteMapping("/deleteAll")
    public void deleteAll() {
        this.commentMapper.truncate();
    }
}

