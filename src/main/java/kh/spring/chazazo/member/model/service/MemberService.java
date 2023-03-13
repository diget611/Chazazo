package kh.spring.chazazo.member.model.service;

import java.util.List;

import kh.spring.chazazo.member.model.vo.MemberVo;

public interface MemberService {
	
	public List<MemberVo> selectList();
	public MemberVo selectOne(String id);
	public int insert(MemberVo vo);
	public int update(MemberVo vo);
	public int delete(String id);
}
