package kh.spring.chazazo.admin.model.service;

import java.util.List;

import kh.spring.chazazo.admin.model.dto.AdminMemberRespDto;

public interface AdminService {
	
	public List<AdminMemberRespDto> selectMemberList();
	
}
