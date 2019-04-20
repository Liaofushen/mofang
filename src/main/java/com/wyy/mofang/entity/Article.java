package com.wyy.mofang.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
public class Article implements Serializable {
    private static final long serialVersionUID = 2612238630072673962L;

    private Integer articleId;

    private String articleTitle;
    private String articleKeyword;
    private String articleContent;
    private String articleContentList;
    private String articleImg;
    private String articleImgList;

    private User user;

    private List<Comment> commentList;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date articleTime;

    public String[] getArticleContentList() {

        return articleContent.split("\\n");
    }

    public String[] getArticleImgList() {
        return articleImg.split("\\n");
    }

}
