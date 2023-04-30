package kh.spring.chazazo.chat.controller;

import java.security.Principal;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.chat.model.dto.ChatDto;
import kh.spring.chazazo.chat.model.service.ChatService;

@RestController
@RequestMapping("/chat")
public class ChatController {
	
	@Autowired
	private ChatService service;
	@Autowired
	private SimpMessagingTemplate template;
	
	// 관리자 채팅 문의 들어온 방들 확인용
	@GetMapping("/rooms")
	public ModelAndView getChatRoomList(ModelAndView mv) {
		//mv.addObject("roomList", service);
		mv.setViewName("chat/rooms");
		return mv;
	}
	
	@GetMapping("/room/{roomIdx}")
	public ModelAndView enterChat(ModelAndView mv, Principal prin, @PathVariable int roomIdx) {
		String username = prin.getName();
		mv.addObject("username", username);
		mv.addObject("roomIdx", roomIdx);
		mv.setViewName("chat/room");
		return mv;
	}
	
	@MessageMapping("/chat/message")
    public void message(ChatDto chat) {
		template.convertAndSend("/sub/chat/room/" + chat.getRoomIdx(), chat);
    }
	
}
