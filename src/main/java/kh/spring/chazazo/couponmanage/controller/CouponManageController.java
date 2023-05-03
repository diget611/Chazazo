package kh.spring.chazazo.couponmanage.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.member.model.service.MemberService;

@RestController
public class CouponManageController {

	@Autowired
	private MemberService mService;
	
	
	// 현재 있는 쿠폰 목록 조회
	@GetMapping("/coupon")
	public ModelAndView viewCouponList(ModelAndView mv, Principal prin) {

		String loginId = prin.getName();
		mv.addObject("memberinfo", mService.selectMypageOne(loginId));
		mv.setViewName("/member/coupon");
		return mv;
	}
	
	
	// 쿠폰 삭제 ajax
	@DeleteMapping("/coupon")
	public ModelAndView deleteCoupon(ModelAndView mv) {
		return mv;
	}
	
	//쿠폰등록
	@GetMapping("/coupon/{idx}")
	public ModelAndView insertCoupon(ModelAndView mv) {
		
		return mv;
	}
}
