package com.abc.dao;

import com.abc.beans.Student;

import java.util.List;

public interface IStudentDao {
    //查询学生信息
    List<Student> selectAll();
}
