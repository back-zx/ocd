package com.abc.handler;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/ocd")
public class check {

    @RequestMapping("/test.do")
    public String upLoad(@RequestParam("txt1") String txt1, @RequestParam("txt2") String txt2, HttpSession session) throws IOException {
        //获取两个文本内容;
        System.out.println(txt1);
        System.out.println(txt2);
        MySimHash hash1=new MySimHash(txt1,64);
        MySimHash hash2=new MySimHash(txt2,64);
        System.out.println("======================================");
        int l1=hash1.hammingDistance(hash2);
        System.out.println("海明距离："+l1);
        double l2=hash1.getSemblance(hash2);
        System.out.println("文本相似度："+ l2 );
        System.out.println("======================================");
        session.setAttribute("txt1",txt1);
        session.setAttribute("txt2",txt2);
        session.setAttribute("l3",l1);
        session.setAttribute("l4",l2*100);
        return "/test1.jsp";
    }
}
