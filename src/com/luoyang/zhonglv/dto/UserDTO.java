package com.luoyang.zhonglv.dto;

import java.sql.Timestamp;

public class UserDTO {
	private long userId;
	private String userName;
	private String userSex;
	private String userPassword;
	private String userMail;
	private Timestamp userRegisterTime;

	public long getUserId() {
		return userId;
	}

	public void setUserId( long userId ) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName( String userName ) {
		this.userName = userName;
	}

	public String getUserSex() {
		return userSex;
	}

	public void setUserSex( String userSex ) {
		this.userSex = userSex;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword( String userPassword ) {
		this.userPassword = userPassword;
	}

	public String getUserMail() {
		return userMail;
	}

	public void setUserMail( String userMail ) {
		this.userMail = userMail;
	}

	public Timestamp getUserRegisterTime() {
		return userRegisterTime;
	}

	public void setUserRegisterTime( Timestamp userRegisterTime ) {
		this.userRegisterTime = userRegisterTime;
	}

}
