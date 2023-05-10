package kh.spring.chazazo.admin.location.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.admin.location.model.dao.AdminLocationDao;
import kh.spring.chazazo.admin.location.model.dto.AdminLocationInsertReqDto;
import kh.spring.chazazo.admin.location.model.dto.AdminLocationListRespDto;
import kh.spring.chazazo.admin.location.model.dto.AdminLocationOneRespDto;
import kh.spring.chazazo.admin.location.model.dto.AdminLocationRespDto;
import kh.spring.chazazo.admin.location.model.dto.AdminLocationUpdateReqDto;
import kh.spring.chazazo.common.Pagination;

@Service
public class AdminLocationServiceImpl implements AdminLocationService {
	
	@Autowired
	private AdminLocationDao dao;
	
	@Override
	public int locationCount() {
		return dao.locationCount();
	}
	@Override
	public List<AdminLocationRespDto> selectLocationList(Pagination pagination) {
		return dao.selectLocationList(pagination);
	}
	@Override
	public AdminLocationOneRespDto selectLocationOne(String idx) {
		return dao.selectLocationOne(idx);
	}
	@Override
	public int insertLocation(AdminLocationInsertReqDto data) {
		return dao.insertLocation(data);
	}
	@Override
	public int updateLocation(AdminLocationUpdateReqDto data) {
		return dao.updateLocation(data);
	}
	@Override
	public int deleteLocation(int idx) {
		return dao.deleteLocation(idx);
	}
	@Override
	public List<AdminLocationListRespDto> locationList() {
		return dao.locationList();
	}
	
}
