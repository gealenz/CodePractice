package com.itheima.service.impl;

import com.itheima.dao.BookDao;
import com.itheima.service.BookService;


public class BookServiceImpl implements BookService {
    private BookDao bookDao;

    public void save(){
        System.out.println("book service save ...");
        bookDao.save();
    }

//    5.删除业务层的中使用new的方法创建的dao对象
//    6.提供对应的set方法
    public void setBookDao(BookDao bookDao){
        this.bookDao = bookDao;
    }
}
