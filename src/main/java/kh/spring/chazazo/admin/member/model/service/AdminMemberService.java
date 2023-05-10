package kh.spring.chazazo.admin.member.model.service;

import java.util.List;

import kh.spring.chazazo.admin.member.model.dto.AdminMemberRespDto;
import kh.spring.chazazo.admin.member.model.dto.AdminMemberUpdateReqDto;
import kh.spring.chazazo.common.Pagination;

public interface AdminMemberService {
	
	public int memberCount();
	public List<AdminMemberRespDto> selectMemberList(Pagination pagination);
	public AdminMemberRespDto selectMemberOne(String username);
	public int updateMember(AdminMemberUpdateReqDto data);
	public int deleteMember(String username);
	
}
