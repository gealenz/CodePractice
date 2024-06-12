package com.itheima;

import com.itheima.config.SpringConfig;
import com.itheima.dao.BookDao;
import com.itheima.service.BookService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class AppForAnnotation {
    public static void main(String[] args) {
//        1.加载配置类
       ApplicationContext ctx = new AnnotationConfigApplicationContext(SpringConfig.class);
       BookDao bookDao = (BookDao) ctx.getBean("bookDao");
       System.out.println(bookDao);
       BookService bookService = (BookService) ctx.getBean("bookService");
        System.out.println(bookService);
    }
}
