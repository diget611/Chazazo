package kh.spring.chazazo.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.member.model.service.MemberService;
import kh.spring.chazazo.member.model.vo.MemberVo;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@GetMapping("/insert")
	public ModelAndView viewRegisterPage(ModelAndView mv) {
		mv.setViewName("member/insert");
		return mv;
	}
	
	@PostMapping("/insert")
	public ModelAndView register(ModelAndView mv, MemberVo vo) {
		service.insert(vo);
		return mv;
	}

}
 