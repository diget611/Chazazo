package kh.spring.chazazo.admin.mainpage.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.admin.mainpage.model.dao.AdminDao;
import kh.spring.chazazo.admin.mainpage.model.dto.AdminCarTypeListRespDto;
import kh.spring.chazazo.admin.mainpage.model.dto.AdminFuelTypeListRespDto;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao dao;
	
	@Override
	public int dayReservCount() {
		return dao.dayReservCount();
	}	
	@Override
	public int dayReservSum() {
		return dao.dayReservSum();
	}
	@Override
	public int dayRegiCount() {
		return dao.dayRegiCount();
	}
	@Override
	public int dayReqCount() {
		return dao.dayReqCount();
	}
	@Override
	public List<AdminCarTypeListRespDto> cartypeList() {
		return dao.cartypeList();
	}
	@Override
	public List<AdminFuelTypeListRespDto> fueltypeList() {
		return dao.fueltypeList();
	}

}
