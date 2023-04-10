package kh.spring.chazazo.payment.controller;

import java.security.Principal;
import java.sql.Date;
import java.text.DateFormat;
import java.time.LocalDate;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.member.model.service.MemberService;

@RestController
public class PaymentController {
	
@Autowired
private MemberService mService;
//	@GetMapping 
//	public ModelAndView viewPaymentOne(ModelAndView mv) {
//		// 결제 상세 조회 -> 결제창이랑 비슷한 모양
//		return mv;
//	}
	
	
	

	@RequestMapping("/payment")
	public ModelAndView viewInsertPayment(ModelAndView mv, Principal prin,
			String daycount, String rentPrice, String addIns, String expIns) {
		// 결제창 조회
		
		if(prin == null) {	
			mv.setViewName("reservation/payment");
		}else {
			String username = prin.getName();
			
			
			mv.addObject("info", mService.selectMypageOne(username));
			mv.setViewName("reservation/payment");
		}

		
		mv.addObject("daycount", daycount);
		mv.addObject("rentPrice", rentPrice);
		mv.addObject("addIns", addIns);
		mv.addObject("expIns", expIns);
	

		System.out.println(daycount);
		System.out.println(rentPrice);
		System.out.println(addIns);
		System.out.println(expIns);

		return mv;
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
