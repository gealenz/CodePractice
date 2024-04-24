package cn.dsscm.test;
import cn.dsscm.dao.BookInfoMapper;
import cn.dsscm.pojo.BookInfo;
import cn.dsscm.utils.MyBatisUtils;
import org.apache.ibatis.session.SqlSession;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.apache.log4j.Logger;
import java.util.List;

public class BookInfoMapperTest {
    private Logger logger = Logger.getLogger(BookInfoMapperTest.class);
    private SqlSession sqlSession;
    private BookInfoMapper bookInfoMapper;

    @Before
    public void setUp() {
        sqlSession = MyBatisUtils.createSqlSession();
        bookInfoMapper = sqlSession.getMapper(BookInfoMapper.class);
    }

    @After
    public void tearDown() {
        MyBatisUtils.closeSqlSession(sqlSession);
    }

    @Test
    public void testInsertBookInfo() {
        // 创建一个BookInfo对象并设置属性
        BookInfo bookInfo = new BookInfo();
        // 设置BookInfo的属性
        // bookInfo.setXXX(...);
        int result = bookInfoMapper.insertBookInfo(bookInfo);
        logger.debug("Inserted " + result + " row(s).");
    }

    @Test
    public void testDeleteBookInfoById() {
        Integer bookId = 1; // 设置要删除的图书ID
        int result = bookInfoMapper.deleteBookInfoById(bookId);
        logger.debug("Deleted " + result + " row(s).");
    }

    @Test
    public void testUpdateBookInfo() {
        // 创建一个BookInfo对象并设置属性
        BookInfo bookInfo = new BookInfo();
        // 设置BookInfo的属性
        // bookInfo.setXXX(...);
        int result = bookInfoMapper.updateBookInfo(bookInfo);
        logger.debug("Updated " + result + " row(s).");
    }

    @Test
    public void testSelectBookInfoById() {
        Integer bookId = 1; // 设置要查询的图书ID
        BookInfo bookInfo = bookInfoMapper.selectBookInfoById(bookId);
        logger.debug("Selected book info: " + bookInfo);
    }

    @Test
    public void testSelectAllBookInfos() {
        List<BookInfo> bookInfoList = bookInfoMapper.selectAllBookInfos();
        logger.debug("Selected all book infos: ");
        for (BookInfo bookInfo : bookInfoList) {
            logger.debug(bookInfo);
        }
    }

    @Test
    public void testSelectBookInfoByPage() {
        int offset = 0; // 设置查询的偏移量
        int limit = 10; // 设置查询的限制数量
        List<BookInfo> bookInfoList = bookInfoMapper.selectBookInfoByPage(offset, limit);
        logger.debug("Selected book infos by page: ");
        for (BookInfo bookInfo : bookInfoList) {
            logger.debug(bookInfo);
        }
    }

    @Test
    public void testSelectBookInfoWithBookTypeById() {
        Integer bookId = 1; // 设置要查询的图书ID
        BookInfo bookInfo = bookInfoMapper.selectBookInfoWithBookTypeById(bookId);
        logger.debug("Selected book info with book type: " + bookInfo);
    }
}