package kh.spring.chazazo.request.controller;

import java.security.Principal;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

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
			mv.addObject("request", rService.selectListByMember(username));
			mv.setViewName("inquiry/request");
		}
		return mv;
	}
	
	@GetMapping("/{idx}")
	public ModelAndView viewRequestOne(ModelAndView mv, Principal prin) {
		// jsp에서 문의 아이디랑 로그인한 아이디가 같은지 확인한 후
		// 일치하면 상세 내용 띄우고 일치하지 않으면 페이지 이동
		mv.setViewName("inquiry/requestdetails");
		return mv;
	}
	
	@GetMapping("/insert")
	public ModelAndView viewInsertRequest(ModelAndView mv) {
		mv.setViewName("inquiry/reqinsert");
		return mv;
	}
	
	@PostMapping("/insert")
	@ResponseBody
	public int insertRequest(@RequestParam Map<String, String> data) {
		int result = rService.insert(data);
		return result;
	}
}
