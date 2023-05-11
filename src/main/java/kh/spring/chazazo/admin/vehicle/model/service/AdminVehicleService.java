package kh.spring.chazazo.admin.vehicle.model.service;

import java.util.List;

import kh.spring.chazazo.admin.vehicle.model.dto.AdminVehicleInsertDto;
import kh.spring.chazazo.admin.vehicle.model.dto.AdminVehicleOneRespDto;
import kh.spring.chazazo.admin.vehicle.model.dto.AdminVehicleRespDto;
import kh.spring.chazazo.admin.vehicle.model.dto.AdminVehicleUpdateReqDto;
import kh.spring.chazazo.common.Pagination;

public interface AdminVehicleService {
	
	public int vehicleCount();
	public List<AdminVehicleRespDto> selectVehicleList(Pagination pagination);
	public AdminVehicleOneRespDto selectVehicleOne(String idx);
	public int insertVehicle(AdminVehicleInsertDto data);
	public int updateVehicle(AdminVehicleUpdateReqDto data);
	public int deleteVehicle(int idx);
	
}
