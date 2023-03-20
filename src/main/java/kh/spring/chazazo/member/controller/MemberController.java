package kh.spring.chazazo.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.member.model.dto.MemberReqDto;
import kh.spring.chazazo.member.model.dto.MemberInfoReqDto;
import kh.spring.chazazo.member.model.service.MemberService;

@RestController
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	@GetMapping
	public ModelAndView viewMemberList(ModelAndView mv) {
		// 관리자 회원 리스트 조회
		return mv;
	}
	
//	@GetMapping
	public ModelAndView viewMemberOne(ModelAndView mv, String username) {
		// 회원 상세 조회
		return mv;
	}
	
	@GetMapping("/register")
	public ModelAndView viewInsertMember(ModelAndView mv) {
		mv.setViewName("member/register");
		return mv;
	}
	
	@PostMapping("/register")
	public ModelAndView insertMember(ModelAndView mv, MemberReqDto memberDto, MemberInfoReqDto memberInfoDto) {
		mService.insert(memberDto, memberInfoDto);
		return mv;
	}
	
//	@GetMapping
	public ModelAndView viewUpdateMember(ModelAndView mv) {
		// 회원정보 수정 페이지 조회
		return mv;
	}
	
//	@PostMapping
	public ModelAndView updateMember(ModelAndView mv, String password, MemberInfoReqDto dto) {
		// 회원정보 수정 / Put, Patch 
		return mv;
	}
	
//	@PostMapping
	public ModelAndView deleteMember(ModelAndView mv) {
		// 회원탈퇴 / DeleteMapping
		return mv;
	}
	
	@ExceptionHandler(Exception.class)
	public ModelAndView memberExceptionHandler(Exception e
			/* 오류발생함 ModelAndView mv */) {
		e.printStackTrace();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", e.getMessage() + "오류가 발생했습니다. 다시 시도해주세요.");
		mv.setViewName("error/error500");
		
		return mv;
	}

}
 