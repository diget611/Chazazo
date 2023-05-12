package kh.spring.chazazo.member.model.service;

import kh.spring.chazazo.member.model.dto.MemberReqDto;

import java.util.List;

import kh.spring.chazazo.member.model.dto.MemberInfoRespDto;

public interface MemberService {
	
	public int insert(MemberReqDto memberDto);
	public int checkDup(String username);
	public List<String> findId(String email);
	public String forFindPass(String username);
	public int findPass(String username, String password);
	public MemberInfoRespDto selectMypageOne(String username);
	public String userPass(String username);
	public MemberInfoRespDto getMemberInfo(String username);
	public int updateInfo(MemberInfoRespDto dto);
	public int deleteMember(String username);
	public int countMember(String username);

}
