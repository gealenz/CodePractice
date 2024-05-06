package com.krowemohl.mapper;

import com.krowemohl.pojo.BookInfo;
import com.krowemohl.pojo.BookType;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookInfoMapper {

    int insertBookInfo(BookInfo bookInfo);

    int insertBookInfo2(BookInfo booknfo);

    int insertBookType(BookType bookType);
    int deleteBookInfoById(Integer bookId);
    int updateBookInfo(BookInfo bookInfo);


    List<BookInfo> selectByBookType(@Param("bookTyple") String bookType);
    List<BookInfo> selectBookInfoWithTypeInfo();

    List<BookInfo> selectBookInfoByPage(@Param("offset") int offset, @Param("limit") int limit);
    // 关联查询
    BookInfo selectBookInfoWithBookTypeById(Integer bookId);



}
