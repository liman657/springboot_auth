package com.learn.springauthserver;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ImportResource;

/**
 * autor:liman
 * createtime:2019/11/20
 * comment:Server端的启动类
 */
@SpringBootApplication
@ImportResource(locations = {"classpath:spring/spring-jdbc.xml"})
@MapperScan(basePackages = "com.learn.springauthmodel.mapper")
public class AuthServerStarterApplication {

    public static void main(String[] args) {
        SpringApplication.run(AuthServerStarterApplication.class, args);
    }

}