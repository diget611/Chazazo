package kh.spring.chazazo.member.model.service;

import kh.spring.chazazo.member.model.dto.MemberDto;
import kh.spring.chazazo.member.model.dto.MemberInfoDto;

public interface MemberService {
	
	public int insert(MemberDto memberDto, MemberInfoDto memberInfoDto);
}
