package kh.spring.chazazo.admin.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.admin.model.service.AdminService;

@RestController
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService aService;
	private final static int LIMIT = 10;
	
	@GetMapping("/main")
	public ModelAndView viewMain(ModelAndView mv) {
		Map<String, Integer> data = new HashMap<String, Integer>();
		data.put("start", 1); data.put("end", 5);
		mv.addObject("requestList", aService.selectRequestList(data));
		mv.setViewName("admin/main");
		return mv;
	}
	
	@GetMapping("/member")
	public ModelAndView viewMember(ModelAndView mv) {
		mv.addObject("memberList", aService.selectMemberList());
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
	public ModelAndView viewReport(ModelAndView mv) {
		mv.addObject("reportList", aService.selectReportList());
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
	public ModelAndView viewReservation(ModelAndView mv) {
		mv.setViewName("admin/reservation");
		return mv;
	}
	
	@GetMapping("/location")
	public ModelAndView viewLocation(ModelAndView mv) {
		mv.setViewName("admin/location");
		return mv;
	}
	
	@GetMapping("/vehicle")
	public ModelAndView viewVehicle(ModelAndView mv) {
		mv.addObject("vehicleList", aService.selectVehicleList());
		mv.setViewName("admin/vehicle");
		return mv;
	}
	
	@GetMapping("/coupon")
	public ModelAndView viewCoupon(ModelAndView mv) {
		mv.addObject("couponList", aService.selectCouponList());
		mv.setViewName("admin/coupon");
		return mv;
	}
	
	@GetMapping("/coupon/{idx}")
	public ModelAndView viewCoupon(ModelAndView mv, @PathVariable String idx) {
		mv.addObject("coupon", aService.selectCouponOne(idx));
		mv.setViewName("admin/coupondetails");
		return mv;
	}
	
	@GetMapping("/notice")
	public ModelAndView viewNotice(ModelAndView mv) {
		mv.setViewName("admin/notice");
		return mv;
	}
	
	@GetMapping("/request")
	public ModelAndView viewRequest(ModelAndView mv, String page) {
		int currentPage = 0;
		int paging = 0;
		int count = aService.requestCount();
		
		if(page == null) currentPage = 1;
		else currentPage = Integer.parseInt(page);
		Map<String, Integer> param = new HashMap<String, Integer>();
		param.put("start", ((currentPage - 1) * LIMIT) + 1);
		param.put("end", ((currentPage - 1) * LIMIT) + 10);
		
		if(count % LIMIT == 0) {
			paging = count / LIMIT;
		} else {
			paging = count / LIMIT + 1; 
		}
		
		int start;
		int end;
		
		if(currentPage % 10 == 0) {
			start = ((currentPage / 10 - 1) * LIMIT) + 1;
		} else {
			start = ((currentPage / 10) * LIMIT) + 1;
		}
		
		if(start + 9 < paging) {
			end = start + 9;
		} else {
			end = paging;
		}
		
		System.out.println(start + " | " + end);
		
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("requestList", aService.selectRequestList(param));
		data.put("start", start);
		data.put("end", end);
		data.put("paging", paging);
		data.put("current", currentPage);
		
		mv.addObject("data", data);
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
	
	@GetMapping("/statistics")
	public ModelAndView viewStatistics(ModelAndView mv) {
		mv.setViewName("admin/statistics");
		return mv;
	}

}
