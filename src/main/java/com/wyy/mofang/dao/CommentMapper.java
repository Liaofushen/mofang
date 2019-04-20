package com.wyy.mofang.dao;

import com.wyy.mofang.entity.Comment;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface CommentMapper {
    List<Comment> getAllCommentByArticleId(@Param("articleId") Integer articleId);
    void addComment(Comment comment);
}
