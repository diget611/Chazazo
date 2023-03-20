package kh.spring.chazazo.inquiry.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class InquiryController {
	
//	@GetMapping
	public ModelAndView searchInquiry(ModelAndView mv) {
		// 문의 검색 조회
		return mv;
	}

//	@GetMapping
	public ModelAndView viewInquiryOne(ModelAndView mv) {
		// 문의 상세 조회
		return mv;
	}

//	@GetMapping
	public ModelAndView viewInsertInquiry(ModelAndView mv) {
		// 문의 작성 페이지 조회
		return mv;
	}

//	@GetMapping
	public ModelAndView insertInquiry(ModelAndView mv) {
		// 문의 작성
		return mv;
	}

//	@GetMapping
	public ModelAndView viewUpdateInquiry(ModelAndView mv) {
		// 문의 수정 페이지 조회
		return mv;
	}

//	@GetMapping
	public ModelAndView updateInquiry(ModelAndView mv) {
		// 문의 수정
		return mv;
	}

//	@GetMapping
	public ModelAndView deleteInquiry(ModelAndView mv) {
		// 문의 삭제
		return mv;
	}

}
