package kh.spring.chazazo.admin.location.controller;

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

import kh.spring.chazazo.admin.location.model.dto.AdminLocationInsertReqDto;
import kh.spring.chazazo.admin.location.model.dto.AdminLocationUpdateReqDto;
import kh.spring.chazazo.admin.location.model.service.AdminLocationService;
import kh.spring.chazazo.common.Pagination;

@RestController
@RequestMapping("/admin/location")
public class AdminLocationController {
	
	@Autowired
	private AdminLocationService service;
	
	@GetMapping("")
	public ModelAndView viewLocation(ModelAndView mv, @RequestParam(required = false, defaultValue = "1") int page) {
		int count = service.locationCount();
		Pagination pagination = new Pagination();
		pagination.pageInfo(10, page, count);
		
		mv.addObject("locationList", service.selectLocationList(pagination));
		mv.addObject("pagination", pagination);
		mv.setViewName("admin/location");
		
		return mv;
	}
	
	@GetMapping("/{idx}")
	public ModelAndView viewLocationOne(ModelAndView mv, @PathVariable String idx) {
		mv.addObject("location", service.selectLocationOne(idx));
		mv.setViewName("admin/locationdetails");
		return mv;
	}
	
	@GetMapping("/insert")
	public ModelAndView viewInsertLocation(ModelAndView mv) {
		mv.setViewName("admin/locationinsert");
		return mv;
	}
	
	@PostMapping("/insert")
	public int insertLocation(@RequestBody AdminLocationInsertReqDto data) {
		int result = service.insertLocation(data);
		return result;
	}
	
	@PatchMapping("/update")
	public int updateLocation(@RequestBody AdminLocationUpdateReqDto data) {
		int result = service.updateLocation(data);
		return result;
	}
	
	@PatchMapping("/delete")
	public int deleteLocation(int idx) {
		int result = service.deleteLocation(idx);
		return result;
	}
}
