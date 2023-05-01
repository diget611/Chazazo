package kh.spring.chazazo.chat.model.service;

import java.util.Map;

import kh.spring.chazazo.chat.model.dto.ChatDto;

public interface ChatService {
	
	public int createRoom(Map<String, String> data);
	public int hasRoom(String username);
	public String selectRoom(String username);
	public int insertChat(ChatDto chat);
	
}
