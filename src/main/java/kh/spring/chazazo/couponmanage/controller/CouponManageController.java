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
}
