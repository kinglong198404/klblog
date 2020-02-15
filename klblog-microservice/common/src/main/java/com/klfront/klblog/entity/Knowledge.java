package com.klfront.klblog.entity;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@ApiModel(value = "com.klfront.klblog.entity.Knowledge")
@Data
public class Knowledge implements Serializable {
    /**
     * 主键Id
     */
    @ApiModelProperty(value = "主键Id")
    private Long id;

    /**
     * 用户Id
     */
    @ApiModelProperty(value = "用户Id")
    private Integer userId;

    /**
     * 标题
     */
    @ApiModelProperty(value = "标题")
    private String title;

    /**
     * 关键字
     */
    @ApiModelProperty(value = "关键字")
    private String keyword;

    /**
     * Html内容
     */
    @ApiModelProperty(value = "Html内容")
    private String content;

    /**
     * 类别Id
     */
    @ApiModelProperty(value = "类别Id")
    private String categoryId;

    /**
     * 作者的用户名
     */
    @ApiModelProperty(value = "作者的用户名")
    private String author;

    /**
     * 浏览量
     */
    @ApiModelProperty(value = "浏览量")
    private Integer pageView;

    /**
     * 排序值
     */
    @ApiModelProperty(value = "排序值")
    private Integer sort;

    /**
     * 创建时间
     */
    @ApiModelProperty(value = "创建时间")
    private Date createTime;

    /**
     * 修改时间
     */
    @ApiModelProperty(value = "修改时间")
    private Date modifiedTime;

    private static final long serialVersionUID = 1L;
}