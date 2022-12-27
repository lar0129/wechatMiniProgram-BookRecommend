package com.southwind.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

@Data
@EqualsAndHashCode(callSuper = false)
public class Book implements Serializable {

    private static final long serialVersionUID=1L;

    @TableId(value = "id",type = IdType.AUTO)
    private Integer id;

    private String name;

    private String type;

    private String details;

    private String img;

    private String author;

    private String brief;

    private String level = "";
}
