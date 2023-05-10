package kh.spring.chazazo.admin.vehicle.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.admin.vehicle.model.dao.AdminVehicleDao;
import kh.spring.chazazo.admin.vehicle.model.dto.AdminVehicleOneRespDto;
import kh.spring.chazazo.admin.vehicle.model.dto.AdminVehicleRespDto;
import kh.spring.chazazo.admin.vehicle.model.dto.AdminVehicleUpdateReqDto;
import kh.spring.chazazo.common.Pagination;

@Service
public class AdminVehicleServiceImpl implements AdminVehicleService {
	
	@Autowired
	private AdminVehicleDao dao;
	
	@Override
	public int vehicleCount() {
		return dao.vehicleCount();
	}
	@Override
	public List<AdminVehicleRespDto> selectVehicleList(Pagination pagination) {
		return dao.selectVehicleList(pagination);
	}
	@Override
	public AdminVehicleOneRespDto selectVehicleOne(String idx) {
		return dao.selectVehicleOne(idx);
	}
	@Override
	public int updateVehicle(AdminVehicleUpdateReqDto data) {
		return dao.updateVehicle(data);
	}
	@Override
	public int deleteVehicle(int idx) {
		return dao.deleteVehicle(idx);
	}
	
}
