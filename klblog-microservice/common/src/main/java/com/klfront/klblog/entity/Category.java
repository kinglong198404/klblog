package com.klfront.klblog.entity;

import java.io.Serializable;
import java.util.List;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.experimental.Accessors;

@Data
@Accessors(chain = true)
@ApiModel(value="com.klfront.klblog.entity.Category",description = "文章类别")
public class Category implements Serializable {
    @ApiModelProperty(value="主键Id")
    private String id;
    @ApiModelProperty(value="父类别Id")
    private String pid;
    @ApiModelProperty(value="父类别名",required = true)
    private String parentName;
    @ApiModelProperty(value="类别名称",required = true)
    private String name;
    @ApiModelProperty(value="类别图标")
    private String icon;
    @ApiModelProperty(value="类别备注")
    private String remark;
    @ApiModelProperty(value="子类别")
    private List<Category> sublist = null;

    private static final long serialVersionUID = 1L;
}