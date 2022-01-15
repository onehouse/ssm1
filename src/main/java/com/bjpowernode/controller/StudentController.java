package com.bjpowernode.controller;

import com.bjpowernode.entity.Student;
import com.bjpowernode.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author tony
 * @creat 2022-01-12 12:16
 */
@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    private StudentService studentService;

    @RequestMapping("/add.do")
    public ModelAndView add(Student student) {
        ModelAndView mv = new ModelAndView();
        int num = studentService.addStudent(student);
        String msg = "注册失败！";
        if(num > 0) {
            msg = "学生" + student.getName() + "注册成功!";
        }
        mv.addObject("msg",msg);
        mv.setViewName("showAdd");
        return mv;
    }

    @RequestMapping("/queryAll.do")
    @ResponseBody
    public List<Student> queryAll() {
        List<Student> students = studentService.selectAllStudent();
        return students;
    }
}
