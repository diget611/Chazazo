package kh.spring.chazazo.member.model.service;

import java.util.List;

import kh.spring.chazazo.member.model.vo.MemberVo;

public interface MemberService {
	
	public List<MemberVo> selectList();
}
