package com.wyy.mofang.dao;

import com.wyy.mofang.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface UserMapper {
    List<User> getAllUser();
    User getUserByUserName(@Param("userName") String userName);
    User getUserByUserId(@Param("userId") Integer userId);
    void addUser(User user);
}
