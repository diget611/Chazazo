package kh.spring.chazazo.member.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.member.model.dto.MemberReqDto;
import kh.spring.chazazo.member.model.dto.MemberInfoReqDto;

@Repository
public class MemberDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int insert(MemberReqDto dto) {
		return sqlSession.insert("member.insert", dto);
	}
	
	public int insertInfo(MemberInfoReqDto dto) {
		return sqlSession.insert("member.insertInfo", dto);
	}
	
	public int checkDup(String username) {
		return sqlSession.selectOne("member.checkDup", username);
	}
	
	public List<String> forFindId(String email) {
		return sqlSession.selectList("member.forFindId", email);
	}
}
