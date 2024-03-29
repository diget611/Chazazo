package kh.spring.chazazo.member.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.member.model.dto.MemberReqDto;

import kh.spring.chazazo.member.model.dto.MemberInfoRespDto;

@Repository
public class MemberDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	// 회원가입
	public int insert(MemberReqDto dto) {
		return sqlSession.insert("member.insert", dto);
	}
	
	// 회원가입 시 유저 정보 입력
	public int insertInfo(MemberReqDto dto) {
		return sqlSession.insert("member.insertInfo", dto);
	}
	
	// 아이디 중복 체크
	public int checkDup(String username) {
		return sqlSession.selectOne("member.checkDup", username);
	}
	
	// 아이디 찾기
	public List<String> findId(String email) {
		return sqlSession.selectList("member.findId", email);
	}
	
	// 비밀번호 찾기
	public String forFindPass(String username) {
		return sqlSession.selectOne("member.forFindPass", username);
	}
	
	// 비밀번호 찾기 비밀번호 변경용
	public int findPass(Map<String, String> info) {
		return sqlSession.update("member.findPass", info);
	}

	//마이페이지 회원정보
	public MemberInfoRespDto selectMypageOne(String username) {
		return sqlSession.selectOne("member.selectMypageOne", username);
	}
	
	//회원정보수정
	public int updateInfo(MemberInfoRespDto dto) {
		return sqlSession.update("member.updateInfo", dto);
	}
	
	//비밀번호확인
	public String userPass(String username) {
		return sqlSession.selectOne("member.userPass", username);
	}
	
	//결제창에서 정보 받아오기
	public MemberInfoRespDto getMemberInfo(String username) {
		return sqlSession.selectOne("member.getMemberInfo", username);
	}
	
	//회원 탈퇴
	public int deleteMember(String username) {
		return sqlSession.delete("member.deleteMember", username);
	}
	
	//회원탈퇴 저장
	public int deleteMemberInfo(String username) {
		return sqlSession.update("member.deleteMemberInfo", username);
	}
	
	public int countMember(String username) {
		return sqlSession.selectOne("member.countMember",username);
	}
}
