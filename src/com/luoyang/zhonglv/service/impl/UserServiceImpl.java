package com.luoyang.zhonglv.service.impl;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.service.BaseService;
import com.luoyang.zhonglv.dao.IUserDAO;
import com.luoyang.zhonglv.dto.UserDTO;
import com.luoyang.zhonglv.service.IUserService;
import com.luoyang.zhonglv.util.BeanUtils;
import com.luoyang.zhonglv.vo.UserVO;

public class UserServiceImpl extends BaseService implements IUserService {
	private IUserDAO userDAO;

	public UserVO getUserByUserNameAndPass(String userName, String password) throws DataAccessException{
		UserVO userVO = null;
		UserDTO userDTO = userDAO.getUserByUserNameAndPass(userName, password);
		if ( null != userDTO ) {
			userVO = BeanUtils.copyObject(userDTO, UserVO.class);
		}
		return userVO;
	}

	public void setUserDAO(IUserDAO userDAO) {
		this.userDAO = userDAO;
	}
}
