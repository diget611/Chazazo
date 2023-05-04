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
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import kh.spring.chazazo.chat.model.dto.ChatDto;
import kh.spring.chazazo.chat.model.dto.ChatRoomDto;
import kh.spring.chazazo.chat.model.service.ChatService;

@RestController
@RequestMapping("/chat")
public class ChatController {
	
	@Autowired
	private ChatService service;
	@Autowired
	private SimpMessagingTemplate template;
	
	@GetMapping("/rooms")
	public String getChatRoomList(Principal prin) {
		String username = prin.getName();
		return new Gson().toJson(service.chatRoomList(username));
	}
	
	@GetMapping("/room/{roomIdx}")
	public ModelAndView enterChat(ModelAndView mv, Principal prin, @PathVariable String roomIdx) {
		String username = prin.getName();
		System.out.println(roomIdx);
		Map<String, String> data = new HashMap<String, String>();
		data.put("username", username);
		data.put("roomIdx", roomIdx);
		
		service.updateChat(data);
		
		mv.addObject("chatList", service.selectChatList(roomIdx));
		mv.addObject("username", username);
		mv.addObject("roomIdx", roomIdx);
		mv.setViewName("chat/room");
		return mv;
	}
	
	@GetMapping("/room")
	public String createRoom(Principal prin) {
		String result = "";
		String username = prin.getName();
		if(service.hasRoom(username) >= 1) {
			result = service.selectRoom(username);
		} else {
			ChatRoomDto room = new ChatRoomDto();
			Map<String, String> data = new HashMap<String, String>();
			data.put("username", username);
			data.put("idx", room.getIdx());
			if(service.createRoom(data) == 1) result = room.getIdx();
		}
			
		return result;
	}
	
	@PatchMapping("/room")
	public int chatEnd(String roomIdx) {
		int result = service.chatEnd(roomIdx);
		return result;
	}
 	
	@GetMapping("/check")
	public int checkChat(Principal prin) {
		int result = 0;
		if(prin == null) {
			result = 0;
		} else {
			String username = prin.getName();
			if(service.checkAuth(username).equals("ROLE_ADMIN")) {
				result = service.countForAdmin();
			} else {
				result = service.countForMember(username);
			}
		}
		return result;
	}
	
	@MessageMapping("/chat/message")
    public void message(ChatDto chat) {
		if(service.insertChat(chat) == 1) {
			template.convertAndSend("/sub/chat/room/" + chat.getRoomIdx(), chat);			
		} else {
			chat.setChatCon("문제 발생");
			chat.setSender("null");
			template.convertAndSend("/sub/chat/room/" + chat.getRoomIdx(), chat);
		}
    }
	
	@GetMapping("/checkroom")
	public String checkRoom(String username) {
		String result = service.selectRoom(username);
		return result;
	}
	
	@GetMapping("/checkclose")
	public int checkClose(String roomIdx, String username) {
		Map<String, String> data = new HashMap<String, String>();
		data.put("username", username);
		data.put("roomIdx", roomIdx);
		
		int result = service.updateChat(data);
		
		return result;
	}
	
}
