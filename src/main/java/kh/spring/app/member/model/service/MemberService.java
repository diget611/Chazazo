package kh.spring.app.member.model.service;

import java.util.List;

import kh.spring.app.member.model.vo.MemberVo;

public interface MemberService {
	
	public List<MemberVo> selectList();
}
