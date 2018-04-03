package net.heartma.common.persistence.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import org.springframework.stereotype.Component;

/**
 * @version v1.0.0
 * @author heartma
 * @date 2017年12月27日
 * @File MyBatisDao.java
 * @URL www.heartma.net
 * @Desc 标识MyBatis的DAO,方便
 *       {@link org.mybatis.spring.mapper.MapperScannerConfigurer}的扫描
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.TYPE)
@Documented
@Component
public @interface MyBatisDao {

	/**
	 * The value may indicate a suggestion for a logical component name, to be
	 * turned into a Spring bean in case of an autodetected component.
	 * 
	 * @return the suggested component name, if any
	 */
	String value() default "";

}