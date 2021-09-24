package com.jeong.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;

import com.jeong.model.User;
import com.jeong.util.DBUtil;

public class UserDao {

	private SqlSession sqlSession;
	
	public UserDao() {
		sqlSession = DBUtil.getSqlSession();
	}
	

	public User getUserByID(@Param("userId") int userId) {
		User user = sqlSession.selectOne("UserMapper.getUserbyId", userId);
		return user;
	}
}