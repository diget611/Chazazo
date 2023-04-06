package kh.spring.chazazo.payment.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	
	
	

	@GetMapping("/payment")
	public ModelAndView viewInsertPayment(ModelAndView mv, Principal prin) {
		// 결제창 조회
		
		if(prin == null) {	
			mv.setViewName("reservation/payment");
		}else {
			String username = prin.getName();
			
			
			mv.addObject("info", mService.selectMypageOne(username));
			mv.setViewName("reservation/payment");
			System.out.println(username);
		}
	
		return mv;
	}

	@PostMapping("/payment")
	public ModelAndView insertPayment(ModelAndView mv) {
		// 결제대기 / 완료 -> 예약 테이블 인서트 동시에 진행
		
		return mv;
	}

}
