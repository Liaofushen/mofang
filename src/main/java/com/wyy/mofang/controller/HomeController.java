package com.wyy.mofang.controller;

import com.wyy.mofang.dao.ArticleMapper;
import com.wyy.mofang.dao.UserMapper;
import com.wyy.mofang.entity.Article;
import com.wyy.mofang.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class HomeController {

    @GetMapping({"/home", "/index"})
    public String index() {
        return "index";
    }

    @GetMapping({"/info"})
    public String info() {
        return "info";
    }

    @GetMapping({"/info2"})
    public String info2() {
        return "info2";
    }

    @GetMapping({"/about"})
    public String about() {
        return "about";
    }



    @GetMapping("/admin")
    public String admin(ModelMap modelMap) {
        List<Article> articleCategory = articleMapper.getAllArticle();
        for (Article a : articleCategory) {
            a.setUser(userMapper.getUserByUserId(a.getUser().getUserId()));
        }
        modelMap.addAttribute("articleCategory", articleCategory);
        return "admin";
    }

    @Autowired
    private ArticleMapper articleMapper;

    @Autowired
    private UserMapper userMapper;

}
