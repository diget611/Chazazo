package kh.spring.chazazo.member.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.member.model.vo.MemberVo;

@Repository
public class MemberDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<MemberVo> selectList() {
		return sqlSession.selectList("memberMapper.selectList");
	}
	
	public MemberVo selectOne(String id) {
		return sqlSession.selectOne("memberMapper.selectOne", id);
	}
	
	public int insert(MemberVo vo) {
		return sqlSession.insert("memberMapper.insert", vo);
	}
	
	public int update(MemberVo vo) {
		return sqlSession.update("memberMapper.update", vo);
	}
	
	public int delete(String id) {
		return sqlSession.delete("memberMapper.delete", id);
	}
}
