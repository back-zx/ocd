package com.abc.service;

import com.abc.beans.Classes;
import com.abc.dao.IClassesDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClassesServiceImpl implements IClassesService{
    @Autowired
    private IClassesDao calssesDao;

    public IClassesDao getCalssesDao() {
        return calssesDao;
    }

    @Override
    public List<Classes> findClasses() {
        return calssesDao.selectClasses();
    }
}
