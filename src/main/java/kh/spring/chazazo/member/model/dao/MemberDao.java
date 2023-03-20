package kh.spring.chazazo.member.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.member.model.dto.MemberDto;
import kh.spring.chazazo.member.model.dto.MemberInfoDto;

@Repository
public class MemberDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int insert(MemberDto dto) {
		return sqlSession.insert("memberMapper.insert", dto);
	}
	
	public int insertInfo(MemberInfoDto dto) {
		return sqlSession.insert("memberMapper.insertInfo", dto);
	}
}
