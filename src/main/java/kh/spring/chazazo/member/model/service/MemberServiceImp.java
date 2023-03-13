package kh.spring.chazazo.member.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.member.model.dao.MemberDao;
import kh.spring.chazazo.member.model.vo.MemberVo;

@Service
public class MemberServiceImp implements MemberService {

	@Autowired
	private MemberDao dao;
	
	@Override
	public List<MemberVo> selectList() {
		return dao.selectList();
	}

	@Override
	public MemberVo selectOne(String id) {
		return dao.selectOne(id);
	}

	@Override
	public int insert(MemberVo vo) {
		return dao.insert(vo);
	}

	@Override
	public int update(MemberVo vo) {
		return dao.update(vo);
	}

	@Override
	public int delete(String id) {
		return dao.delete(id);
	}

}
