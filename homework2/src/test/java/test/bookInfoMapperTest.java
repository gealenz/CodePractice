package test;

import com.krowemohl.mapper.BookInfoMapper;
import com.krowemohl.pojo.BookInfo;
import com.krowemohl.pojo.BookType;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class bookInfoMapperTest {
    @Test
    public void insertBookInfoTest() throws IOException {
//        1. 加载mybatis的核心配置文件，获取SqlSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

//        2.获取SqlSession对象，用来执行Sql
        SqlSession sqlSession = sqlSessionFactory.openSession();

//        3.获取Mapper接口的代理对象
        BookInfoMapper bookinfomapper = sqlSession.getMapper(BookInfoMapper.class);

//        4.执行方法
        BookInfo bookInfo = new BookInfo();
        int count = bookinfomapper.insertBookInfo(bookInfo);
        System.out.println(count);

        sqlSession.commit();


//        释放资源
        sqlSession.close();
    }

    @Test
    public void insertBookTypeTest() throws IOException {
//        1. 加载mybatis的核心配置文件，获取SqlSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

//        2.获取SqlSession对象，用来执行Sql
        SqlSession sqlSession = sqlSessionFactory.openSession();

//        3.获取Mapper接口的代理对象
        BookInfoMapper bookinfomapper = sqlSession.getMapper(BookInfoMapper.class);

//        4.执行方法
        BookType bookType = new BookType();
        int count = bookinfomapper.insertBookType(bookType);
        System.out.println(count);

        sqlSession.commit();


//        释放资源
        sqlSession.close();
    }

    @Test
    public void updateBookInfoTest() throws IOException {
//        1. 加载mybatis的核心配置文件，获取SqlSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

//        2.获取SqlSession对象，用来执行Sql
        SqlSession sqlSession = sqlSessionFactory.openSession();

//        3.获取Mapper接口的代理对象
        BookInfoMapper bookinfomapper = sqlSession.getMapper(BookInfoMapper.class);

//        4.执行方法

        int count = bookinfomapper.updateBookInfo(new BookInfo());
        System.out.println(count);

        sqlSession.commit();


//        释放资源
        sqlSession.close();
    }

//    deleteBookInfoById

    @Test
    public void deleteBookInfoByIdTest() throws IOException {
//        1. 加载mybatis的核心配置文件，获取SqlSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

//        2.获取SqlSession对象，用来执行Sql
        SqlSession sqlSession = sqlSessionFactory.openSession();

//        3.获取Mapper接口的代理对象
        BookInfoMapper bookinfomapper = sqlSession.getMapper(BookInfoMapper.class);

//        4.执行方法

        int count = bookinfomapper.deleteBookInfoById(1);
        System.out.println(count);

        sqlSession.commit();


//        释放资源
        sqlSession.close();
    }


    @Test
    public void selectByBookTypeTest() throws IOException {
//        1. 加载mybatis的核心配置文件，获取SqlSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

//        2.获取SqlSession对象，用来执行Sql
        SqlSession sqlSession = sqlSessionFactory.openSession();

//        3.获取Mapper接口的代理对象
        BookInfoMapper bookinfomapper = sqlSession.getMapper(BookInfoMapper.class);

//        4.执行方法
        List<BookInfo> bookInfoList = bookinfomapper.selectByBookType("1");
        for (BookInfo bookInfo : bookInfoList) {
            System.out.println(bookInfo);
        }

//        释放资源
        sqlSession.close();
    }

    @Test
    public void selectBookInfoWithTypeInfoTest() throws IOException {
//        1. 加载mybatis的核心配置文件，获取SqlSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

//        2.获取SqlSession对象，用来执行Sql
        SqlSession sqlSession = sqlSessionFactory.openSession();

//        3.获取Mapper接口的代理对象
        BookInfoMapper bookinfomapper = sqlSession.getMapper(BookInfoMapper.class);

//        4.执行方法
        List<BookInfo> bookInfoList = bookinfomapper.selectBookInfoWithTypeInfo();
        for (BookInfo bookInfo : bookInfoList) {
            System.out.println(bookInfo);
        }

//        释放资源
        sqlSession.close();
    }

//    selectBookInfoByPage
@Test
public void selectBookInfoByPageInfoTest() throws IOException {
//        1. 加载mybatis的核心配置文件，获取SqlSessionFactory
    String resource = "mybatis-config.xml";
    InputStream inputStream = Resources.getResourceAsStream(resource);
    SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

//        2.获取SqlSession对象，用来执行Sql
    SqlSession sqlSession = sqlSessionFactory.openSession();

//        3.获取Mapper接口的代理对象
    BookInfoMapper bookinfomapper = sqlSession.getMapper(BookInfoMapper.class);

//        4.执行方法
    List<BookInfo> bookInfoList = bookinfomapper.selectBookInfoByPage(2,3);
    for (BookInfo bookInfo : bookInfoList) {
        System.out.println(bookInfo);
    }

//        释放资源
    sqlSession.close();
}

    @Test
    public void  selectBookInfoWithBookTypeByIdTest() throws IOException {
//        1. 加载mybatis的核心配置文件，获取SqlSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

//        2.获取SqlSession对象，用来执行Sql
        SqlSession sqlSession = sqlSessionFactory.openSession();

//        3.获取Mapper接口的代理对象
        BookInfoMapper bookinfomapper = sqlSession.getMapper(BookInfoMapper.class);

//        4.执行方法
        BookInfo bookInfo1 = bookinfomapper.selectBookInfoWithBookTypeById(3);
        System.out.println(bookInfo1);

//        释放资源
        sqlSession.close();
    }



}
