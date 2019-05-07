package com.wyy.mofang.entity;

import lombok.Data;

import java.io.Serializable;


@Data
public class Course implements Serializable {
    private static final long serialVersionUID = -7382660017570015224L;

    private Integer courseId;
    private String courseTitle;
    private String courseContent;
    private String courseContentNaive;
    private String courseImg;
    private String courseImgNaive;

    private boolean learn;

    public String[] getCourseContent() {
        return courseContent.split("\\n");
    }

    public String[] getCourseImg() {
        return courseImg.split("\\n");
    }

    public void copy() {
        courseContentNaive = courseContent;
        courseImgNaive = courseImg;
    }
}
