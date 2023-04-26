package kh.spring.chazazo.event.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/event")
public class EventController {
	
	@GetMapping("")
	public ModelAndView viewEventList(ModelAndView mv) {
		mv.setViewName("event/event");
		// TODO: 진행/종료 페이지는 AJAX 이동
		return mv;
	}
	
	@GetMapping("/load")
	public String pageLoad() {
		return null;
	}
	
	@GetMapping("/event/{idx}")
	public ModelAndView viewEventOne(ModelAndView mv) {
		// 이벤트 상세 조회
		return mv;
	}
	
	// 관리자
	public ModelAndView viewInsertEvent(ModelAndView mv) {
		// 이벤트 추가 페이지
		return mv;
	}

	// 관리자
	public ModelAndView insertEvent(ModelAndView mv) {
		// 이벤트 추가
		return mv;
	}
	
	// 관리자
	public ModelAndView viewUpdateEvent(ModelAndView mv) {
		// 이벤트 수정 페이지
		return mv;
	}
	
	// 관리자
	public ModelAndView updateEvent(ModelAndView mv) {
		// 이벤트 수정
		return mv;
	}
	
	// 관리자
	public ModelAndView deleteEvent(ModelAndView mv) {
		// 이벤트 삭제
		return mv;
	}
}
