package kh.spring.chazazo.admin.model.service;

import java.util.List;

import kh.spring.chazazo.admin.model.dto.AdminMemberRespDto;
import kh.spring.chazazo.admin.model.dto.AdminReportRespDto;
import kh.spring.chazazo.vehicle.model.dto.VehicleInfoDto;

public interface AdminService {
	
	public List<AdminMemberRespDto> selectMemberList();
	public AdminMemberRespDto selectMemberOne(String username);
	public int deleteMember(String username);
	public List<VehicleInfoDto> selectVehicleList();
	public List<AdminReportRespDto> selectReportList();
	public AdminReportRespDto selectReportOne(String idx);
	public String selectReviewContent(String idx);
}
