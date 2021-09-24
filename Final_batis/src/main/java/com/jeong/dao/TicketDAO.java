package com.jeong.dao;

import java.io.InputStream;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;

import com.jeong.model.TicketDTO;
import com.jeong.util.DBUtil;

public class TicketDAO {
	
	private SqlSession sqlSession;
	
	public TicketDAO() {
		sqlSession = DBUtil.getSqlSession();
	}
	
	public TicketDAO getTicketById(@Param("id") int id) {
		TicketDAO member=sqlSession.selectOne("TicketMapper.getTicketById",id);
		return member;
	}
	public int ticketrInsert(@Param("dto") TicketDAO dto) {
		int succ = 0;
		succ = sqlSession.insert("TicketMapper.TicketInsert", dto);
		sqlSession.commit();
		return succ;
	}
	public List<TicketDTO> memberSearchAll() {
		List<TicketDTO> list = null;
		list = sqlSession.selectList("TicketMapper.TicketSearchAll");
		return list;
	} 
	public int ticketDelete(@Param("id") String id) {
		int succ = 0;
		succ = sqlSession.delete("TicketMapper.TicketDelete", id);
		sqlSession.commit();
		return succ;
	}
	public int ticketUpdate(@Param("dto") TicketDTO dto) {
		int succ = 0;
		succ = sqlSession.update("TicketMapper.TicketUpdate", dto);
		sqlSession.commit();
		return succ;
	} 
}
