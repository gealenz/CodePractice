package com.itheima.mapper;

import com.itheima.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {


    List<User> selectAll();

    User selectByid(Integer id);

    User select(@Param("username") String username,@Param("password") String password);


}
