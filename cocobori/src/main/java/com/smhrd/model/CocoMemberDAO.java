package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class CocoMemberDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession(true);
	
	//회원가입
	public int insertMember(CocoMemberDTO dto) {
		int cnt =0;
		cnt = sqlSession.insert("com.smhrd.database.CocoMemberMapper.insertMember", dto);
		sqlSession.close();
		return cnt;
	}

	public CocoMemberDTO selectMember(CocoMemberDTO dto) {
	
		CocoMemberDTO Member = null;
		Member = sqlSession.selectOne("com.smhrd.database.CocoMemberMapper.selectMember", Member);
		sqlSession.close();
		return Member;
	}
}
