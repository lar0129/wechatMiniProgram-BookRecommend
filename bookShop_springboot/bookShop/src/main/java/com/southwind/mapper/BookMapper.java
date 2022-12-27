package com.southwind.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.southwind.entity.Book;
import com.southwind.entity.Comment;
import org.apache.ibatis.annotations.Update;

public interface BookMapper extends BaseMapper<Book> {
    @Update("TRUNCATE TABLE comment")
    void truncate();
}
