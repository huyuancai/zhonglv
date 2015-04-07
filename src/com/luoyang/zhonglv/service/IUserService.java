package com.luoyang.zhonglv.service;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.vo.UserVO;

public interface IUserService {
	/**
	 * 登录  根据用户名和密码用户信息
	 * @param userName
	 * @param password
	 * @return
	 * @throws DataAccessException
	 */
	public UserVO getUserByUserNameAndPass(String userName, String password) throws DataAccessException;
}
