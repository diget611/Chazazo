package kh.spring.chazazo.member.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.member.model.dto.MemberReqDto;
import kh.spring.chazazo.common.email.MailSendService;
import kh.spring.chazazo.member.model.dto.MemberInfoReqDto;
import kh.spring.chazazo.member.model.service.MemberService;

@RestController
@RequestMapping("/member") 
public class MemberController {
	
	@Autowired
	private MemberService mService;
	@Autowired
	private MailSendService mailService;
	
	@GetMapping
	public ModelAndView viewMemberList(ModelAndView mv) {
		// 관리자 회원 리스트 조회
		return mv;
	}
	
	@GetMapping("/login")
	public ModelAndView viewLogin(ModelAndView mv) {
		mv.setViewName("member/login");
		return mv;
	}
	
	@GetMapping("/profile")
	public ModelAndView viewMemberOne(ModelAndView mv, String username) {
		// 마이페이지에 들어가는 url
		mv.setViewName("/member/mypage");
		return mv;
	}
	
	@GetMapping("/register")
	public ModelAndView viewInsertMember(ModelAndView mv) {
		mv.setViewName("member/register");
		return mv;
	}
	
	@PostMapping("/register")
	public ModelAndView insertMember(ModelAndView mv, MemberReqDto memberDto, MemberInfoReqDto memberInfoDto) {
		int result = mService.insert(memberDto, memberInfoDto);
		if(result > 0) {
			mv.setViewName("redirect:/member/login");
		} else {
			mv.setViewName("redirect:/");
		}
		return mv;
	}
	
	@GetMapping("/register/exist")
	public int checkDup(String username) {
		int result = mService.checkDup(username);
		return result;
	}
	
	@GetMapping("/register/email")
	public String checkEmail(String email) {
		return mailService.joinEmail(email);
	}
	
	@GetMapping("/find")
	public ModelAndView viewFindPage(ModelAndView mv) {
		mv.setViewName("member/find");
		return mv;
	}
	
	@GetMapping("/findid")
	public List<String> findId(ModelAndView mv, String email) {
		List<String> idxList = new ArrayList<String>();
		idxList = mService.findId(email);
		return idxList;
	}
	
	@GetMapping("/profile/{username}")
	public ModelAndView viewUpdateMember(ModelAndView mv) {
		// 회원정보 수정 페이지 조회
		mv.setViewName("member/profile");
		return mv;
	}
	
	@PatchMapping("/profile/{username}")
	public ModelAndView updateMember(ModelAndView mv, String password, MemberInfoReqDto dto) {
		// 회원정보 수정 / Put, Patch 
		return mv;
	}
	
	@DeleteMapping("/profile/{username}")
	public ModelAndView deleteMember(ModelAndView mv) {
		// 회원탈퇴 / DeleteMapping
		return mv;
	}
	
	@ExceptionHandler(Exception.class)
	public ModelAndView memberExceptionHandler(Exception e
			/* 오류발생함 ModelAndView mv */) {
		e.printStackTrace();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", e.getMessage() + "오류가       발생했습니다. 다시 시도해주세요.");
		mv.setViewName("error/error500");
		
		return mv;
	}

}
 