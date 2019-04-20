package com.wyy.mofang.entity;

import lombok.Data;

import java.io.Serializable;

@Data
public class UserCourse implements Serializable {
    private static final long serialVersionUID = 4668203492840505398L;
    private Integer id;
    private Integer userId;
    private Integer courseId;
}
