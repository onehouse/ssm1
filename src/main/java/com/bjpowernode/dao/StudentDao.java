package com.bjpowernode.dao;

import com.bjpowernode.entity.Student;

import java.util.List;

/**
 * @author tony
 * @creat 2022-01-12 12:18
 */
public interface StudentDao {

    int insert(Student student);

    List<Student> selectAll();
}
