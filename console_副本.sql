create database if not exists test charset utf8;

use test;

create table book_info (
    bookld int auto_increment comment '图书ID',
    bookCode varchar(50) not null comment '图书编号',
    bookName varchar(50) not null comment '图书名称',
    bookType int not null comment '图书类型，引用图书表主键',
    publishPress varchar(50) not null comment '出版社',
    ublishDate datetime not null comment '出版日期',
    borrowed int not null comment '是否借阅',
    createdBy varchar(50) not null comment '创建人',
    creationTime datetime not null  comment '创建时间',
    lastUpdatetime datetime not null comment '最新更新时间',
    primary key (bookLd),
    foreign key (bookType) references book_type (id)
);

create table book_type (
    id int auto_increment comment '类型id',
    typeName varchar(50) not null comment '图书类型名称',
    primary key (id)
);



