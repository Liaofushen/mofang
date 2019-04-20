package com.wyy.mofang.dao;

import com.wyy.mofang.entity.UserCourse;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface UserCourseMapper {
    List<Integer> getCourseIdByUserId(@Param("userId") Integer userId);

    void addStudy(UserCourse userCourse);
}
