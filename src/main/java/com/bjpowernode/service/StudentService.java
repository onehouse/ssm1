package com.bjpowernode.service;

import com.bjpowernode.dao.StudentDao;
import com.bjpowernode.entity.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author tony
 * @creat 2022-01-12 12:22
 */

@Service
public class StudentService {
    @Autowired
    private StudentDao studentDao;

    public int addStudent(Student student) {
        int num = studentDao.insert(student);
        return num;
    }

    public List<Student> selectAllStudent() {
        List<Student> students = studentDao.selectAll();
        return students;
    }
}
