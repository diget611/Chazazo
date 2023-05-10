package kh.spring.chazazo.payment.controller;

import java.security.Principal;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import kh.spring.chazazo.admin.model.service.AdminService;
import kh.spring.chazazo.coupon.dto.CouponReqDto;
import kh.spring.chazazo.coupon.service.CouponService;
import kh.spring.chazazo.member.model.service.MemberService;
import kh.spring.chazazo.payment.model.dto.PaymentReqDto;
import kh.spring.chazazo.payment.model.service.PaymentService;
import kh.spring.chazazo.vehicle.model.dto.VehicleInfoDto;
import kh.spring.chazazo.vehicle.model.service.VehicleService;
import lombok.Data;

@RestController
public class PaymentController {
	
@Autowired
private MemberService mService;
@Autowired
private CouponService cService;
@Autowired
private PaymentService pService;
@Autowired
private AdminService aService;

	

// 결제창 조회
	@GetMapping("/payment")
	@ResponseBody
	public String viewInsertPayment(ModelAndView mv, Principal prin,
			PaymentReqDto paydto, String name) {
		Map<String, Object> result = new HashMap<String,Object>();		

		if(prin == null) {	
			mv.setViewName("reservation/payment");
			return "1";
		}else {
			String username = prin.getName();
			mv.addObject("info", mService.selectMypageOne(username));
			result.put("info",mService.selectMypageOne(username));
			return new Gson().toJson(result);
		}
	}
	
	//쿠폰선택
	@GetMapping("/selectCoupon/{idx}")
	public ModelAndView selectCoupon(@PathVariable String idx, ModelAndView mv) {
		int index = Integer.parseInt(idx);
		List<CouponReqDto> cList = cService.selectCoupon(index);  
		mv.addObject("cList", cList);
		mv.setViewName("reservation/coupon");
		return mv;
	}
	
	//결제정보 저장
	@PostMapping("/payment/paid")
	public int insertPayInfo(@RequestBody PaymentReqDto data, Principal prin) {
		System.out.println("ㅎㅎㅎㅎㅎ"+data);
		int isMember = 0;
		if(prin == null) {
			isMember = 0;
		} else {
			isMember = 1;
		}
		
		int result = pService.insertPayInfo(data, isMember);
		return result;
	}
	
//	관리자
	public ModelAndView viewReservationList(ModelAndView mv) {
		// 관리자 예약 리스트 조회
		// 관리자가 조건별로 검색한 예약 정보도 필요하지 않나?(메소드 추가)
		return mv;
	}

	
	// 유저 예약 리스트 조회
	@GetMapping("/profile/reservation")
	public String viewReservationListUser(ModelAndView mv, Principal prin) {
	
		Map<String, Object> result = new HashMap<String,Object>();
		System.out.println(result);
		
		if(prin == null) {
			mv.setViewName("member/mypage");
			return "1";
			
		}else {
			String loginId = prin.getName();
			
			mv.addObject("reservation", pService.selectList(loginId));
			result.put("reservation", pService.selectList(loginId));
			
			mv.addObject("memberinfo", mService.selectMypageOne(loginId));
			result.put("memberinfo", mService.selectMypageOne(loginId));
			
			
			System.out.println(result);
			System.out.println("ddddddd송공d");
			return new Gson().toJson(result);
		}
		
	}	

	// 비회원 예약 조회 
	@GetMapping("/profile/nonereservation")
	public String viewNoneReservationListUser(ModelAndView mv, int paymentIdx, PaymentReqDto data) {
		
		
		
		Map<String, Object> map = new HashMap<String,Object>();
		 
			int result = pService.selectNoneM(data);
			System.out.println(result);
			if(result == 0) {
				mv.setViewName("member/mypage");
				return "1";
			}else {
				mv.addObject("noneReservation", pService.noneReser(paymentIdx));
				map.put("noneReservation", pService.noneReser(paymentIdx));
				return new Gson().toJson(map);
			}
			
		}
			
			
		
	

	// 예약 정보 상세 조회	
	@GetMapping("/profile/reservation/{idx}")
	public ModelAndView viewReservationOne(ModelAndView mv
										   , @PathVariable int idx,  Principal prin) {
		
		
		if(prin == null) {
			mv.addObject("reservation", pService.ReservationOne(idx));	
			mv.addObject("location",pService.resvLocation(idx));
			mv.setViewName("member/details");
			
		}else{
			System.out.println("ddddddddd");
			String loginId = prin.getName();
			String index = Integer.toString(idx);
			mv.addObject("memberinfo", mService.selectMypageOne(loginId));
			mv.addObject("reservation", pService.ReservationOne(idx));	
			mv.addObject("location",pService.resvLocation(idx));
			mv.addObject("vehicle", aService.selectVehicleOne(index));
			System.out.println(idx);
			mv.setViewName("member/details");
		}
		
		
		
	return mv;	

	
	}


	//예약삭제
	@DeleteMapping("/profile/reservation/{idx}")
	public int deleteReservation(ModelAndView mv, @PathVariable int idx) {
		
		int result = pService.deleteReserv(idx);
		
		return result;
	}
	
	//결제환불처리
	@PostMapping("/profile/payment/{idx}")
	public ModelAndView cancelKpay(ModelAndView mv) {
		return mv;
	}
	

}
