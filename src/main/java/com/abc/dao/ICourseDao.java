package com.abc.dao;

import com.abc.beans.Course;

import java.util.List;

public interface ICourseDao {
    List<Course> selectCourse();
}
