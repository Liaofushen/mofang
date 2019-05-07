package com.wyy.mofang.dao;

import com.wyy.mofang.entity.Article;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface ArticleMapper {
    List<Article> getAllArticle();
    Article getArticleByArticleId(@Param("articleId") Integer articleId);
    Integer getMaxId();

    void addArticle(Article article);
    void deleteArticle(@Param("articleId") Integer articleId);
}
