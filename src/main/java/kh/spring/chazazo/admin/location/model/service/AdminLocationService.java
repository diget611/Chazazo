package kh.spring.chazazo.admin.location.model.service;

import java.util.List;

import kh.spring.chazazo.admin.location.model.dto.AdminLocationInsertReqDto;
import kh.spring.chazazo.admin.location.model.dto.AdminLocationListRespDto;
import kh.spring.chazazo.admin.location.model.dto.AdminLocationOneRespDto;
import kh.spring.chazazo.admin.location.model.dto.AdminLocationRespDto;
import kh.spring.chazazo.admin.location.model.dto.AdminLocationUpdateReqDto;
import kh.spring.chazazo.common.Pagination;

public interface AdminLocationService {
	
	public int locationCount();
	public List<AdminLocationRespDto> selectLocationList(Pagination pagination);
	public AdminLocationOneRespDto selectLocationOne(String idx);
	public int insertLocation(AdminLocationInsertReqDto data);
	public int updateLocation(AdminLocationUpdateReqDto data);
	public int deleteLocation(int idx);
	public List<AdminLocationListRespDto> locationList();

}
