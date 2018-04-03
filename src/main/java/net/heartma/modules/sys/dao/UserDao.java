package net.heartma.modules.sys.dao;

import net.heartma.common.persistence.CrudDao;
import net.heartma.common.persistence.annotation.MyBatisDao;
import net.heartma.modules.sys.entity.User;

/**
 * @version v1.0.0
 * @author heartma
 * @date 2017年12月27日
 * @File UserDao.java
 * @URL www.heartma.net
 * @Desc 用户DAO接口
 */
@MyBatisDao
public interface UserDao extends CrudDao<User> {

}
