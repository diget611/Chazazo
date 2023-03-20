package kh.spring.chazazo.report.controller;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class ReportController {
	
//	@GetMapping
	public ModelAndView viewReportList(ModelAndView mv) {
		// 관리자용 신고 현황 조회, 조건별 검색도 필요할거 같은데?
		return mv;
	}
	
//	@GetMapping
	public ModelAndView viewReportListUser(ModelAndView mv) {
		// 유저별 자기가 한 신고 리스트 조회
		return mv;
	}
	
//	@GetMapping
	public ModelAndView insertReport(ModelAndView mv) {
		// 신고 인서트
		return mv;
	}
	
	// 신고가 수정 삭제가 필요할까?

}
