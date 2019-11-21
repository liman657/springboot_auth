package com.learn.springauthmodel.mapper;

import com.learn.springauthmodel.entity.AuthToken;

import java.util.List;

public interface AuthTokenMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(AuthToken record);

    AuthToken selectByPrimaryKey(Integer id);

    List<AuthToken> selectAll();

    int updateByPrimaryKey(AuthToken record);
}