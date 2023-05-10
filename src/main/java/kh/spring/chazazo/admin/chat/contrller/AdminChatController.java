package kh.spring.chazazo.admin.chat.contrller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.admin.chat.model.service.AdminChatService;
import kh.spring.chazazo.chat.model.service.ChatService;
import kh.spring.chazazo.common.Pagination;

@RestController
@RequestMapping("/admin/chat")
public class AdminChatController {

	@Autowired
	private AdminChatService service;
	@Autowired
	private ChatService cService;
	
	@GetMapping("")
	public ModelAndView viewChat(ModelAndView mv, @RequestParam(required = false, defaultValue = "1") int page) {
		int count = service.chatroomCount();
		Pagination pagination = new Pagination();
		pagination.pageInfo(10, page, count);
		
		mv.addObject("chatroomList", service.selectChatroomList(pagination));
		mv.addObject("pagination", pagination);
		mv.setViewName("admin/chat");
		return mv;
	}
	
	@GetMapping("/{roomIdx}")
	public ModelAndView viewChatLog(ModelAndView mv, @PathVariable String roomIdx) {
		mv.addObject("chatLogList", cService.selectChatList(roomIdx));
		mv.setViewName("admin/chatlog");
		return mv;
	}
}
