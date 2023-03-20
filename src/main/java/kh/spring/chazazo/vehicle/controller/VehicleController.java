package kh.spring.chazazo.vehicle.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class VehicleController {
	
//	@GetMapping
	public ModelAndView searchVehicle(ModelAndView mv) {
		// 메인페이지 / 예약페이지 / 결제페이지 차량 정보 검색
		return mv;
	}
	
//	@GetMapping
	public ModelAndView viewVehicleList(ModelAndView mv) {
		// 관리자 페이지 차량 관리
		return mv;
	}
	
//	@GetMapping
	public ModelAndView viewVehicleOne(ModelAndView mv) {
		// 관리자 페이지 차량 관리 / 예약, 결제 페이지 차량 정보 출력
		return mv;
	}
//	@GetMapping
	public ModelAndView viewInsertVehicle(ModelAndView mv) {
		// 관리자 페이지 차량 관리
		return mv;
	}
//	@GetMapping
	public ModelAndView insertVehicle(ModelAndView mv) {
		// 관리자 페이지 차량 관리
		return mv;
	}
//	@GetMapping
	public ModelAndView viewUpdateVehicle(ModelAndView mv) {
		// 관리자 페이지 차량 관리
		return mv;
	}
//	@GetMapping
	public ModelAndView updateVehicle(ModelAndView mv) {
		// 관리자 페이지 차량 관리
		return mv;
	}
//	@GetMapping
	public ModelAndView deleteVehicle(ModelAndView mv) {
		// 관리자 페이지 차량 관리
		return mv;
	}
	
}
