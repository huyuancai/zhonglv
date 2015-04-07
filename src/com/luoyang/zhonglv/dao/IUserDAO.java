package com.luoyang.zhonglv.dao;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.dto.UserDTO;

public interface IUserDAO {
	/**
	 * 登录  根据用户名和密码用户信息
	 * @param userName
	 * @param password
	 * @return
	 * @throws DataAccessException
	 */
	public UserDTO getUserByUserNameAndPass(String userName, String password) throws DataAccessException;
}
