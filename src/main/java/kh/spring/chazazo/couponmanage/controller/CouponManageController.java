package kh.spring.chazazo.couponmanage.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class CouponManageController {

	@GetMapping("/coupon")
	public ModelAndView viewCouponList(ModelAndView mv) {
		// 현재 있는 쿠폰 목록 조회
		mv.setViewName("/member/coupon");
		return mv;
	}
	
//	@GetMapping
	public ModelAndView viewInsertCoupon(ModelAndView mv) {
		// 쿠폰 등록 페이지 조회
		return mv;
	}
	
//	@GetMapping
	public ModelAndView insertCoupon(ModelAndView mv) {
		// 쿠폰 등록
		return mv;
	}

//	@GetMapping
	public ModelAndView viewUpdateCoupon(ModelAndView mv) {
		// 쿠폰 수정 페이지 조회
		return mv;
	}

//	@GetMapping
	public ModelAndView updateCoupon(ModelAndView mv) {
		// 쿠폰 수정
		return mv;
	}

//	@GetMapping
	public ModelAndView deleteCoupon(ModelAndView mv) {
		// 쿠폰 삭제
		return mv;
	}

}
