package kh.spring.chazazo.reservation.controller;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class ReservationController {
	
//	@GetMapping
	public ModelAndView viewResrvationList(ModelAndView mv) {
		// 관리자 예약 리스트 조회
		// 관리자가 조건별로 검색한 예약 정보도 필요하지 않나?(메소드 추가)
		return mv;
	}
	
//	@GetMapping
	public ModelAndView viewReservationListUser(ModelAndView mv) {
		// 유저 예약 리스트 조회
		return mv;
	}

//	@GetMapping
	public ModelAndView viewReservationOne(ModelAndView mv) {
		// 예약 정보 상세 조회
		return mv;
	}
	
//	@GetMapping
	public ModelAndView viewInsertReservation(ModelAndView mv) {
		// 예약창 조회
		return mv;
	}
	
//	@GetMapping
	public ModelAndView updateReservation(ModelAndView mv) {
		// 예약 정보 수정
		return mv;
	}
	
//	@GetMapping
	public ModelAndView deleteReservation(ModelAndView mv) {
		// 예약 정보 삭제
		return mv;
	}
}