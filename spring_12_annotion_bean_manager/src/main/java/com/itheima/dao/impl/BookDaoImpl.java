package com.itheima.dao.impl;

import com.itheima.dao.BookDao;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

@Repository
@Scope("singleton")  //@Scope("prototype") 非单例,@Scope("singleton") 单例
public class BookDaoImpl implements BookDao {

    @Override
    public void save() {
        System.out.println("book dao save ...");
    }

    @PostConstruct //@PostConstruct 构造方法后
    public void init() {
        System.out.println("init ...");
    }

    @PreDestroy //@PreDestroy 销毁前
    public void destroy() {
        System.out.println("destroy ...");
    }
}
