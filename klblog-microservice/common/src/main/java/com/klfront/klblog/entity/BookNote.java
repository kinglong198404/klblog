package com.klfront.klblog.entity;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@Data
public class BookNote implements Serializable {
    private Long id;

    private String title;

    private String keyword;

    /**
     * Html内容
     */
    private String content;

    /**
     * 文本内容
     */
    private String text;

    private String categoryId;

    private String author;

    private Integer pageView;

    private Integer sort;

    private Date createTime;

    private Date modifiedTime;

    private static final long serialVersionUID = 1L;
}