package com.klfront.klblog.entity;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@Data
public class Memo implements Serializable {
    private Integer id;

    /**
     * 用户id
     */
    private Integer userId;

    private String title;

    private String content;

    private Date createTime;

    private Date modifiedTime;

    private static final long serialVersionUID = 1L;
}