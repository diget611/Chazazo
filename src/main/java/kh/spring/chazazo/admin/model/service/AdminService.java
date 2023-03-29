package kh.spring.chazazo.admin.model.service;

import java.util.List;

import kh.spring.chazazo.admin.model.dto.AdminMemberRespDto;
import kh.spring.chazazo.admin.model.dto.AdminReportRespDto;
import kh.spring.chazazo.vehicle.model.dto.VehicleInfoDto;

public interface AdminService {
	
	public List<AdminMemberRespDto> selectMemberList();
	public List<VehicleInfoDto> selectVehicleList();
	public List<AdminReportRespDto> selectReportList();
	
}
