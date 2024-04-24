package com.krowemoh.mapper;

import com.krowemoh.pojo.Provider;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProviderMapper {

//    查询全部()
    List<Provider> selectAll();


//    供应商编码(模糊查询)供应商名称(模糊查询)
    List<Provider> selectByCondition(@Param("proCode") String proCode, @Param("proName")String proName);

//    使用动态SQL实现供应商表的修改功能（使用if+set组合）
    int update(Provider provider);

}
