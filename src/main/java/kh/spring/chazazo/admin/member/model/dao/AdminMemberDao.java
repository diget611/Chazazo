package kh.spring.chazazo.admin.member.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.admin.member.model.dto.AdminMemberRespDto;
import kh.spring.chazazo.admin.member.model.dto.AdminMemberUpdateReqDto;
import kh.spring.chazazo.common.Pagination;

@Repository
public class AdminMemberDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int memberCount() {
		return sqlSession.selectOne("member.count");
	}
	public List<AdminMemberRespDto> selectMemberList(Pagination pagination) {
		return sqlSession.selectList("member.selectMemberList", pagination);
	}
	public AdminMemberRespDto selectMemberOne(String username) {
		return sqlSession.selectOne("member.selectMemberOne", username);
	}
	public int updateMember(AdminMemberUpdateReqDto data) {
		return sqlSession.update("member.updateInfoAdmin", data);
	}
	public int deleteMember(String username) {
		return sqlSession.update("member.deleteMember", username);
	}
	public int deleteMemberInfo(String username) {
		return sqlSession.update("member.deleteMemberInfo", username);
	}
	
}
