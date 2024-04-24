package com.krowemoh.test;

import com.krowemoh.mapper.ProviderMapper;
import com.krowemoh.pojo.Provider;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;

public class ProviderMappertest {

    @Test
    public void testSelectAll() throws IOException {
//        1. 加载mybatis的核心配置文件，获取SqlSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

//        2.获取SqlSession对象，用来执行Sql
        SqlSession sqlSession = sqlSessionFactory.openSession();

//        3.获取Mapper接口的代理对象
        ProviderMapper providerMapper = sqlSession.getMapper(ProviderMapper.class);

//        4.执行方法
        List<Provider> providers = providerMapper.selectAll();
        System.out.println(providers);

//        释放资源
        sqlSession.close();
    }

    @Test
    public void testSelectByCondition() throws IOException {
//      接受参数
//        String proCode = "BJ_GYS001";
        String proCode = "GYS001";
//        String proCode = "";

        String proName = "北京";


//      处理参数
        proCode = "%" + proCode + "%";
        proName = "%" + proName + "%";


//        1. 加载mybatis的核心配置文件，获取SqlSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

//        2.获取SqlSession对象，用来执行Sql
        SqlSession sqlSession = sqlSessionFactory.openSession();

//        3.获取Mapper接口的代理对象
        ProviderMapper providerMapper = sqlSession.getMapper(ProviderMapper.class);

//        4.执行方法
        List<Provider> providers = providerMapper.selectByCondition(proCode,proName);
        System.out.println(providers);

//        释放资源
        sqlSession.close();
    }

    @Test
    public void update() throws IOException {
//        接受参数
        int id = 1;
        String proCode = "BJ_GYS001--1";
        String proName = "北京三木堂商贸有限公司--1";
        String  proDesc = "长期合作伙伴，主营产品:茅台、五粮液、郎酒、酒鬼酒、泸州老窖、赖茅酒、法国红酒等--1";
        String proContact = "张国强--1";
        String proPhone = "13566667777--1";
        String proAddress = "北京市丰台区育芳园北路--1";
        String proFax = "010-58858787--1";
        int modifyBy = 1;




//        封装对象
        Provider provider = new Provider();
        provider.setId(id);
        provider.setProCode(proCode);
        provider.setProName(proName);
        provider.setProDesc(proDesc);
        provider.setProContact(proContact);
        provider.setProPhone(proPhone);
        provider.setProAddress(proAddress);
        provider.setProFax(proFax);
        provider.setModifyBy(modifyBy);



//        1. 加载mybatis的核心配置文件，获取SqlSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

//        2.获取SqlSession对象，用来执行Sql
        SqlSession sqlSession = sqlSessionFactory.openSession();

//        3.获取Mapper接口的代理对象
        ProviderMapper providerMapper = sqlSession.getMapper(ProviderMapper.class);

//        4.执行方法
        int count = providerMapper.update(provider);
        System.out.println(count);

//        提交事务
        sqlSession.commit();

//        释放资源
        sqlSession.close();

    }

    @Test
    public void testSelectAll2() throws IOException {
        int len = 3;
//        1. 加载mybatis的核心配置文件，获取SqlSessionFactory
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

//        2.获取SqlSession对象，用来执行Sql
        SqlSession sqlSession = sqlSessionFactory.openSession();

//        3.获取Mapper接口的代理对象
        ProviderMapper providerMapper = sqlSession.getMapper(ProviderMapper.class);

//        4.执行方法
        List<Provider> providers = providerMapper.selectAll();
        int count = 0;
        for (Provider provider1 : providers) {
            count += 1;
            System.out.println(provider1);
            if (count == len || count >= providers.size()) {
                break;
            }
        }

//        释放资源
        sqlSession.close();
    }


}
