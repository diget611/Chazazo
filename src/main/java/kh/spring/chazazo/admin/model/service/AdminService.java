package kh.spring.chazazo.admin.model.service;

import java.util.List;
import java.util.Map;

import kh.spring.chazazo.admin.model.dto.AdminCouponManageRespDto;
import kh.spring.chazazo.admin.model.dto.AdminLocationOneRespDto;
import kh.spring.chazazo.admin.model.dto.AdminLocationRespDto;
import kh.spring.chazazo.admin.model.dto.AdminMemberRespDto;
import kh.spring.chazazo.admin.model.dto.AdminNoticeOneRespDto;
import kh.spring.chazazo.admin.model.dto.AdminNoticeRespDto;
import kh.spring.chazazo.admin.model.dto.AdminReportRespDto;
import kh.spring.chazazo.admin.model.dto.AdminRequestOneRespDto;
import kh.spring.chazazo.admin.model.dto.AdminRequestRespDto;
import kh.spring.chazazo.admin.model.dto.AdminVehicleOneRespDto;
import kh.spring.chazazo.admin.model.dto.AdminVehicleRespDto;
import kh.spring.chazazo.common.Pagination;

public interface AdminService {
	
	public int memberCount();
	public List<AdminMemberRespDto> selectMemberList(Pagination pagination);
	public AdminMemberRespDto selectMemberOne(String username);
	public int deleteMember(String username);
	public int reportCount();
	public List<AdminReportRespDto> selectReportList(Pagination pagination);
	public AdminReportRespDto selectReportOne(String idx);
	public String selectReviewContent(String idx);
	public int couponCount();
	public List<AdminCouponManageRespDto> selectCouponList(Pagination pagination);
	public AdminCouponManageRespDto selectCouponOne(String idx);
	public int requestCount();
	public List<AdminRequestRespDto> selectRequestList(Pagination pagination);
	public List<AdminRequestRespDto> selectRequestList(Map<String, Integer> data);
	public AdminRequestOneRespDto selectRequestOne(String idx);
	public int insertAnswer(Map<String, String> data, String idx);
	public int updateAnswer(Map<String, String> data, String idx);
	public int deleteRequest(String idx);
	public int noticeCount();
	public List<AdminNoticeRespDto> selectNoticeList(Pagination pagination);
	public AdminNoticeOneRespDto selectNoticeOne(String idx);
	public int locationCount();
	public List<AdminLocationRespDto> selectLocationList(Pagination pagination);
	public AdminLocationOneRespDto selectLocationOne(String idx);
	public List<AdminVehicleRespDto> selectVehicleList(Pagination pagination);
	public AdminVehicleOneRespDto selectVehicleOne(String idx);
	public int vehicleCount();
	
}
