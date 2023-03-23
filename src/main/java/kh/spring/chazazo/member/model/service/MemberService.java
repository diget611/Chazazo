package kh.spring.chazazo.member.model.service;

import kh.spring.chazazo.member.model.dto.MemberReqDto;

import java.util.List;

import kh.spring.chazazo.member.model.dto.MemberInfoReqDto;

public interface MemberService {
	
	public int insert(MemberReqDto memberDto, MemberInfoReqDto memberInfoDto);
	public int checkDup(String username);
	public List<String> findId(String email);
}
