package com.wyy.mofang.controller;

import com.wyy.mofang.dao.CourseMapper;
import com.wyy.mofang.dao.UserCourseMapper;
import com.wyy.mofang.dao.UserMapper;
import com.wyy.mofang.entity.Course;
import com.wyy.mofang.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private UserCourseMapper userCourseMapper;
    @Autowired
    private HttpSession session;
    @Autowired
    private CourseMapper courseMapper;


    @GetMapping("/test")
    @ResponseBody()
    public User test() {
        return userMapper.getUserByUserName("aa");
    }

    @PostMapping("/login")
    public String login(User user, ModelMap modelMap) {
        session.removeAttribute("user");
        modelMap.remove("user");

        if (StringUtils.isEmpty(user.getUserName()) || StringUtils.isEmpty(user.getUserPass())) {
            modelMap.addAttribute("error", "用户名或密码不能为空");
            return "/error";
        }


        User userKey = userMapper.getUserByUserName(user.getUserName());
        if (userKey == null || !userKey.getUserPass().equals(user.getUserPass())) {
            modelMap.addAttribute("error", "用户名或密码错误");
            return "/error";
        } else {
            session.setAttribute("user", userKey);
            modelMap.addAttribute("user", userKey);

            if (session.getAttribute("back") != null)
                return "redirect:" + session.getAttribute("back").toString();
            else
                return "redirect:/index";
        }
    }

    @GetMapping("/login")
    public String login(HttpServletRequest request) {
        return "login";
    }

    @GetMapping("/logout")
    public String logout() {
        session.removeAttribute("user");
        return "redirect:/index";
    }

    @PostMapping("/register")
    public String register(@Valid User user, ModelMap modelMap) {
        session.removeAttribute("user");
        modelMap.remove("user");

        if (userMapper.getUserByUserName(user.getUserName()) != null) {
            modelMap.addAttribute("error", "账号已经存在");
            return "/error";
        }
        if (StringUtils.isEmpty(user.getUserName()) || StringUtils.isEmpty(user.getUserPass())) {
            modelMap.addAttribute("error", "用户名或密码不能为空");
            return "/error";
        }

        userMapper.addUser(user);
        session.setAttribute("user", user);

        return "redirect:/index";
    }

    @GetMapping("/register")
    public String register() {
        return "register";
    }

    @GetMapping("/info")
    public String info(ModelMap modelMap) {
        if (session.getAttribute("user") == null) {
            session.setAttribute("back", "/user/info");
            return "redirect:/user/login";
        }
        User user = (User) session.getAttribute("user");
        List<Integer> courseIds = userCourseMapper.getCourseIdByUserId(user.getUserId());
        List<Course> courses = new ArrayList<>();
        for (Integer id : courseIds) {
            courses.add(courseMapper.getCourseByCourseId(id));
        }

        user.setCourseList(courses);
        modelMap.addAttribute("user", user);
        return "user";
    }

    @GetMapping("/rank")
    public String rank(ModelMap modelMap) {
        List<User> userList = userMapper.getAllUser();
        for (User u : userList) {
            List<Integer> courseIds = userCourseMapper.getCourseIdByUserId(u.getUserId());
            List<Course> courses = new ArrayList<>();
            for (Integer id : courseIds) {
                courses.add(courseMapper.getCourseByCourseId(id));
            }
            u.setCourseList(courses);
        }
        userList.sort(new Comparator<User>() {
            @Override
            public int compare(User o1, User o2) {
                return o2.getCourseList().size() - o1.getCourseList().size();
            }
        });
        modelMap.addAttribute("userList", userList);
        return "rank";
    }


    @GetMapping("/admin")
    public String admin() {
        return "admin_login";
    }

    @PostMapping("/admin")
    public String admin(User user, ModelMap modelMap) {
        session.removeAttribute("user");
        modelMap.remove("user");

        if (StringUtils.isEmpty(user.getUserName()) || StringUtils.isEmpty(user.getUserPass())) {
            modelMap.addAttribute("error", "用户名或密码不能为空");
            return "/error";
        }


        User userKey = userMapper.getUserByUserName(user.getUserName());
        if (userKey == null || !userKey.getUserPass().equals(user.getUserPass())) {
            modelMap.addAttribute("error", "用户名或密码错误");
            return "/error";
        } else {
            session.setAttribute("user", userKey);
            modelMap.addAttribute("user", userKey);

            return "redirect:/admin";
        }


    }

}
