package com.wyy.mofang.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
public class Comment implements Serializable {
    private static final long serialVersionUID = -3963882696205537295L;

    private Integer commentId;
    private String commentContent;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date commentTime;

    private User user;

    private Article article;

}
