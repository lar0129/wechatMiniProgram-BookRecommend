package com.southwind.service.impl;

import com.southwind.entity.Comment;
import com.southwind.mapper.CommentMapper;
import com.southwind.service.CommentService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author admin
 * @since 2022-11-31
 */
@Service
public class CommentServiceImpl extends ServiceImpl<CommentMapper, Comment> implements CommentService {

    @Autowired
    private CommentMapper commentMapper;
}
