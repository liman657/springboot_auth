package com.learn.springauthserver.config;

import com.learn.springauthserver.interceptor.DBAuthInterceptor;
import com.learn.springauthserver.service.DBAuthService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * autor:liman
 * createtime:2019/12/13
 * comment:
 */
@Configuration
public class CustomerWebConfig implements WebMvcConfigurer {

    //添加拦截器
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        final String[] interceptorPaths = new String[]{"/dbAuth/token/auth"
                , "/dbAuth/token/password/update", "token/logout"};

        registry.addInterceptor(dbAuthInterceptor())
                .addPathPatterns(interceptorPaths);
//                .excludePathPatterns()
    }

    @Bean
    public DBAuthInterceptor dbAuthInterceptor() {
        return new DBAuthInterceptor();
    }

    //访问静态资源
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {

    }

    //跨域设置
    @Override
    public void addCorsMappings(CorsRegistry registry) {
//        registry.addMapping("/**").allowedMethods("*")
    }
}
