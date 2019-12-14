package com.learn.springauthserver.controller;

import com.learn.springauthapi.enums.StatusCode;
import com.learn.springauthapi.response.BaseResponse;
import com.learn.springauthserver.service.DBAuthService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * autor:liman
 * createtime:2019/12/11
 * comment:token+数据库 controller
 */
@RestController
@Slf4j
@RequestMapping("/dbAuth")
public class DBAuthController {

    @Autowired
    private DBAuthService dbAuthService;

    @RequestMapping(value="login",method=RequestMethod.POST)
    public BaseResponse login(@RequestParam String userName,@RequestParam String password){
        if(StringUtils.isBlank(userName) || StringUtils.isBlank(password)){
            return new BaseResponse(StatusCode.UserNamePasswordNotBlank);
        }
        BaseResponse response = new BaseResponse(StatusCode.Success);
        try{//如果登录成功，则创建token
            response.setData(dbAuthService.authAndCreateToken(userName, password));
        }catch (Exception e){
            response = new BaseResponse(StatusCode.Fail.getCode(),e.getMessage());
        }
        return response;
    }

    @RequestMapping(value="/token/auth",method=RequestMethod.GET)
    public BaseResponse tokenAuth(){
        BaseResponse baseResponse = new BaseResponse(StatusCode.Success);
        try{
            String data = "这里是需要认证才能访问的资源";
            baseResponse.setData(data);
        }catch (Exception e){
            baseResponse = new BaseResponse(StatusCode.Fail,e.getMessage());
        }
        return baseResponse;
    }


    @RequestMapping(value="token/unauth",method=RequestMethod.GET)
    public BaseResponse tokenUnAuth(){
        BaseResponse baseResponse = new BaseResponse(StatusCode.Success);
        try{
            String data = "这里是不需要认证就能访问的资源";
            baseResponse.setData(data);
        }catch (Exception e){
            baseResponse = new BaseResponse(StatusCode.Fail,e.getMessage());
        }
        return baseResponse;
    }
}
