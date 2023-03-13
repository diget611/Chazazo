package kh.spring.chazazo.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.member.model.service.MemberService;
import kh.spring.chazazo.member.model.vo.MemberVo;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@GetMapping("/list")
	public ModelAndView getMemberList(ModelAndView mv) {
		mv.addObject("list", service.selectList());
		mv.setViewName("member/list");
		return mv;
	}
	
	@GetMapping("/mypage")
	public ModelAndView getMemberInfo(ModelAndView mv, String id) {
		id = "user1";
		mv.addObject("info", service.selectOne(id));
		mv.setViewName("member/mypage");
		return mv;
	}
	
	@GetMapping("/insert")
	public ModelAndView insertMember(ModelAndView mv, MemberVo vo) {
		vo.setIdx(6);
		vo.setId("user777");
		vo.setPassword("user777");
		vo.setName("유저777");
		vo.setEmail("user777@test.or.kr");
		int result = service.insert(vo);
		mv.setViewName("member/insert");
		return mv;
	}
	
	@GetMapping("/update")
	public ModelAndView updateMember(ModelAndView mv, MemberVo vo) {
		vo.setId("user777");
		vo.setPassword("abcdefg");
		vo.setEmail("changeTest@test.or.kr");
		int result = service.update(vo);
		mv.setViewName("member/update");
		return mv;
	}
	
	@GetMapping("/delete")
	public ModelAndView deleteMember(ModelAndView mv, String id) {
		id = "user777";
		int result = service.delete(id);
		mv.setViewName("member/delete");
		return mv;
	}
}
 