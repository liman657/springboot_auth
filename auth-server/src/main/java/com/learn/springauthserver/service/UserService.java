package com.learn.springauthserver.service;

import com.learn.springauthmodel.entity.User;
import com.learn.springauthmodel.mapper.UserMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * autor:liman
 * createtime:2019/12/11
 * comment:user的公共服务
 */
@Service
@Slf4j
public class UserService {

    @Autowired
    private UserMapper userMapper;

    /**
     * 数据库层面认证用户是否存在
     * @param userName
     * @param password
     * @return
     */
    public User authUser(String userName, String password){
        if(StringUtils.isBlank(userName) || StringUtils.isBlank(password)){
            throw new RuntimeException("用户名或密码不能为空");
        }
        User user = userMapper.selectByUserName(userName);
        if(user==null){
            throw new RuntimeException("当前用户不存在");
        }

        if(!password.equals(password)){
            throw new RuntimeException("用户名密码不匹配");
        }
        return user;
    }
}