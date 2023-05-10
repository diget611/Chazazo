package kh.spring.chazazo.admin.mainpage.model.service;

import java.util.List;

import kh.spring.chazazo.admin.mainpage.model.dto.AdminCarTypeListRespDto;
import kh.spring.chazazo.admin.mainpage.model.dto.AdminFuelTypeListRespDto;

public interface AdminService {
	
	// 메인페이지
	public int dayReservCount();
	public int dayReservSum();
	public int dayRegiCount();
	public int dayReqCount();
	public List<AdminCarTypeListRespDto> cartypeList();
	public List<AdminFuelTypeListRespDto> fueltypeList();
	
}
