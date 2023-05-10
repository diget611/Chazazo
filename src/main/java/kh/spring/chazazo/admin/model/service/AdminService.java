package kh.spring.chazazo.admin.model.service;

import java.util.List;
import java.util.Map;

import kh.spring.chazazo.admin.model.dto.AdminCarTypeListRespDto;
import kh.spring.chazazo.admin.model.dto.AdminChatRoomRespDto;
import kh.spring.chazazo.admin.model.dto.AdminCouponInsertReqDto;
import kh.spring.chazazo.admin.model.dto.AdminCouponManageRespDto;
import kh.spring.chazazo.admin.model.dto.AdminCouponUpdateReqDto;
import kh.spring.chazazo.admin.model.dto.AdminFuelTypeListRespDto;
import kh.spring.chazazo.admin.model.dto.AdminLocationInsertReqDto;
import kh.spring.chazazo.admin.model.dto.AdminLocationListRespDto;
import kh.spring.chazazo.admin.model.dto.AdminLocationOneRespDto;
import kh.spring.chazazo.admin.model.dto.AdminLocationRespDto;
import kh.spring.chazazo.admin.model.dto.AdminLocationUpdateReqDto;
import kh.spring.chazazo.admin.model.dto.AdminMemberRespDto;
import kh.spring.chazazo.admin.model.dto.AdminMemberUpdateReqDto;
import kh.spring.chazazo.admin.model.dto.AdminNoticeInsertReqDto;
import kh.spring.chazazo.admin.model.dto.AdminNoticeOneRespDto;
import kh.spring.chazazo.admin.model.dto.AdminNoticeRespDto;
import kh.spring.chazazo.admin.model.dto.AdminNoticeUpdateReqDto;
import kh.spring.chazazo.admin.model.dto.AdminReportRespDto;
import kh.spring.chazazo.admin.model.dto.AdminReportUpdateReqDto;
import kh.spring.chazazo.admin.model.dto.AdminRequestOneRespDto;
import kh.spring.chazazo.admin.model.dto.AdminRequestRespDto;
import kh.spring.chazazo.admin.model.dto.AdminReservByModelRespDto;
import kh.spring.chazazo.admin.model.dto.AdminReservOneRespDto;
import kh.spring.chazazo.admin.model.dto.AdminReservRespDto;
import kh.spring.chazazo.admin.model.dto.AdminStatisticsCountRespDto;
import kh.spring.chazazo.admin.model.dto.AdminStatisticsRecentMonthDto;
import kh.spring.chazazo.admin.model.dto.AdminStatisticsReqDto;
import kh.spring.chazazo.admin.model.dto.AdminStatisticsSumRespDto;
import kh.spring.chazazo.admin.model.dto.AdminVehicleOneRespDto;
import kh.spring.chazazo.admin.model.dto.AdminVehicleRespDto;
import kh.spring.chazazo.admin.model.dto.AdminVehicleUpdateReqDto;
import kh.spring.chazazo.common.Pagination;

public interface AdminService {
	
	// 메인페이지
	public int dayReservCount();
	public int dayReservSum();
	public int dayRegiCount();
	public int dayReqCount();
	
	// 회원
	public int memberCount();
	public List<AdminMemberRespDto> selectMemberList(Pagination pagination);
	public AdminMemberRespDto selectMemberOne(String username);
	public int updateMember(AdminMemberUpdateReqDto data);
	public int deleteMember(String username);
	
	// 신고
	public int reportCount();
	public List<AdminReportRespDto> selectReportList(Pagination pagination);
	public AdminReportRespDto selectReportOne(String idx);
	public int returnReport(AdminReportUpdateReqDto data);
	public int confirmReport(AdminReportUpdateReqDto data);
	
	// 쿠폰
	public int couponCount();
	public List<AdminCouponManageRespDto> selectCouponList(Pagination pagination);
	public AdminCouponManageRespDto selectCouponOne(String idx);
	public int insertCoupon(AdminCouponInsertReqDto data);
	public int updateCoupon(AdminCouponUpdateReqDto data);
	public int deleteCoupon(int idx);
	
	// 1:1 문의
	public int requestCount();
	public List<AdminRequestRespDto> selectRequestList(Pagination pagination);
	public List<AdminRequestRespDto> selectRequestList(Map<String, Integer> data);
	public AdminRequestOneRespDto selectRequestOne(String idx);
	public int insertAnswer(Map<String, String> data, String idx);
	public int updateAnswer(Map<String, String> data, String idx);
	public int deleteRequest(String idx);
	
	// 공지사항
	public int noticeCount();
	public List<AdminNoticeRespDto> selectNoticeList(Pagination pagination);
	public AdminNoticeOneRespDto selectNoticeOne(String idx);
	public int insertNotice(AdminNoticeInsertReqDto data);
	public int deleteNotice(int idx);
	public int updateNotice(AdminNoticeUpdateReqDto data);
	
	// 지점
	public int locationCount();
	public List<AdminLocationRespDto> selectLocationList(Pagination pagination);
	public AdminLocationOneRespDto selectLocationOne(String idx);
	public int insertLocation(AdminLocationInsertReqDto data);
	public int updateLocation(AdminLocationUpdateReqDto data);
	public int deleteLocation(int idx);
	
	// 차량
	public int vehicleCount();
	public List<AdminVehicleRespDto> selectVehicleList(Pagination pagination);
	public AdminVehicleOneRespDto selectVehicleOne(String idx);
	public int updateVehicle(AdminVehicleUpdateReqDto data);
	public int deleteVehicle(int idx);
	
	// 예약
	public int reservCount();
	public List<AdminReservRespDto> selectReservList(Pagination pagination);
	public AdminReservOneRespDto selectReservOne(int idx);
	public int cancelReservation(int idx);
	
	// 채팅
	public List<AdminChatRoomRespDto> selectChatroomList(Pagination pagination);
	public int chatroomCount();
	
	// 통계용
	public List<AdminReservByModelRespDto> selectByModel();
	public List<AdminStatisticsRecentMonthDto> recentMonth();
	public List<String> selectLocNameList();
	public List<String> monthList();
	public List<AdminStatisticsCountRespDto> selectCountForChart(AdminStatisticsReqDto data);
	public List<AdminStatisticsSumRespDto> selectSumForChart(AdminStatisticsReqDto data);
	
	// etc
	public List<AdminLocationListRespDto> locationList();
	public List<AdminCarTypeListRespDto> cartypeList();
	public List<AdminFuelTypeListRespDto> fueltypeList();
	
}
