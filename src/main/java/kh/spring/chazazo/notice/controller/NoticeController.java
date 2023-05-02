package kh.spring.chazazo.notice.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class NoticeController {

	@GetMapping("/notice")
	public ModelAndView viewNoticeList(ModelAndView mv) {
		// 공지사항 리스트 조회
		return mv;
	}
	
	@GetMapping("/notice/{idx}")
	public ModelAndView viewNoticeOne(ModelAndView mv) {
		// 공지사항 상세 조회
		return mv;
	}
	
}
