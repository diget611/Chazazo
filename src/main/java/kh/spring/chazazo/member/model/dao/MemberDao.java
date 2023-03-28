package kh.spring.chazazo.member.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.member.model.dto.MemberReqDto;
import kh.spring.chazazo.member.model.dto.MemberInfoReqDto;
import kh.spring.chazazo.member.model.dto.MemberInfoRespDto;

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
	
	public List<String> findId(String email) {
		return sqlSession.selectList("member.findId", email);
	}
	
	public String forFindPass(String username) {
		return sqlSession.selectOne("member.forFindPass", username);
	}
	
	public int findPass(Map<String, String> info) {
		return sqlSession.update("member.findPass", info);
	}

	public MemberInfoReqDto selectOne(int idx) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("member.selectOne", idx);
	}
	
	
}
