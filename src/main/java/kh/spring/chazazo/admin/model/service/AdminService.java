package kh.spring.chazazo.admin.model.service;

import java.util.List;
import java.util.Map;

import kh.spring.chazazo.admin.model.dto.AdminCouponManageRespDto;
import kh.spring.chazazo.admin.model.dto.AdminMemberRespDto;
import kh.spring.chazazo.admin.model.dto.AdminNoticeOneRespDto;
import kh.spring.chazazo.admin.model.dto.AdminNoticeRespDto;
import kh.spring.chazazo.admin.model.dto.AdminReportRespDto;
import kh.spring.chazazo.admin.model.dto.AdminRequestOneRespDto;
import kh.spring.chazazo.admin.model.dto.AdminRequestRespDto;
import kh.spring.chazazo.common.Pagination;
import kh.spring.chazazo.vehicle.model.dto.VehicleInfoDto;

public interface AdminService {
	
	public List<AdminMemberRespDto> selectMemberList();
	public AdminMemberRespDto selectMemberOne(String username);
	public int deleteMember(String username);
	public List<VehicleInfoDto> selectVehicleList();
	public List<AdminReportRespDto> selectReportList();
	public AdminReportRespDto selectReportOne(String idx);
	public String selectReviewContent(String idx);
	public List<AdminCouponManageRespDto> selectCouponList();
	public AdminCouponManageRespDto selectCouponOne(String idx);
	public int requestCount();
	public List<AdminRequestRespDto> selectRequestList(Pagination pagination);
	public List<AdminRequestRespDto> selectRequestList(Map<String, Integer> data);
	public AdminRequestOneRespDto selectRequestOne(String idx);
	public int insertAnswer(Map<String, String> data, String idx);
	public int updateAnswer(Map<String, String> data, String idx);
	public int deleteRequest(String idx);
	public List<AdminNoticeRespDto> selectNoticeList();
	public AdminNoticeOneRespDto selectNoticeOne(String idx);
	public int noticeCount();
	
}
