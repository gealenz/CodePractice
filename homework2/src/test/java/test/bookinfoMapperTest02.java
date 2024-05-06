package test;

import com.krowemohl.mapper.BookInfoMapper;
import com.krowemohl.pojo.BookInfo;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class bookinfoMapperTest02 {
    @Test
    public void test() throws IOException {
//        1. 加载mybatis的核心配置文件，获取SqlSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

//        2.获取SqlSession对象，用来执行Sql
        SqlSession sqlSession = sqlSessionFactory.openSession();

//        3.获取Mapper接口的代理对象
        BookInfoMapper bookinfomapper = sqlSession.getMapper(BookInfoMapper.class);

    /*
        ('1', 'Book1', 2, 'AuthorG', 'Press2', '2022-01-02', 0, 'User2', '2022-01-02', '2022-01-02'),
        ('2', 'Book2', 2, 'Author2', 'Press2', '2022-01-02', 0, 'User2', '2022-01-02', '2022-01-02'),
        ('3', 'Book3', 1, 'Author3', 'Press3', '2022-01-03', 0, 'User3', '2022-01-03', '2022-01-03'),
        ('4', 'Book4', 3, 'Author4', 'Press4', '2022-01-04', 0, 'User4', '2022-01-04', '2022-01-04');

       */

//      执行方法
        
    }
}
