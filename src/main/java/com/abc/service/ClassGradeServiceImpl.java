package com.abc.service;

import com.abc.beans.ClassGrade;
import com.abc.dao.IClassGradeDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClassGradeServiceImpl implements IClassGradeService{
    @Autowired
    private IClassGradeDao classGradeDao;

    @Override
    public List<ClassGrade> findClassGrade() {
        return classGradeDao.selectClassGrade();
    }
}
