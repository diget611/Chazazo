package kh.spring.chazazo.admin.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.admin.model.dto.AdminReservByModelRespDto;
import kh.spring.chazazo.admin.model.service.AdminService;
import kh.spring.chazazo.common.Pagination;

@RestController
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService aService;
	
	@GetMapping("/main")
	public ModelAndView viewMain(ModelAndView mv) {
		// 메인페이지 1:1문의 테이블
		Map<String, Integer> data = new HashMap<String, Integer>();
		data.put("start", 1); data.put("end", 5);
		mv.addObject("requestList", aService.selectRequestList(data));
		
		// 메인페이지 그래프
		List<AdminReservByModelRespDto> dto = aService.selectByModel();
		List<String> model = new ArrayList<>();
		List<Integer> count = new ArrayList<>();
		List<Integer> sum = new ArrayList<>();
		
		for(int i = 0; i < dto.size(); i++) {
			model.add("'" + dto.get(i).getModel() + "'");
			count.add(dto.get(i).getCnt());
			sum.add(dto.get(i).getSum());
		}
		
		mv.addObject("model", model);
		mv.addObject("count", count);
		mv.addObject("sum", sum);
		mv.setViewName("admin/main");
		
		return mv;
	}
	
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
	
	@DeleteMapping("/member/{username}")
	public int deleteMember(@PathVariable String username) {
		System.out.println(username);
		int result = aService.deleteMember(username);
		System.out.println(result);
		return result;
	}
	
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
		mv.addObject("review", aService.selectReviewContent(idx));
		mv.setViewName("admin/reportdetails");
		return mv;
	}
	
	@GetMapping("/reservation")
	public ModelAndView viewReservation(ModelAndView mv, @RequestParam(required = false, defaultValue = "1") int page) {
		mv.setViewName("admin/reservation");
		return mv;
	}
	
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
		mv.setViewName("admin/vehicledetails");
		return mv;
	}
	
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
	
	@GetMapping("/statistics")
	public ModelAndView viewStatistics(ModelAndView mv) {
		mv.setViewName("admin/statistics");
		return mv;
	}

}
