package kh.spring.chazazo.admin.member.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kh.spring.chazazo.admin.member.model.dao.AdminMemberDao;
import kh.spring.chazazo.admin.member.model.dto.AdminMemberRespDto;
import kh.spring.chazazo.admin.member.model.dto.AdminMemberUpdateReqDto;
import kh.spring.chazazo.common.Pagination;

@Service
public class AdminMemberServiceImpl implements AdminMemberService {
	
	@Autowired
	private AdminMemberDao dao;
	
	@Override
	public int memberCount() {
		return dao.memberCount();
	}
	@Override
	public List<AdminMemberRespDto> selectMemberList(Pagination pagination) {
		return dao.selectMemberList(pagination);
	}
	@Override
	public AdminMemberRespDto selectMemberOne(String username) {
		return dao.selectMemberOne(username);
	}
	public int updateMember(AdminMemberUpdateReqDto data) {
		return dao.updateMember(data);
	}
	@Override
	@Transactional
	public int deleteMember(String username) {
		int result = 0;
		if(dao.deleteMember(username) == 1) {
			result = dao.deleteMemberInfo(username);
		}
		return result;
	}

}
