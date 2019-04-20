package com.wyy.mofang.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import java.io.Serializable;
import java.util.Date;
import java.util.List;


@Data
public class User implements Serializable {

    private static final long serialVersionUID = 735123551681430207L;

    private Integer userId;

    private String userName;

    private String userPass;

    private boolean userSex;


    private List<Course> courseList;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date userTime;


}
