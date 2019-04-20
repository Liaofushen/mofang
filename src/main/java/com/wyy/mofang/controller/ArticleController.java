package com.wyy.mofang.controller;

import com.wyy.mofang.common.PicTool;
import com.wyy.mofang.dao.ArticleMapper;
import com.wyy.mofang.dao.CommentMapper;
import com.wyy.mofang.dao.UserMapper;
import com.wyy.mofang.entity.Article;
import com.wyy.mofang.entity.Comment;
import com.wyy.mofang.entity.User;
import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/article")
public class ArticleController {
    @Autowired
    private ArticleMapper articleMapper;
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private CommentMapper commentMapper;
    @Autowired
    private HttpSession session;

    @GetMapping("/category")
    public String getAll(ModelMap modelMap) {
        List<Article> articleCategory = articleMapper.getAllArticle();
        for (Article a : articleCategory) {
            a.setUser(userMapper.getUserByUserId(a.getUser().getUserId()));
        }
        modelMap.addAttribute("articleCategory", articleCategory);
        return "article-category";
    }

    @GetMapping("/{articleId}")
    public String getOne(@PathVariable("articleId") Integer articleId, ModelMap modelMap) {
        Article article = articleMapper.getArticleByArticleId(articleId);

        article.setUser(userMapper.getUserByUserId(article.getUser().getUserId()));

        List<Comment> commentList = commentMapper.getAllCommentByArticleId(articleId);
        for (Comment c : commentList) {
            c.setUser(userMapper.getUserByUserId(c.getUser().getUserId()));
        }
        article.setCommentList(commentList);

        modelMap.addAttribute("article", article);
        return "article";
    }

    @PostMapping("/new")
    public String postAddOne(Article article,
                             ModelMap modelMap,
                             @RequestParam(value = "img", required = false) List<MultipartFile> multipartFiles) {


        if (session.getAttribute("user") == null) {
            session.setAttribute("back", "/article/new");
            return "redirect:/user/login";
        }

        User user = (User) session.getAttribute("user");

        article.setUser(user);
        article.setArticleId(articleMapper.getMaxId());

        String imgs = "";
        if (multipartFiles != null) {
            for (MultipartFile file : multipartFiles) {
                imgs = imgs + PicTool.save(file) + "\n";
            }
        }
        System.out.println(imgs);

        article.setArticleImg(imgs);

        try {
            articleMapper.addArticle(article);
        } catch (Exception ex) {
            modelMap.addAttribute("error", ex.getMessage());
            return "/error";

        }
        return "redirect:/article/" + article.getArticleId();
    }

    @GetMapping("/new")
    public String getAddOne() {
        return "article-new";
    }


    @PostMapping("/comment")
    public String addComment(Comment comment, ModelMap modelMap, HttpServletRequest request) {
        String articleId = request.getParameter("articleId");
        Article article = new Article();
        article.setArticleId(Integer.parseInt(articleId));
        comment.setArticle(article);

        if (session.getAttribute("user") == null) {
            session.setAttribute("back", "/article/" + articleId);
            return "redirect:/user/login";
        }

        User user = (User) session.getAttribute("user");
        comment.setUser(user);

        try {
            commentMapper.addComment(comment);

        } catch (Exception ex) {
            modelMap.addAttribute("error", ex.getMessage());
            return "/error";
        }

        return "redirect:/article/" + comment.getArticle().getArticleId();
    }


}
