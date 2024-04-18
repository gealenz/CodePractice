package com.itheima.test;

import com.itheima.mapper.BrandMapper;
import com.itheima.pojo.Brand;
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

public class MyBatisTest {
    @Test
    public void testSelectAll() throws IOException {
//        1. 加载mybatis的核心配置文件，获取SqlSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

//        2.获取SqlSession对象，用来执行Sql
        SqlSession sqlSession = sqlSessionFactory.openSession();

//        3.获取Mapper接口的代理对象
        BrandMapper brandmapper = sqlSession.getMapper(BrandMapper.class);

//        4.执行方法
        List<Brand> brands = brandmapper.selectAll();
        System.out.println(brands);

//        释放资源
        sqlSession.close();


    }

    @Test
    public void testSelectById() throws IOException {
//        接受参数
        int id = 1;


//        1. 加载mybatis的核心配置文件，获取SqlSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

//        2.获取SqlSession对象，用来执行Sql
        SqlSession sqlSession = sqlSessionFactory.openSession();

//        3.获取Mapper接口的代理对象
        BrandMapper brandmapper = sqlSession.getMapper(BrandMapper.class);

//        4.执行方法
        Brand brand = brandmapper.selectById(id);
        System.out.println(brand);


//        释放资源
        sqlSession.close();


    }

    @Test
    public void testSelectByCondition() throws IOException {
//        接受参数
        int status = 1;
        String companyName = "华为";
        String brandName = "华为";

//      处理参数
        companyName = "%" + companyName + "%";
        brandName = "%" + brandName + "%";

//      封装对象
        /*Brand brand = new Brand();
        brand.setStatus(status);
        brand.setCompanyName(companyName);
        brand.setBrandName(brandName);*/

        Map map = new HashMap();
        map.put("status", status);
        map.put("companyName", companyName);
        map.put("brandName", brandName);



//        1. 加载mybatis的核心配置文件，获取SqlSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

//        2.获取SqlSession对象，用来执行Sql
        SqlSession sqlSession = sqlSessionFactory.openSession();

//        3.获取Mapper接口的代理对象
        BrandMapper brandmapper = sqlSession.getMapper(BrandMapper.class);

//        4.执行方法
        List<Brand> brands = brandmapper.selectByCondition(status,companyName,brandName);
//        List<Brand> brands = brandmapper.selectByCondition(brand);
//        List<Brand> brands = brandmapper.selectByCondition(map);
        System.out.println(brands);

//        释放资源
        sqlSession.close();


    }

    @Test
    public void testSelectByConditionSingle() throws IOException {
//        接受参数
        int status = 1;
        String companyName = "华为";
        String brandName = "华为";

//      处理参数
        companyName = "%" + companyName + "%";
        brandName = "%" + brandName + "%";

//      封装对象
        Brand brand = new Brand();
//        brand.setStatus(status);
//        brand.setCompanyName(companyName);
//        brand.setBrandName(brandName);


//        1. 加载mybatis的核心配置文件，获取SqlSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

//        2.获取SqlSession对象，用来执行Sql
        SqlSession sqlSession = sqlSessionFactory.openSession();

//        3.获取Mapper接口的代理对象
        BrandMapper brandmapper = sqlSession.getMapper(BrandMapper.class);

//        4.执行方法
        List<Brand> brands = brandmapper.selectByConditionSingle(brand);
        System.out.println(brands);

//        释放资源
        sqlSession.close();


    }


    @Test
    public void testAdd() throws IOException {
//        接受参数
        int status = 1;
        String companyName = "波导手机";
        String brandName = "波导";
        String description = "老东西，估计是我们老爸那会儿的东西";
        int order = 100;

//      封装对象
        Brand brand = new Brand();
        brand.setStatus(status);
        brand.setCompanyName(companyName);
        brand.setBrandName(brandName);
        brand.setDescription(description);
        brand.setOrdered(order);


//        1. 加载mybatis的核心配置文件，获取SqlSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

//        2.获取SqlSession对象，用来执行Sql
        SqlSession sqlSession = sqlSessionFactory.openSession();

//        3.获取Mapper接口的代理对象
        BrandMapper brandmapper = sqlSession.getMapper(BrandMapper.class);

//        4.执行方法
        brandmapper.add(brand);

//        提交事务
        sqlSession.commit();

//        释放资源
        sqlSession.close();


    }

    @Test
    public void testAdd2() throws IOException {
//        接受参数
        int status = 1;
        String companyName = "波导手机";
        String brandName = "波导";
        String description = "老东西，估计是我们老爸那会儿的东西";
        int order = 100;

//      封装对象
        Brand brand = new Brand();
        brand.setStatus(status);
        brand.setCompanyName(companyName);
        brand.setBrandName(brandName);
        brand.setDescription(description);
        brand.setOrdered(order);


//        1. 加载mybatis的核心配置文件，获取SqlSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

//        2.获取SqlSession对象，用来执行Sql
        SqlSession sqlSession = sqlSessionFactory.openSession();

//        3.获取Mapper接口的代理对象
        BrandMapper brandmapper = sqlSession.getMapper(BrandMapper.class);

//        4.执行方法
        brandmapper.add(brand);
        Integer id = brand.getId();
        System.out.println(id);

//        提交事务
        sqlSession.commit();


//        释放资源
        sqlSession.close();

    }

    @Test
    public void testupdate() throws IOException {
//        接受参数
        int status = 1;
        String companyName = "波导手机alter";
        String brandName = "波导";
        String description = "老东西，挂咸鱼吧";
        int order = 200;
        int id = 8;

//      封装对象
        Brand brand = new Brand();
        brand.setStatus(status);
        brand.setCompanyName(companyName);
        brand.setBrandName(brandName);
        brand.setDescription(description);
        brand.setOrdered(order);
        brand.setId(id);


//        1. 加载mybatis的核心配置文件，获取SqlSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

//        2.获取SqlSession对象，用来执行Sql
        SqlSession sqlSession = sqlSessionFactory.openSession();

//        3.获取Mapper接口的代理对象
        BrandMapper brandmapper = sqlSession.getMapper(BrandMapper.class);

//        4.执行方法
        int count = brandmapper.update(brand);
        System.out.println(count);


//        提交事务
        sqlSession.commit();


//        释放资源
        sqlSession.close();

    }

    @Test
    public void testupdate2() throws IOException {
//        接受参数
        int status = 1;
        String companyName = "波导手机alter";
        String brandName = "波导";
        String description = "老东西，挂咸鱼吧";
        int order = 200;
        int id = 7;

//      封装对象
        Brand brand = new Brand();
        brand.setStatus(status);
//        brand.setCompanyName(companyName);
//        brand.setBrandName(brandName);
//        brand.setDescription(description);
        brand.setOrdered(order);
        brand.setId(id);


//        1. 加载mybatis的核心配置文件，获取SqlSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

//        2.获取SqlSession对象，用来执行Sql
        SqlSession sqlSession = sqlSessionFactory.openSession();

//        3.获取Mapper接口的代理对象
        BrandMapper brandmapper = sqlSession.getMapper(BrandMapper.class);

//        4.执行方法
        int count = brandmapper.update2(brand);
        System.out.println(count);


//        提交事务
        sqlSession.commit();


//        释放资源
        sqlSession.close();

    }

    @Test
    public void testdeleetById() throws IOException {
//        接受参数
        int id = 7;

//      封装对象
        Brand brand = new Brand();
        brand.setId(id);


//        1. 加载mybatis的核心配置文件，获取SqlSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

//        2.获取SqlSession对象，用来执行Sql
        SqlSession sqlSession = sqlSessionFactory.openSession();

//        3.获取Mapper接口的代理对象
        BrandMapper brandmapper = sqlSession.getMapper(BrandMapper.class);

//        4.执行方法
        brandmapper.deleteById(brand.getId());


//        提交事务
        sqlSession.commit();


//        释放资源
        sqlSession.close();

    }

    @Test
    public void testdeleetByIds() throws IOException {
//        接受参数
        int[] ids = {6,8};


//        1. 加载mybatis的核心配置文件，获取SqlSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

//        2.获取SqlSession对象，用来执行Sql
        SqlSession sqlSession = sqlSessionFactory.openSession();

//        3.获取Mapper接口的代理对象
        BrandMapper brandmapper = sqlSession.getMapper(BrandMapper.class);

//        4.执行方法
        brandmapper.deleteByIds(ids);


//        提交事务
        sqlSession.commit();


//        释放资源
        sqlSession.close();

    }

}
