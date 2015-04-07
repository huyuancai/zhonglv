package com.luoyang.zhonglv.dao.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.dao.BaseDAO;
import com.luoyang.zhonglv.dao.IUserDAO;
import com.luoyang.zhonglv.dto.UserDTO;

public class UserDAOImpl extends BaseDAO implements IUserDAO {
	private static final String MAPPER_PREFIX = "com.luoyang.zhonglv.dao.IUserDAO.";

	public UserDTO getUserByUserNameAndPass( String userName, String password ) throws DataAccessException {
		Map<String, String> userMap = new HashMap<String, String>();
		userMap.put( "userName", userName );
		userMap.put( "userPassword", password );
		return getSqlSession().selectOne( getMapperPrefix( "getUserByUserNameAndPass" ), userMap );
	}

	private String getMapperPrefix( String id ) {
		return MAPPER_PREFIX + id;
	}
}
