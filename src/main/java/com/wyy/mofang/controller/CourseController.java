package com.wyy.mofang.controller;

import com.wyy.mofang.dao.CourseMapper;
import com.wyy.mofang.dao.UserCourseMapper;
import com.wyy.mofang.entity.Course;
import com.wyy.mofang.entity.User;
import com.wyy.mofang.entity.UserCourse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/course")
public class CourseController {
    @Autowired
    private UserCourseMapper userCourseMapper;
    @Autowired
    private CourseMapper courseMapper;
    @Autowired
    private HttpSession session;


    @GetMapping("/category")
    public String getAll(ModelMap map) {
        if (session.getAttribute("user") == null) {
            session.setAttribute("back", "/course/category");
            return "redirect:/user/login";
        }
        User user = (User) session.getAttribute("user");

        List<Course> category = courseMapper.getAllCourse();
        List<Integer> leanedCourseId = userCourseMapper.getCourseIdByUserId(user.getUserId());

        for (Course c : category) {
            c.setLearn(leanedCourseId.contains(c.getCourseId()));
        }
        map.addAttribute("courseCategory", category);
        return "course-category";
    }

    @GetMapping("/{courseId}")
    public String getOne(@PathVariable("courseId") Integer courseId, ModelMap map) {
        if (session.getAttribute("user") == null) {
            session.setAttribute("back", "/course/" + courseId);
            return "redirect:/user/login";
        }
        Course course = courseMapper.getCourseByCourseId(courseId);
        map.addAttribute("course", course);
        return "course";
    }

    @GetMapping("/study/{id}")
    public String postStudy(@PathVariable("id") Integer id, ModelMap modelMap) {
        if (session.getAttribute("user") == null) {
            session.setAttribute("back", "/study/" + id);
            return "redirect:/user/login";
        }
        User user = (User) session.getAttribute("user");
        UserCourse userCourse = new UserCourse();
        userCourse.setUserId(user.getUserId());
        userCourse.setCourseId(id);
        try {
            if (!userCourseMapper.getCourseIdByUserId(user.getUserId()).contains(id))
                userCourseMapper.addStudy(userCourse);
            return "redirect:/course/category";
        } catch (Exception ex) {
            modelMap.addAttribute("error", ex.toString());
            return "/error";
        }
    }


}
