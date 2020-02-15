package com.klfront.klblog.entity;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@Data
public class BookReview implements Serializable {
    /**
     * 书名
     */
    private Long id;

    /**
     * 书名
     */
    private String title;

    /**
     * 书籍的版本列表，英文逗号分隔
     */
    private String versions;

    /**
     * 评论
     */
    private String review;

    /**
     * 推荐版本
     */
    private Integer recommend;

    /**
     * 该书评记录的作者
     */
    private String author;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 修改时间
     */
    private Date modifiedTime;

    private static final long serialVersionUID = 1L;
}