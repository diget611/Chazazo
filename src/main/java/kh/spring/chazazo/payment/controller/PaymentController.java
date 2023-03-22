package kh.spring.chazazo.payment.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class PaymentController {
	
//	@GetMapping 
//	public ModelAndView viewPaymentOne(ModelAndView mv) {
//		// 결제 상세 조회 -> 결제창이랑 비슷한 모양
//		return mv;
//	}
	
	
	

	@GetMapping("/payment")
	public ModelAndView viewInsertPayment(ModelAndView mv) {
		// 결제창 조회
		return mv;
	}

	@PostMapping("/payment")
	public ModelAndView insertPayment(ModelAndView mv) {
		// 결제대기 / 완료 -> 예약 테이블 인서트 동시에 진행
		// 예약 테이블이 따로 들어간다고 생각하면 예약 페이지에서 넘길 때 인서트가 들어간다는 얘긴데 뭔가 이상함
		return mv;
	}

}
