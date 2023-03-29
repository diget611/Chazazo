package kh.spring.chazazo.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.admin.model.service.AdminService;
import kh.spring.chazazo.member.model.service.MemberService;
import kh.spring.chazazo.vehicle.model.service.VehicleService;

@RestController
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService aService;
	@Autowired
	private VehicleService vService;
	
	@GetMapping("/main")
	public ModelAndView viewStatistics(ModelAndView mv) {
		mv.setViewName("admin/main");
		return mv;
	}
	
	@GetMapping("/member")
	public ModelAndView viewMember(ModelAndView mv) {
		mv.addObject("memberList", aService.selectMemberList());
		mv.setViewName("admin/member");
		return mv;
	}
	
	@GetMapping("/report")
	public ModelAndView viewReport(ModelAndView mv) {
		
		mv.setViewName("admin/report");
		return mv;
	}
	
	@GetMapping("/reservation")
	public ModelAndView viewResrvation(ModelAndView mv) {
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
		mv.addObject("vehicleList", vService.selectList());
		mv.setViewName("admin/vehicle");
		return mv;
	}
	
	@GetMapping("/coupon")
	public ModelAndView viewCoupon(ModelAndView mv) {
		mv.setViewName("admin/coupon");
		return mv;
	}
	
	@GetMapping("/notice")
	public ModelAndView viewNotice(ModelAndView mv) {
		mv.setViewName("admin/member");
		return mv;
	}
	
	@GetMapping("/inquiry")
	public ModelAndView viewInquiry(ModelAndView mv) {
		mv.setViewName("admin/member");
		return mv;
	}

}
