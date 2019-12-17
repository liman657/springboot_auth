package com.learn.springauthserver.utils;

import com.learn.springauthserver.contants.Constant;
import io.jsonwebtoken.JwtBuilder;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import org.apache.shiro.codec.Base64;
import org.joda.time.DateTime;

import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import java.util.Date;

/**
 * autor:liman
 * createtime:2019/12/17
 * comment:JWT通用工具类
 */
public class JWTUtils {

    /**
     * 生成签名
     *
     * @return
     */
    public static SecretKey generalKey() {
        byte[] encodedKey = Base64.decode(Constant.JWT_SECRET);//对密钥进行base64加密
        SecretKey key = new SecretKeySpec(encodedKey, 0, encodedKey.length, "AES");
        return key;//根据密钥生成签名
    }

    /**
     * 创建token
     *
     * @param id
     * @param subject
     * @param expireMills
     * @return
     */
    public static String createJWT(final String id, final String subject
            , final Long expireMills) {
        //定义生成签名的算法
        SignatureAlgorithm algorithm = SignatureAlgorithm.HS256;
        //生成签名的密钥
        SecretKey key = generalKey();

        Date now = DateTime.now().toDate();

        //借用第三方组件生成JWT的token
        JwtBuilder builder = Jwts.builder()
                .setId(id)//用户id
                .setSubject(subject)//JWT主体
                .setIssuer(Constant.TOKEN_ISSUER)//签发者
                .setIssuedAt(now)//签发时间
                .signWith(algorithm, key);//指定加密算法和密钥

        if(expireMills>=0){
            Long realExpire = System.currentTimeMillis()+expireMills;
            builder.setExpiration(new Date(realExpire));
        }

        //生成token
        return builder.compact();
    }

}
