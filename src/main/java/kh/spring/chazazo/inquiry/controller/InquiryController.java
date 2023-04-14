package kh.spring.chazazo.inquiry.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


@RestController
@RequestMapping("/inquiry")
public class InquiryController {
	
	
	@GetMapping("")
	public ModelAndView viewInquiry(ModelAndView mv) {
		// 문의 페이지 조회
		mv.setViewName("inquiry/inquiry");
		return mv;
	}
	
	@GetMapping("/{searchword}")
	public ModelAndView searchInquiry(ModelAndView mv) {
		// 문의 검색 조회
		return mv;
	}
	
	@GetMapping("/{idx}")
	public ModelAndView viewInquiryOne(ModelAndView mv) {
		// 문의 상세 조회
		return mv;
	}
	


	// 관리자
	public ModelAndView viewInsertInquiry(ModelAndView mv) {
		// 문의 작성 페이지 조회
		return mv;
	}

	// 관리자
	public ModelAndView insertInquiry(ModelAndView mv) {
		// 문의 작성
		return mv;
	}

	// 관리자
	public ModelAndView viewUpdateInquiry(ModelAndView mv) {
		// 문의 수정 페이지 조회
		return mv;
	}

	// 관리자
	public ModelAndView updateInquiry(ModelAndView mv) {
		// 문의 수정
		return mv;
	}

	// 관리자
	public ModelAndView deleteInquiry(ModelAndView mv) {
		// 문의 삭제
		return mv;
	}

}
