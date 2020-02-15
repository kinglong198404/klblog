package com.klfront.klblog.entity;

import java.io.Serializable;
import lombok.Data;

@Data
public class Book implements Serializable {
    private Long id;

    /**
     * 封面图片地址
     */
    private String cover;

    /**
     * 书名
     */
    private String name;

    /**
     * 原作者
     */
    private String originalAuthor;

    /**
     * 出版社，出版商
     */
    private String publisher;

    /**
     * 译者
     */
    private String translator;

    /**
     * 出版年月
     */
    private String publishedDate;

    private Integer pages;

    /**
     * 价格
     */
    private Double price;

    /**
     * 国际标准书号
     */
    private String isbn;

    private static final long serialVersionUID = 1L;
}