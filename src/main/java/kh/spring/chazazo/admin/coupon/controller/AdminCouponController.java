package kh.spring.chazazo.admin.coupon.controller;

import org.apache.commons.lang3.RandomStringUtils;
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

import kh.spring.chazazo.admin.coupon.model.dto.AdminCouponInsertReqDto;
import kh.spring.chazazo.admin.coupon.model.dto.AdminCouponUpdateReqDto;
import kh.spring.chazazo.admin.coupon.model.service.AdminCouponService;
import kh.spring.chazazo.common.Pagination;

@RestController
@RequestMapping("/admin/coupon")
public class AdminCouponController {

	@Autowired
	private AdminCouponService service;
	
	@GetMapping("")
	public ModelAndView viewCoupon(ModelAndView mv, @RequestParam(required = false, defaultValue = "1") int page) {
		int count = service.couponCount() - 1;
		Pagination pagination = new Pagination();
		pagination.pageInfo(10, page, count);
		
		mv.addObject("couponList", service.selectCouponList(pagination));
		mv.addObject("pagination", pagination);
		mv.setViewName("admin/coupon");
		return mv;
	}
	
	@GetMapping("/{idx}")
	public ModelAndView viewCouponOne(ModelAndView mv, @PathVariable String idx) {
		mv.addObject("coupon", service.selectCouponOne(idx));
		mv.setViewName("admin/coupondetails");
		return mv;
	}
	
	@GetMapping("/insert")
	public ModelAndView viewInsertCoupon(ModelAndView mv) {
		mv.setViewName("admin/couponinsert");
		return mv;
	}
	
	@PostMapping("/insert")
	public int insertCoupon(@RequestBody AdminCouponInsertReqDto data) {
		String code = RandomStringUtils.randomAlphanumeric(16).toUpperCase();
		data.setCouponCode(code);
		int result = service.insertCoupon(data);
		return result;
	}
	
	@PatchMapping("/update")
	public int updateCoupon(@RequestBody AdminCouponUpdateReqDto data) {
		int result = service.updateCoupon(data);
		return result;
	}
	
	@PatchMapping("/delete")
	public int deleteCoupon(int idx) {
		int result = service.deleteCoupon(idx);
		return result;
	}
	
}
