package kh.spring.chazazo.notice.controller;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class NoticeController {

//	@GetMapping
	public ModelAndView viewNoticeList(ModelAndView mv) {
		// 공지사항 리스트 조회
		return mv;
	}
	
//	@GetMapping
	public ModelAndView viewNoticeOne(ModelAndView mv) {
		// 공지사항 상세 조회
		return mv;
	}

//	@GetMapping
	public ModelAndView viewInsertNotice(ModelAndView mv) {
		// 공지사항 작성 페이지 조회
		return mv;
	}
	
//	@GetMapping
	public ModelAndView insertNotice(ModelAndView mv) {
		// 공지사항 작성
		return mv;
	}
	
//	@GetMapping
	public ModelAndView viewUpdateNotice(ModelAndView mv) {
		// 공지사항 수정 페이지 조회
		return mv;
	}
	
//	@GetMapping
	public ModelAndView updateNotice(ModelAndView mv) {
		// 공지사항 수정
		return mv;
	}
	
//	@GetMapping
	public ModelAndView deleteNotice(ModelAndView mv) {
		// 공지사항 삭제
		return mv;
	}

}