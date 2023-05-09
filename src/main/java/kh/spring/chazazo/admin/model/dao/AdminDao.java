package kh.spring.chazazo.admin.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.admin.model.dto.AdminChatRoomRespDto;
import kh.spring.chazazo.admin.model.dto.AdminCouponInsertReqDto;
import kh.spring.chazazo.admin.model.dto.AdminCouponManageRespDto;
import kh.spring.chazazo.admin.model.dto.AdminCouponUpdateReqDto;
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
import kh.spring.chazazo.admin.model.dto.AdminStatisticsRecentMonthDto;
import kh.spring.chazazo.admin.model.dto.AdminVehicleOneRespDto;
import kh.spring.chazazo.admin.model.dto.AdminVehicleRespDto;
import kh.spring.chazazo.admin.model.dto.AdminVehicleUpdateReqDto;
import kh.spring.chazazo.common.Pagination;

@Repository
public class AdminDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	// 메인페이지
	public int dayReservCount() {
		return sqlSession.selectOne("payment.dayReservCount");
	}
	public int dayReservSum() {
		return sqlSession.selectOne("payment.dayReservSum");
	}
	public int dayRegiCount() {
		return sqlSession.selectOne("member.dayRegiCount");
	}
	// 회원
	public int memberCount() {
		return sqlSession.selectOne("member.count");
	}
	public List<AdminMemberRespDto> selectMemberList(Pagination pagination) {
		return sqlSession.selectList("member.selectMemberList", pagination);
	}
	public AdminMemberRespDto selectMemberOne(String username) {
		return sqlSession.selectOne("member.selectMemberOne", username);
	}
	public int updateMember(AdminMemberUpdateReqDto data) {
		return sqlSession.update("member.updateInfoAdmin", data);
	}
	public int deleteMember(String username) {
		return sqlSession.update("member.deleteMember", username);
	}
	public int deleteMemberInfo(String username) {
		return sqlSession.update("member.deleteMemberInfo", username);
	}
	
	// 신고
	public int reportCount() {
		return sqlSession.selectOne("report.count");
	}
	public List<AdminReportRespDto> selectReportList(Pagination pagination) {
		return sqlSession.selectList("report.selectList", pagination);
	}
	public AdminReportRespDto selectReportOne(String idx) {
		return sqlSession.selectOne("report.selectOne", idx);
	}
	public int returnReport(AdminReportUpdateReqDto data) {
		return sqlSession.update("report.return", data);
	}
	public int confirmReport(AdminReportUpdateReqDto data) {
		return sqlSession.update("report.confirm", data);
	}
	public int returnReview(AdminReportUpdateReqDto data) {
		return sqlSession.update("review.return", data);
	}
	public int confirmReview(AdminReportUpdateReqDto data) {
		return sqlSession.update("review.confirm", data);
	}
	
	// 쿠폰
	public int couponCount() {
		return sqlSession.selectOne("couponmanage.count");
	}
	public List<AdminCouponManageRespDto> selectCouponList(Pagination pagination) {
		return sqlSession.selectList("couponmanage.selectList", pagination);
	}
	public AdminCouponManageRespDto selectCouponOne(String idx) {
		return sqlSession.selectOne("couponmanage.selectOne", idx);
	}
	public int insertCoupon(AdminCouponInsertReqDto data) {
		return sqlSession.insert("couponmanage.insert", data);
	}
	public int updateCoupon(AdminCouponUpdateReqDto data) {
		return sqlSession.update("couponmanage.update", data);
	}
	public int deleteCoupon(int idx) {
		return sqlSession.update("couponmanage.delete", idx);
	}
	
	// 1:1 문의
	public int requestCount() {
		return sqlSession.selectOne("request.count");
	}
	public List<AdminRequestRespDto> selectRequestList(Pagination pagination) {
		return sqlSession.selectList("request.selectList", pagination);
	}
	public List<AdminRequestRespDto> selectRequestList(Map<String, Integer> data) {
		return sqlSession.selectList("request.selectListMain", data);
	}
	public AdminRequestOneRespDto selectRequestOne(String idx) {
		return sqlSession.selectOne("request.selectOne", idx);
	}
	public int insertAnswer(Map<String, String> data) {
		return sqlSession.insert("answer.insert", data);
	}
	public int updateRequest(String idx) {
		return sqlSession.update("request.update", idx);
	}
	public int updateAnswer(Map<String, String> data) {
		return sqlSession.update("answer.update", data);
	}
	public int deleteRequest(String idx) {
		return sqlSession.delete("request.delete", idx);
	}
	public int deleteAnswer(String idx) {
		return sqlSession.delete("answer.delete", idx);
	}
	
	// 공지사항
	public int noticeCount() {
		return sqlSession.selectOne("notice.count");
	}
	public List<AdminNoticeRespDto> selectNoticeList(Pagination pagination) {
		return sqlSession.selectList("notice.selectList", pagination);
	}
	public AdminNoticeOneRespDto selectNoticeOne(String idx) {
		return sqlSession.selectOne("notice.selectOne", idx);
	}
	public int insertNotice(AdminNoticeInsertReqDto data) {
		return sqlSession.insert("notice.insert", data);
	}
	public int updateNotice(AdminNoticeUpdateReqDto data) {
		return sqlSession.update("notice.update", data);
	}
	public int deleteNotice(int idx) {
		return sqlSession.update("notice.delete", idx);
	}
	
	// 지점
	public int locationCount() {
		return sqlSession.selectOne("location.count");
	}
	public List<AdminLocationRespDto> selectLocationList(Pagination pagination) {
		return sqlSession.selectList("location.selectList", pagination);
	}
	public AdminLocationOneRespDto selectLocationOne(String idx) {
		return sqlSession.selectOne("location.selectOne", idx);
	}
	public int insertLocation(AdminLocationInsertReqDto data) {
		return sqlSession.insert("location.insert", data);
	}
	public int updateLocation(AdminLocationUpdateReqDto data) {
		return sqlSession.update("location.update", data);
	}
	public int deleteLocation(int idx) {
		return sqlSession.update("location.delete", idx);
	}
	
	// 차량
	public int vehicleCount() {
		return sqlSession.selectOne("vehicle.count");
	}
	public List<AdminVehicleRespDto> selectVehicleList(Pagination pagination) {
		return sqlSession.selectList("vehicle.selectListAdmin", pagination);
	}	
	public AdminVehicleOneRespDto selectVehicleOne(String idx) {
		return sqlSession.selectOne("vehicle.selectOneAdmin", idx);
	}
	public int updateVehicle(AdminVehicleUpdateReqDto data) {
		return sqlSession.update("vehicle.update", data);
	}
	public int deleteVehicle(int idx) {
		return sqlSession.update("vehicle.delete", idx);
	}
	
	// 예약
	public int reservCount() {
		return sqlSession.selectOne("payment.count");
	}
	public List<AdminReservRespDto> selectReservList(Pagination pagination) {
		return sqlSession.selectList("payment.selectList", pagination);
	}
	public AdminReservOneRespDto selectReservOne(int idx) {
		return sqlSession.selectOne("payment.selectOneForAdmin", idx);
	}
	
	// 채팅
	public List<AdminChatRoomRespDto> selectChatroomList(Pagination pagination) {
		return sqlSession.selectList("chatroom.selectChatroomList", pagination);
	}
	public int chatroomCount() {
		return sqlSession.selectOne("chatroom.count");
	}
	
	// 통계용
	public List<AdminReservByModelRespDto> selectByModel() {
		return sqlSession.selectList("payment.reservByModel");
	}
	public List<AdminStatisticsRecentMonthDto> recentMonth() {
		return sqlSession.selectList("payment.recentMonth");
	}
	public List<String> selectLocNameList() {
		return sqlSession.selectList("location.selectNameList");
	}
	public List<String> monthList() {
		return sqlSession.selectList("payment.monthList");
	}
	
	// etc
	public List<AdminLocationListRespDto> locationList() {
		return sqlSession.selectList("location.selectListForAdmin");
	}
}
