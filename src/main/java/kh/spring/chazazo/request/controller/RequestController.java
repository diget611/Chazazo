package kh.spring.chazazo.request.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.request.model.dto.RequestReqDto;
import kh.spring.chazazo.request.model.service.RequestService;

@RestController
@RequestMapping("/request")
public class RequestController {
	
	@Autowired
	private RequestService rService;
	
	@GetMapping("")
	public ModelAndView viewRequest(ModelAndView mv, Principal prin) {
		if(prin == null) {
			mv.setViewName("redirect:/inquiry");
		} else {
			String username = prin.getName();
			mv.addObject("requestList", rService.selectListByMember(username));
			mv.setViewName("inquiry/request");
		}
		return mv;
	}
	
	@GetMapping("/{idx}")
	public ModelAndView viewRequestOne(ModelAndView mv, Principal prin) {
		mv.setViewName("inquiry/requestdetails");
		return mv;
	}
	
	@GetMapping("/insert")
	public ModelAndView viewInsertRequest(ModelAndView mv) {
		mv.setViewName("inquiry/reqinsert");
		return mv;
	}
	
	@PostMapping("/insert")
	public int insertRequest(@RequestBody RequestReqDto data) {
		int result = rService.insert(data);
		return result;
	}
}
