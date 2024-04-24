package cn.dsscm.dao;

import cn.dsscm.pojo.BookInfo;
import cn.dsscm.pojo.BookType;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookInfoMapper {
    int insertBookInfo(BookInfo bookInfo);
    int insertBookType(BookType bookType);
    int deleteBookInfoById(Integer bookId);
    int updateBookInfo(BookInfo bookInfo);
    BookInfo selectBookInfoById(Integer bookId);
    List<BookInfo> selectAllBookInfos();
    // 分页查询
    List<BookInfo> selectBookInfoByPage(@Param("offset") int offset, @Param("limit") int limit);
    // 关联查询
    BookInfo selectBookInfoWithBookTypeById(Integer bookId);
}