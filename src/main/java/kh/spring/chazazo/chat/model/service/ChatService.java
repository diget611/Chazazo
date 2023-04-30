package kh.spring.chazazo.chat.model.service;

import java.util.List;

import kh.spring.chazazo.chat.model.dto.ChatDto;

public interface ChatService {
	
	public List<ChatDto> selectChatList(int roomNo);
	public int insertChat(ChatDto chat);
}
