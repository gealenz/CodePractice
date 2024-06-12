package com.itheima;

import com.itheima.dao.BookDao;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import javax.sql.DataSource;
import java.awt.print.Book;

public class App {
    public static void main(String[] args) {
//        1.加载类路径下的文件
        ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
//        2.加载文件系统下的配置文件
//        ApplicationContext ctx2 = new FileSystemXmlApplicationContext("C:\\PLUSPRO\\Code-test01\\spring_09_datasource\\src\\main\\resources\\applicationContext.xml");
//        DataSource dataSource = (DataSource) ctx.getBean("dataSource");
//        System.out.println(dataSource);

//        BookDao bookDao = (BookDao) ctx.getBean("bookDao");
//        BookDao bookDao =ctx.getBean("bookDao", BookDao.class);

//
        BookDao bookDao =ctx.getBean(BookDao.class);

        bookDao.save();
    }
}
