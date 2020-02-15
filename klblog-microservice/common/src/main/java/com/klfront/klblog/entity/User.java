package com.klfront.klblog.entity;

import java.io.Serializable;
import lombok.Data;

@Data
public class User implements Serializable {
    private Integer id;

    private String username;

    private String nickname;

    /**
     * 头像
     */
    private String icon;

    private String password;

    private String email;

    private static final long serialVersionUID = 1L;
}