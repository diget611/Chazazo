package kh.spring.chazazo.common.chat.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ChatController {

	@GetMapping("/chat")
	public ModelAndView chat(ModelAndView mv) {
		mv.setViewName("chat/chat");
		return mv;
	}
	
}
