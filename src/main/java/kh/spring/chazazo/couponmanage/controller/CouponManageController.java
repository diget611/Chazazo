package kh.spring.chazazo.couponmanage.controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.coupon.dto.CouponReqDto;
import kh.spring.chazazo.coupon.service.CouponService;
import kh.spring.chazazo.couponmanage.service.CouponManageService;
import kh.spring.chazazo.member.model.service.MemberService;

@RestController
public class CouponManageController {

	@Autowired
	private MemberService mService;
	@Autowired
	private CouponManageService cmService;
	@Autowired
	private CouponService cService;
	
	// 현재 있는 쿠폰 목록 조회
	@GetMapping("/coupon")
	public ModelAndView viewCouponList(ModelAndView mv, Principal prin) {

		String username = prin.getName();
		mv.addObject("memberinfo", mService.selectMypageOne(username));
		mv.addObject("couponList", cmService.selectMycoupon(username));
		mv.addObject("countCoupon", cService.countCoupon(username));
		
		mv.setViewName("/member/coupon");
		return mv;
		
	}
	
	//쿠폰등록
	@PostMapping("/registerCoupon")
	public int insertCoupon( String couponCode, Principal prin) {
		String username = prin.getName();

		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("username", username);
		map.put("couponCode", couponCode);
	
		int totalCount = cService.totalCoupon(map);
		
		System.out.println(totalCount);
		

		int count = cmService.countCouponCode(couponCode);
		if(totalCount == 1) {
			return 1;
		}else if(totalCount == 0 && count == 1) {
			cService.insertCoupon(map);
			return 2;
		}
		return 0;
	}
}
