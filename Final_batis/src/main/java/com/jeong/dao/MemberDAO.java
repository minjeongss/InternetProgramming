package com.jeong.dao;

import java.io.InputStream;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;

import com.jeong.model.MemberDTO;
import com.jeong.util.DBUtil;

public class MemberDAO {
	
	private SqlSession sqlSession;
	
	public MemberDAO() {
		sqlSession = DBUtil.getSqlSession();
	}
	
	public MemberDTO getMemberById(@Param("id") String id) {
		MemberDTO member=sqlSession.selectOne("memberMapper.getMemberById",id);
		return member;
	}
	public int memberInsert(@Param("dto") MemberDTO dto) {
		int succ = 0;
		succ = sqlSession.insert("memberMapper.memberInsert", dto);
		sqlSession.commit();
		return succ;
	}
	public List<MemberDTO> memberSearchAll() {
		List<MemberDTO> list = null;
		list = sqlSession.selectList("memberMapper.memberSearchAll");
		return list;
	} 
	public int memberDelete(@Param("id") String id) {
		int succ = 0;
		succ = sqlSession.delete("memberMapper.memberDelete", id);
		sqlSession.commit();
		return succ;
	}
	public int memberUpdate(@Param("dto") MemberDTO dto) {
		int succ = 0;
		succ = sqlSession.update("memberMapper.memberUpdate", dto);
		sqlSession.commit();
		return succ;
	} 
}
