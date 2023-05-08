package kh.spring.chazazo.admin.controller;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import kh.spring.chazazo.admin.model.dto.AdminCouponInsertReqDto;
import kh.spring.chazazo.admin.model.dto.AdminCouponUpdateReqDto;
import kh.spring.chazazo.admin.model.dto.AdminLocationInsertReqDto;
import kh.spring.chazazo.admin.model.dto.AdminLocationUpdateReqDto;
import kh.spring.chazazo.admin.model.dto.AdminMemberUpdateReqDto;
import kh.spring.chazazo.admin.model.dto.AdminNoticeInsertReqDto;
import kh.spring.chazazo.admin.model.dto.AdminNoticeUpdateReqDto;
import kh.spring.chazazo.admin.model.dto.AdminReportRespDto;
import kh.spring.chazazo.admin.model.dto.AdminReportUpdateReqDto;
import kh.spring.chazazo.admin.model.dto.AdminVehicleUpdateReqDto;
import kh.spring.chazazo.admin.model.service.AdminService;
import kh.spring.chazazo.common.Pagination;

@RestController
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService aService;
	
	// 메인페이지
	@GetMapping("/main")
	public ModelAndView viewMain(ModelAndView mv) {
		// 메인페이지 1:1문의 테이블
		Map<String, Integer> data = new HashMap<String, Integer>();
		data.put("start", 1); data.put("end", 5);
		mv.addObject("requestList", aService.selectRequestList(data));
		
		// 메인페이지 차트
		// TODO: 년도 넘어갔을 때 어떻게 처리해야 하지?
		mv.addObject("recentStat", new Gson().toJson(aService.recentMonth()));
		mv.addObject("monthList", new Gson().toJson(aService.monthList()));
		mv.addObject("locationList", new Gson().toJson(aService.selectLocNameList()));
		mv.addObject("modelList", new Gson().toJson(aService.selectByModel()));
		
		mv.addObject("reservCount", aService.dayReservCount());
		mv.addObject("reservSum", aService.dayReservSum());
		mv.addObject("regiCount", aService.dayRegiCount());
		mv.setViewName("admin/main");
		
		return mv;
	}
	
	// 회원
	@GetMapping("/member")
	public ModelAndView viewMember(ModelAndView mv, @RequestParam(required = false, defaultValue = "1") int page) {
		int count = aService.memberCount();
		Pagination pagination = new Pagination();
		pagination.pageInfo(10, page, count);
		
		mv.addObject("memberList", aService.selectMemberList(pagination));
		mv.addObject("pagination", pagination);
		mv.setViewName("admin/member");
		return mv;
	}
	
	@GetMapping("/member/{username}")
	public ModelAndView viewMemberOne(ModelAndView mv, @PathVariable String username) {
		mv.addObject("member", aService.selectMemberOne(username));
		mv.setViewName("admin/memberdetails");
		return mv;
	}
	
	@PatchMapping("/member/update")
	public int updateMember(@RequestBody AdminMemberUpdateReqDto data) {
		int result = aService.updateMember(data);
		return result;
	}
	
	@DeleteMapping("/member/{username}")
	public int deleteMember(@PathVariable String username) {
		System.out.println(username);
		int result = aService.deleteMember(username);
		System.out.println(result);
		return result;
	}
	
	// 신고
	@GetMapping("/report")
	public ModelAndView viewReport(ModelAndView mv, @RequestParam(required = false, defaultValue = "1") int page) {
		int count = aService.reportCount();
		Pagination pagination = new Pagination();
		pagination.pageInfo(10, page, count);
		
		mv.addObject("reportList", aService.selectReportList(pagination));
		mv.addObject("pagination", pagination);
		mv.setViewName("admin/report");
		return mv;
	}
	
	@GetMapping("/report/{idx}")
	public ModelAndView viewReportOne(ModelAndView mv, @PathVariable String idx) {
		mv.addObject("report", aService.selectReportOne(idx));
		mv.setViewName("admin/reportdetails");
		return mv;
	}
	
	@PatchMapping("/report/return")
	public int returnReport(@RequestBody AdminReportUpdateReqDto data) {
		int result = aService.returnReport(data);
		return result;
	}
	
	@PatchMapping("/report/confirm")
	public int confirmReport(@RequestBody AdminReportUpdateReqDto data) {
		int result = aService.confirmReport(data);
		return result;
	}
	
	// 예약
	@GetMapping("/reservation")
	public ModelAndView viewReservation(ModelAndView mv, @RequestParam(required = false, defaultValue = "1") int page) {
		int count = aService.reservCount();
		Pagination pagination = new Pagination();
		pagination.pageInfo(10, page, count);
		
		mv.addObject("reservList", aService.selectReservList(pagination));
		mv.addObject("pagination", pagination);
		mv.setViewName("admin/reservation");
		return mv;
	}
	
	@GetMapping("/reservation/{idx}")
	public ModelAndView viewReservaitonOne(ModelAndView mv, @PathVariable int idx) {
		mv.addObject("reserv", aService.selectReservOne(idx));
		mv.setViewName("admin/reservationdetails");
		return mv;
	}
	
	// 지점
	@GetMapping("/location")
	public ModelAndView viewLocation(ModelAndView mv, @RequestParam(required = false, defaultValue = "1") int page) {
		int count = aService.locationCount();
		Pagination pagination = new Pagination();
		pagination.pageInfo(10, page, count);
		
		mv.addObject("locationList", aService.selectLocationList(pagination));
		mv.addObject("pagination", pagination);
		mv.setViewName("admin/location");
		
		return mv;
	}
	
	@GetMapping("/location/{idx}")
	public ModelAndView viewLocation(ModelAndView mv, @PathVariable String idx) {
		mv.addObject("location", aService.selectLocationOne(idx));
		mv.setViewName("admin/locationdetails");
		return mv;
	}
	
	@GetMapping("/location/insert")
	public ModelAndView viewInsertLocation(ModelAndView mv) {
		mv.setViewName("admin/locationinsert");
		return mv;
	}
	
	@PostMapping("/location/insert")
	public int insertLocation(@RequestBody AdminLocationInsertReqDto data) {
		int result = aService.insertLocation(data);
		return result;
	}
	
	@PatchMapping("/location/update")
	public int updateLocation(@RequestBody AdminLocationUpdateReqDto data) {
		int result = aService.updateLocation(data);
		return result;
	}
	
	@PatchMapping("/location/delete")
	public int deleteLocation(int idx) {
		int result = aService.deleteLocation(idx);
		return result;
	}
	
	// 차량
	@GetMapping("/vehicle")
	public ModelAndView viewVehicle(ModelAndView mv, @RequestParam(required = false, defaultValue = "1") int page) {
		int count = aService.vehicleCount();
		Pagination pagination = new Pagination();
		pagination.pageInfo(10, page, count);
		
		mv.addObject("vehicleList", aService.selectVehicleList(pagination));
		mv.addObject("pagination", pagination);
		mv.setViewName("admin/vehicle");
		return mv;
	}
	
	@GetMapping("/vehicle/{idx}")
	public ModelAndView viewVehicleOne(ModelAndView mv, @PathVariable String idx) {
		mv.addObject("vehicle", aService.selectVehicleOne(idx));
		mv.addObject("list", aService.locationList());
		mv.setViewName("admin/vehicledetails");
		return mv;
	}
	
	@PatchMapping("/vehicle/update")
	public int updateVehicle(@RequestBody AdminVehicleUpdateReqDto data) {
		int result = aService.updateVehicle(data);
		return result;
	}
	
	@PatchMapping("/vehicle/delete")
	public int deleteVehicle(int idx) {
		int result = aService.deleteVehicle(idx);
		return result;
	}
	
	// 쿠폰
	@GetMapping("/coupon")
	public ModelAndView viewCoupon(ModelAndView mv, @RequestParam(required = false, defaultValue = "1") int page) {
		int count = aService.couponCount() - 1;
		Pagination pagination = new Pagination();
		pagination.pageInfo(10, page, count);
		
		mv.addObject("couponList", aService.selectCouponList(pagination));
		mv.addObject("pagination", pagination);
		mv.setViewName("admin/coupon");
		return mv;
	}
	
	@GetMapping("/coupon/{idx}")
	public ModelAndView viewCouponOne(ModelAndView mv, @PathVariable String idx) {
		mv.addObject("coupon", aService.selectCouponOne(idx));
		mv.setViewName("admin/coupondetails");
		return mv;
	}
	
	@GetMapping("/coupon/insert")
	public ModelAndView viewInsertCoupon(ModelAndView mv) {
		mv.setViewName("admin/couponinsert");
		return mv;
	}
	
	@PostMapping("/coupon/insert")
	public int insertCoupon(@RequestBody AdminCouponInsertReqDto data) {
		String code = RandomStringUtils.randomAlphanumeric(16).toUpperCase();
		data.setCouponCode(code);
		int result = aService.insertCoupon(data);
		System.out.println(code);
		return result;
	}
	
	@PatchMapping("/coupon/update")
	public int updateCoupon(@RequestBody AdminCouponUpdateReqDto data) {
		int result = aService.updateCoupon(data);
		return result;
	}
	
	@PatchMapping("/coupon/delete")
	public int deleteCoupon(int idx) {
		int result = aService.deleteCoupon(idx);
		return result;
	}
	
	// 공지사항
	@GetMapping("/notice")
	public ModelAndView viewNotice(ModelAndView mv, @RequestParam(required = false, defaultValue = "1") int page) {
		int count = aService.noticeCount();
		Pagination pagination = new Pagination();
		pagination.pageInfo(10, page, count);
		
		mv.addObject("pagination", pagination);
		mv.addObject("noticeList", aService.selectNoticeList(pagination));
		mv.setViewName("admin/notice");
		return mv;
	}
	
	@GetMapping("/notice/{idx}")
	public ModelAndView viewNoticeOne(ModelAndView mv, @PathVariable String idx) {
		mv.addObject("notice", aService.selectNoticeOne(idx));
		mv.setViewName("admin/noticedetails");
		return mv;
	}
	
	@GetMapping("/notice/insert")
	public ModelAndView viewInsertNotice(ModelAndView mv) {
		mv.setViewName("admin/noticeinsert");
		return mv;
	}
	
	@PostMapping("/notice/insert")
	public int insertNotice(@RequestBody AdminNoticeInsertReqDto data) {
		int result = aService.insertNotice(data); 
		return result;
	}
	
	@PatchMapping("/notice/update")
	public int updateNotice(@RequestBody AdminNoticeUpdateReqDto data) {
		int result = aService.updateNotice(data);
		return result;
	}
	
	@PatchMapping("/notice/delete")
	public int deleteNotice(int idx) {
		int result = aService.deleteNotice(idx);
		return result;
	}
	
	// 1:1 문의
	@GetMapping("/request")
	public ModelAndView viewRequest(ModelAndView mv, @RequestParam(required = false, defaultValue = "1") int page) {
		int count = aService.requestCount();
		Pagination pagination = new Pagination();
		pagination.pageInfo(10, page, count);
		
		mv.addObject("pagination", pagination);
		mv.addObject("requestList", aService.selectRequestList(pagination));
		mv.setViewName("admin/request");
		return mv;
	}
	
	@GetMapping("/request/{idx}")
	public ModelAndView viewRequestOne(ModelAndView mv, @PathVariable String idx) {
		mv.addObject("request", aService.selectRequestOne(idx));
		mv.setViewName("admin/requestdetails");
		return mv;
	}
	
	@PostMapping("/request")
	public int insertRequest(@RequestParam String idx, @RequestParam String answer) {
		Map<String, String> data = new HashMap<String, String>();
		data.put("idx", idx);
		data.put("answer", answer);
		
		int result = aService.insertAnswer(data, idx);
		
		return result;
	}
	
	@PatchMapping("/request")
	public int updateRequest(@RequestParam String idx, @RequestParam String answer) {
		Map<String, String> data = new HashMap<String, String>();
		data.put("idx", idx);
		data.put("answer", answer);
		
		int result = aService.updateAnswer(data, idx);
		
		return result;
	}
	
	@DeleteMapping("/request")
	public int deleteRequest(@RequestParam String idx) {
		int result = aService.deleteRequest(idx);
		return result;
	}
	
	// 통계
	@GetMapping("/statistics")
	public ModelAndView viewStatistics(ModelAndView mv) {
		mv.setViewName("admin/statistics");
		return mv;
	}

}
