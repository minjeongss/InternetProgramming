package com.jeong.dao;

import java.io.InputStream;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;

import com.jeong.model.PerformDTO;
import com.jeong.util.DBUtil;

public class PerformDAO {
	
	private SqlSession sqlSession;
	
	public PerformDAO() {
		sqlSession = DBUtil.getSqlSession();
	}
	
	public PerformDAO getPerformById(@Param("id") int id) {
		PerformDAO member=sqlSession.selectOne("PerformMapper.getPerformById",id);
		return member;
	}
	public int PerformInsert(@Param("dto") PerformDAO dto) {
		int succ = 0;
		succ = sqlSession.insert("PerformMapper.PerformInsert", dto);
		sqlSession.commit();
		return succ;
	}
	public List<PerformDTO> PerformSearchAll() {
		List<PerformDTO> list = null;
		list = sqlSession.selectList("PerformMapper.PerformSearchAll");
		return list;
	} 
	public int PerformDelete(@Param("id") String id) {
		int succ = 0;
		succ = sqlSession.delete("PerformMapper.PerformDelete", id);
		sqlSession.commit();
		return succ;
	}
	public int PerformUpdate(@Param("dto") PerformDTO dto) {
		int succ = 0;
		succ = sqlSession.update("PerformMapper.PerformUpdate", dto);
		sqlSession.commit();
		return succ;
	} 
	public int VipSeatUpdate(@Param("dto") PerformDTO dto) {
		int succ=0;
		succ = sqlSession.update("PerformMapper.PerformUpdate", dto);
		sqlSession.commit();
		return succ;
	}
	
	public int RSeatUpdate(@Param("dto") PerformDTO dto) {
		int succ=0;
		succ = sqlSession.update("PerformMapper.PerformUpdate", dto);
		sqlSession.commit();
		return succ;
	}
	public int SSeatUpdate(@Param("dto") PerformDTO dto) {
		int succ=0;
		succ = sqlSession.update("PerformMapper.PerformUpdate", dto);
		sqlSession.commit();
		return succ;
	}public int ASeatUpdate(@Param("dto") PerformDTO dto) {
		int succ=0;
		succ = sqlSession.update("PerformMapper.PerformUpdate", dto);
		sqlSession.commit();
		return succ;
	}
}