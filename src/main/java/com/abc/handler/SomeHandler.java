package com.abc.handler;

import com.abc.beans.*;
import com.abc.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.io.Serializable;
import java.util.List;

@Controller
@RequestMapping("/ocd")
public class SomeHandler implements Serializable {
    @Autowired
    private IStudentService studentService;
    @Autowired
    private IClassesService classesService;
    @Autowired
    private ICourseService courseService;
    @Autowired
    private ICourseGradeService courseGradeService;
    @Autowired
    private IPersonGradeService personGradeService;
    @Autowired
    private IClassGradeService classGradeService;

    //查询全部学生信息
    @RequestMapping("/findStudent.do")
    public String findAll(HttpSession session){
//        System.out.println("2222222");
        List<Student> students = studentService.findAll();
        for(Student s:students){
            System.out.println(s);
        }
        session.setAttribute("students",students);
        return "/listStudent.jsp";
    }

    //查询全部班级信息
    @RequestMapping("/findClasses.do")
    public String findClasses(HttpSession session){
//        System.out.println("classsssssss");
        List<Classes> classes =classesService.findClasses();
        for (Classes c:classes){
            System.out.println(c);
        }
        session.setAttribute("classes",classes);
        return "/listClasses.jsp";
    }

    //查询全部课程信息
    @RequestMapping("/findCourse.do")
    public String findCourse(HttpSession session){
//        System.out.println("courseseeseese");
        List<Course> courses =courseService.findCourse();
        for (Course course:courses){
            System.out.println(course);
        }
        session.setAttribute("courses",courses);
        return "/listCourse.jsp";
    }

    //查询全部课程成绩
    @RequestMapping("/findCourseGrade.do")
    public String findCourseGrade(HttpSession session){
//        System.out.println("classgrade");
        List<CourseGrade> courseGrades =courseGradeService.findCourseGrade();
        for (CourseGrade cg:courseGrades){
            System.out.println(cg);
        }
        session.setAttribute("courseGrades",courseGrades);
        return "/listCourseGrade.jsp";
    }

    //个人学习信息统计
    @RequestMapping("/findPersonGrade.do")
    public String findPersonGrade(HttpSession session){
//        System.out.println("persongrade-------------------");
        List<PersonGrade> personGrades =personGradeService.findPersonGrade();
        for (PersonGrade pg:personGrades){
            System.out.println(pg);
        }
        session.setAttribute("personGrades",personGrades);
        return "/listPersonGrade.jsp";
    }

    //班级学习信息统计
    @RequestMapping("/findClassGrade.do")
    public String findClassGrade(HttpSession session){
//        System.out.println("findClassGrade-------------------");
        List<ClassGrade> classGrades =classGradeService.findClassGrade();
        for (ClassGrade cg:classGrades){
            System.out.println(cg);
        }
        session.setAttribute("classGrades",classGrades);
        return "/listClassGrade.jsp";
    }

    //查重算法
    @RequestMapping("/check.do")
    public String check(HttpSession session){
        return "/test.jsp";
    }

    //作业提交
    public String submit(HttpSession session){
        return "";
    }
}
