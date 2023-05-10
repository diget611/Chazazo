package kh.spring.chazazo.admin.vehicle.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.admin.location.model.service.AdminLocationService;
import kh.spring.chazazo.admin.mainpage.model.service.AdminService;
import kh.spring.chazazo.admin.vehicle.model.dto.AdminVehicleUpdateReqDto;
import kh.spring.chazazo.admin.vehicle.model.service.AdminVehicleService;
import kh.spring.chazazo.common.Pagination;

@RestController
@RequestMapping("/admin/vehicle")
public class AdminVehicleController {
	
	@Autowired
	private AdminVehicleService service;
	@Autowired
	private AdminLocationService alService; 
	@Autowired
	private AdminService aService;
	
	@GetMapping("")
	public ModelAndView viewVehicle(ModelAndView mv, @RequestParam(required = false, defaultValue = "1") int page) {
		int count = service.vehicleCount();
		Pagination pagination = new Pagination();
		pagination.pageInfo(10, page, count);
		
		mv.addObject("vehicleList", service.selectVehicleList(pagination));
		mv.addObject("pagination", pagination);
		mv.setViewName("admin/vehicle");
		return mv;
	}
	
	@GetMapping("/{idx}")
	public ModelAndView viewVehicleOne(ModelAndView mv, @PathVariable String idx) {
		mv.addObject("vehicle", service.selectVehicleOne(idx));
		mv.addObject("list", alService.locationList());
		mv.setViewName("admin/vehicledetails");
		return mv;
	}
	
	@GetMapping("/insert")
	public ModelAndView viewInsertVehicle(ModelAndView mv) {
		mv.addObject("locationList", alService.locationList());
		mv.addObject("cartypeList", aService.cartypeList());
		mv.addObject("fueltypeList", aService.fueltypeList());
		mv.setViewName("admin/vehicleinsert");
		return mv;
	}
	
	@PostMapping("/insert")
	public int insertVehicle() {
		int result = 0;
		return result;
	}
	
	@PatchMapping("/update")
	public int updateVehicle(@RequestBody AdminVehicleUpdateReqDto data) {
		int result = service.updateVehicle(data);
		return result;
	}
	
	@PatchMapping("/delete")
	public int deleteVehicle(int idx) {
		int result = service.deleteVehicle(idx);
		return result;
	}
	
}
