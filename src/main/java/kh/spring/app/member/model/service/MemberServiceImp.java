package kh.spring.app.member.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.app.member.model.dao.MemberDao;
import kh.spring.app.member.model.vo.MemberVo;

@Service
public class MemberServiceImp implements MemberService{
	
	@Autowired
	private MemberDao dao;
	
	@Override
	public List<MemberVo> selectList() {
		return dao.selectList();
	}

}
