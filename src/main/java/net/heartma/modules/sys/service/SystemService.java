/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package net.heartma.modules.sys.service;

import java.util.List;

import net.heartma.modules.sys.dao.UserDao;
import net.heartma.modules.sys.entity.User;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 
 * @version v1.0.0
 * @author heartma
 * @date 2017年12月27日
 * @File SystemService.java
 * @URL www.heartma.net
 * @Desc 系统管理，安全相关实体的管理类,包括用户、角色、菜单
 */
@Service
@Transactional(readOnly = true)
public class SystemService implements InitializingBean {

	public static final String HASH_ALGORITHM = "SHA-1";
	public static final int HASH_INTERATIONS = 1024;
	public static final int SALT_SIZE = 8;
	@Autowired
	private UserDao userDao;

	/**
	 * 获取用户
	 * 
	 * @param id
	 * @return
	 */
	public User getUser(String id) {
		return userDao.get(id);
	}
	
	/**
	 * 查询所有用户
	 * @return
	 */
	public List<User> findAllList(User user){
		List<User> list = userDao.findAllList(user);
		return list;
	}
	
	/**
	 * 插入数据
	 * 
	 * @param user
	 */
	@Transactional(readOnly = false)
	public void saveUser(User user) {
		userDao.insert(user);
	}

	@Transactional(readOnly = false)
	public void deleteUser(User user) {
		userDao.delete(user);
	}

	@Override
	public void afterPropertiesSet() throws Exception {
	}
}
