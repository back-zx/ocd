package com.abc.dao;

import com.abc.beans.CourseGrade;

import java.util.List;

public interface ICourseGradeDao {
    List<CourseGrade> selectCourseGrade();
}
