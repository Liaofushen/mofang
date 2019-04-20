package com.wyy.mofang.dao;

import com.wyy.mofang.entity.Course;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface CourseMapper {
    List<Course> getAllCourse();

    Course getCourseByCourseId(@Param("courseId") Integer courseId);

}
