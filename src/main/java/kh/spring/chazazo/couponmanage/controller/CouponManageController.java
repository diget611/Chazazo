package kh.spring.chazazo.couponmanage.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.coupon.dto.CouponReqDto;
import kh.spring.chazazo.couponmanage.dto.CouponManageReqDto;
import kh.spring.chazazo.couponmanage.service.CouponManageService;
import kh.spring.chazazo.member.model.service.MemberService;

@RestController
public class CouponManageController {

	@Autowired
	private MemberService mService;
	@Autowired
	private CouponManageService cmService;
	
	
	
	// 현재 있는 쿠폰 목록 조회
	@GetMapping("/coupon")
	public ModelAndView viewCouponList(ModelAndView mv, Principal prin) {

		String username = prin.getName();
		mv.addObject("memberinfo", mService.selectMypageOne(username));
		mv.addObject("coupon", cmService.selectMycoupon(username));
		mv.setViewName("/member/coupon");
		return mv;
		
	}
	

	
	//쿠폰등록
	@PostMapping("/registerCoupon")
	public String insertCoupon(@RequestBody CouponManageReqDto dto, Principal prin) {
		String couponCode = dto.getCouponCode();
		int count = cmService.selectCouponCode(couponCode);
		if(count == 1) {
			cmService.insertCoupon(dto);
			return "쿠폰등록이 완료되었습니다.";
		}
		return "쿠폰번호를 다시 입력하십시오";
	}
}
