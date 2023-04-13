package kh.spring.chazazo.payment.controller;

import java.security.Principal;
import java.sql.Date;
import java.text.DateFormat;
import java.time.LocalDate;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.member.model.service.MemberService;
import kh.spring.chazazo.payment.model.dto.PaymentReqDto;
import kh.spring.chazazo.vehicle.model.dto.VehicleInfoDto;
import kh.spring.chazazo.vehicle.model.service.VehicleService;

@RestController
public class PaymentController {
	
@Autowired
private MemberService mService;
@Autowired
private VehicleService vService;
//	@GetMapping 
//	public ModelAndView viewPaymentOne(ModelAndView mv) {
//		// 결제 상세 조회 -> 결제창이랑 비슷한 모양
//		return mv;
//	}
	
	
	// get 조회 post 입력 putpatch update delet e

	@GetMapping("/payment")
	public String viewInsertPayment(ModelAndView mv, Principal prin,
			PaymentReqDto paydto, String carIdx) {
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
		
		return "1";
	}
	
	

//	@RequestMapping("/payment")
//	public void insertPayment() {
//		// 결제대기 / 완료 -> 예약 테이블 인서트 동시에 진행
//		
//		System.out.println();
//
//	}
	
//	@PostMapping("/payment")
//	public ModelAndView insertPayment(ModelAndView mv) {
//		// 결제대기 / 완료 -> 예약 테이블 인서트 동시에 진행
//		
//		return mv;
//	}

}
