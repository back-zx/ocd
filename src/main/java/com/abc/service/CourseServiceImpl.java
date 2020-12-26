package com.abc.service;

import com.abc.beans.Course;
import com.abc.dao.ICourseDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseServiceImpl implements ICourseService{
    @Autowired
    private ICourseDao courseDao;

    @Override
    public List<Course> findCourse() {
        return courseDao.selectCourse();
    }
}
