package kh.spring.chazazo.admin.mainpage.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import kh.spring.chazazo.admin.mainpage.model.service.AdminService;
import kh.spring.chazazo.admin.request.model.service.AdminRequestService;
import kh.spring.chazazo.admin.reservation.model.service.AdminReservationService;
import kh.spring.chazazo.admin.statistics.model.service.AdminStatisticsService;

@RestController
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService aService;
	@Autowired
	private AdminRequestService reqService;
	@Autowired
	private AdminReservationService resService;
	@Autowired
	private AdminStatisticsService statService;
	
	// 메인페이지
	@GetMapping("/main")
	public ModelAndView viewMain(ModelAndView mv) {
		// 메인페이지 1:1문의 테이블
		Map<String, Integer> data = new HashMap<String, Integer>();
		data.put("start", 1); data.put("end", 5);
		mv.addObject("requestList", reqService.selectRequestList(data));
		mv.addObject("reservList", resService.selectReservList(data));
		
		// 메인페이지 차트
		mv.addObject("recentStat", new Gson().toJson(statService.recentMonth()));
		mv.addObject("monthList", new Gson().toJson(statService.monthList()));
		mv.addObject("locationList", new Gson().toJson(statService.selectLocNameList()));
		mv.addObject("modelList", new Gson().toJson(statService.selectByModel()));
		
		mv.addObject("reservCount", aService.dayReservCount());
		mv.addObject("reservSum", aService.dayReservSum());
		mv.addObject("regiCount", aService.dayRegiCount());
		mv.addObject("reqCount", aService.dayReqCount());
		mv.setViewName("admin/main");
		
		return mv;
	}
	
}
