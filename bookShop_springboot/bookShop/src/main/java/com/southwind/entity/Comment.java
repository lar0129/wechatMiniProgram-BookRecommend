package com.southwind.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 
 * </p>
 *
 * @author admin
 * @since 2022-11-31
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class Comment implements Serializable {

    private static final long serialVersionUID=1L;

    @TableId(value = "id",type = IdType.AUTO)
    private Integer id;

    private String name;

    private Integer views;

    private Integer likes;

    private String avatar;

    private String sign;

    private String post;

}
