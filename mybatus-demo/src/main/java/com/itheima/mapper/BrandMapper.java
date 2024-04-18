package com.itheima.mapper;

import com.itheima.pojo.Brand;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface BrandMapper {

    /*
    *
    * 查询所有
    *
    * */

    List<Brand> selectAll();


    /*
    * 查看详情
    * */

    Brand selectById(int id);

    /*
    * 条件查询
    *   *参数接受
    *    1.散装参数
    *    2.对象参数
    *    3.map集合的参数
    *
    * @Param("status")
    * @Param("companyName")
    * @Param("brand_name")
    * @return
    * */

    List<Brand> selectByCondition(@Param("status") int status,@Param("companyName") String companyName,@Param("brandName") String brandName);

    List<Brand> selectByCondition(Brand brand);

    List<Brand> selectByCondition(Map map);

    List<Brand> selectByConditionSingle(Brand brand);

    void add(Brand brand);

    int update(Brand brand);

    int update2(Brand brand);

    void deleteById(int id);

    void deleteByIds(@Param("ids") int[] ids);


}
