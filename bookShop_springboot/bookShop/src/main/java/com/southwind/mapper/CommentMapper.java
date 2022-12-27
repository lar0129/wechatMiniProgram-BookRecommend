package com.southwind.mapper;

import com.southwind.entity.Comment;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Update;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author admin
 * @since 2022-11-31
 */
public interface CommentMapper extends BaseMapper<Comment> {
    @Update("TRUNCATE TABLE comment")
    void truncate();
}
