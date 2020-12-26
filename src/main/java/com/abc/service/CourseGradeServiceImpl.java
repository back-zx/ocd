package com.abc.service;

import com.abc.beans.CourseGrade;
import com.abc.dao.ICourseGradeDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseGradeServiceImpl implements ICourseGradeService{
    @Autowired
    private ICourseGradeDao courseGradeDao;
    @Override
    public List<CourseGrade> findCourseGrade() {
        return courseGradeDao.selectCourseGrade();
    }
}
