package kh.spring.chazazo.payment.controller;

import java.security.Principal;
import java.sql.Date;
import java.text.DateFormat;
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
private VehicleService vService;
@Autowired
private PaymentService pService;
@Autowired
private AdminService aService;

//	@GetMapping 
//	public ModelAndView viewPaymentOne(ModelAndView mv) {
//		// 결제 상세 조회 -> 결제창이랑 비슷한 모양
//		return mv;
//	}
	
	
	// get 조회 post 입력 putpatch update delet e

	@GetMapping("/payment")
	@ResponseBody
	public String viewInsertPayment(ModelAndView mv, Principal prin,
			PaymentReqDto paydto, String name) {
		// 결제창 조회
		
		/*
		int idx = Integer.parseInt(carIdx);
		mv.addObject("car", vService.getVehicleInfo(idx));

		if(prin == null) {	
			mv.setViewName("reservation/payment");
		}else {
			String username = prin.getName();
			
			mv.addObject("info", mService.selectMypageOne(username));
			mv.setViewName("reservation/payment");
			
			System.out.println(vService.getVehicleInfo(idx));
		}
		mv.addObject("daycount", paydto.getDaycount());
		mv.addObject("rentPrice", paydto.getRentPrice());
		mv.addObject("addIns", paydto.getAddIns());
		mv.addObject("expIns", paydto.getExpIns());
	*/
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
	
	

//	@RequestMapping("/payment")
//	public void insertPayment() {
//		// 결제대기 / 완료 -> 예약 테이블 인서트 동시에 진행
//		
//		System.out.println();
//
//	}
	
	//결제정보 저장
	@PostMapping("/payment/paid")
	public int insertPayInfo(@RequestBody PaymentReqDto data, Principal prin) {
		// 결제대기 / 완료 -> 예약 테이블 인서트 동시에 진행
		/*
		System.out.println("##########컨트롤러");
		System.out.println(name);
		System.out.println(birth);
		System.out.println(phone);
		System.out.println(mail);
		System.out.println("##########컨트롤러");
		
		Map<String,String > payMap = new HashMap<String,String>();
		payMap.put("name", name);
		payMap.put("birth", birth);
		payMap.put("phone", phone);
		payMap.put("mail", mail);
		*/
		
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
		
		
		
		Map<String, Object> result = new HashMap<String,Object>();
		    mv.addObject("selectNone", pService.selectNoneM(data));
			result.put("selectNone", pService.selectNoneM(data));
			mv.addObject("noneReservation", pService.noneReser(paymentIdx));
			result.put("noneReservation", pService.noneReser(paymentIdx));
			
			
			return new Gson().toJson(result);
			
		}
	

	// 예약 정보 상세 조회	
	@GetMapping("/profile/reservation/{idx}")
	public ModelAndView viewReservationOne(ModelAndView mv
										   , @PathVariable int idx,  Principal prin) {
		if(prin == null) {
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


	
	@DeleteMapping("/profile/reservation/{idx}")
	public int deleteReservation(ModelAndView mv, @PathVariable int idx) {
		
		int result = pService.deleteReserv(idx);
		
		return result;
	}
	

}
