package kh.spring.chazazo.admin.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.admin.member.model.dto.AdminMemberUpdateReqDto;
import kh.spring.chazazo.admin.member.model.service.AdminMemberService;
import kh.spring.chazazo.common.Pagination;

@RestController
@RequestMapping("/admin/member")
public class AdminMemberController {

	@Autowired
	private AdminMemberService service;
	
	@GetMapping("")
	public ModelAndView viewMember(ModelAndView mv, @RequestParam(required = false, defaultValue = "1") int page) {
		int count = service.memberCount();
		Pagination pagination = new Pagination();
		pagination.pageInfo(10, page, count);
		
		mv.addObject("memberList", service.selectMemberList(pagination));
		mv.addObject("pagination", pagination);
		mv.setViewName("admin/member");
		return mv;
	}
	
	@GetMapping("/{username}")
	public ModelAndView viewMemberOne(ModelAndView mv, @PathVariable String username) {
		mv.addObject("member", service.selectMemberOne(username));
		mv.setViewName("admin/memberdetails");
		return mv;
	}
	
	@PatchMapping("/update")
	public int updateMember(@RequestBody AdminMemberUpdateReqDto data) {
		int result = service.updateMember(data);
		return result;
	}
	
	@DeleteMapping("/{username}")
	public int deleteMember(@PathVariable String username) {
		int result = service.deleteMember(username);
		return result;
	}
	
}
