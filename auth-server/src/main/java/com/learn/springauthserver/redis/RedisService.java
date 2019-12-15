package com.learn.springauthserver.redis;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

/**
 * autor:liman
 * createtime:2019/12/15
 * comment:
 */
@Service
@Slf4j
public class RedisService {

    @Autowired
    private RedisTemplate redisTemplate;

    @Autowired
    private StringRedisTemplate stringRedisTemplate;

    public void testRedis(String redisInfo){
        log.info("开始存入缓存");
        redisTemplate.opsForValue().set("test",redisInfo);
        Object testObject = redisTemplate.opsForValue().get("test");
        log.info("从缓存中获取的信息:{}",testObject);
    }

    public void testStringTemplate(String redisInfo){
        log.info("开始测试StringTemplate");
        stringRedisTemplate.opsForValue().set("testString","testStringRedis");
        String testRedisString = stringRedisTemplate.opsForValue().get("testString");
        log.info("从缓存中获得的String类型:{}",testRedisString);
    }

}
