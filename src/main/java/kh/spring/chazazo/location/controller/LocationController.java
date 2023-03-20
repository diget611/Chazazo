package kh.spring.chazazo.location.controller;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class LocationController {
	
//	@GetMapping
	public ModelAndView viewLocationList(ModelAndView mv) {
		// 지점 전체 조회
		return mv;
	}
	
//	@GetMapping
	public ModelAndView viewLocationOne(ModelAndView mv) {
		// 지점 상세 조회
		return mv;
	}
	
//	@GetMapping
	public ModelAndView viewInsertLocation(ModelAndView mv) {
		// 지점 등록 페이지 조회
		return mv;
	}

//	@GetMapping
	public ModelAndView insertLocation(ModelAndView mv) {
		// 지점 등록
		return mv;
	}

//	@GetMapping
	public ModelAndView viewUpdatLocation(ModelAndView mv) {
		// 지점 정보 수정 페이지 조회
		return mv;
	}
	
//	@GetMapping
	public ModelAndView updateLocation(ModelAndView mv) {
		// 지점 정보 수정
		return mv;
	}

//	@GetMapping
	public ModelAndView deleteLocation(ModelAndView mv) {
		// 지점 정보 삭제
		return mv;
	}

}
