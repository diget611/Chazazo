package kh.spring.chazazo.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.member.model.dto.MemberDto;
import kh.spring.chazazo.member.model.dto.MemberInfoDto;
import kh.spring.chazazo.member.model.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@GetMapping("/register")
	public ModelAndView viewRegisterPage(ModelAndView mv) {
		mv.setViewName("member/register");
		return mv;
	}
	
	@PostMapping("/register")
	public ModelAndView register(ModelAndView mv, MemberDto memberDto, MemberInfoDto memberInfoDto) {
		service.insert(memberDto, memberInfoDto);
		return mv;
	}

}
 