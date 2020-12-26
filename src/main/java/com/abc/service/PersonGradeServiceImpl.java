package com.abc.service;

import com.abc.beans.PersonGrade;
import com.abc.dao.IPersonGradeDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PersonGradeServiceImpl implements IPersonGradeService{
    @Autowired
    private IPersonGradeDao personGradeDao;

    @Override
    public List<PersonGrade> findPersonGrade() {
        return personGradeDao.selectPersonGrade();
    }
}
