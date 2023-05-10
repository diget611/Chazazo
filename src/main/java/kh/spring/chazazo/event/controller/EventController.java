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
	
}
