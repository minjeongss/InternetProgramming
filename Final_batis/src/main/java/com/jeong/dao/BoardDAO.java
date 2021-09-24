package com.jeong.dao;

import java.io.InputStream;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;

import com.jeong.model.BoardDTO;
import com.jeong.util.DBUtil;

public class BoardDAO {
	
	private SqlSession sqlSession;
	
	public BoardDAO() {
		sqlSession = DBUtil.getSqlSession();
	}
	
	public BoardDTO getBoardById(@Param("id") int id) {
		BoardDTO member=sqlSession.selectOne("BoardMapper.getBoardbyId",id);
		return member;
	}
	public int BoardInsert(@Param("dto") BoardDTO dto) {
		int succ = 0;
		succ = sqlSession.insert("BoardMapper.BoardInsert", dto);
		sqlSession.commit();
		return succ;
	}
	public List<BoardDTO> BoardSearchAll() {
		List<BoardDTO> list = null;
		list = sqlSession.selectList("BoardMapper.BoardSearchAll");
		return list;
	} 
	public int BoardrDelete(@Param("id") String id) {
		int succ = 0;
		succ = sqlSession.delete("BoardMapper.BoardDelete", id);
		sqlSession.commit();
		return succ;
	}
	public int BoardUpdate(@Param("dto") BoardDTO dto) {
		int succ = 0;
		succ = sqlSession.update("BoardMapper.BoardUpdate", dto);
		sqlSession.commit();
		return succ;
	} 
}