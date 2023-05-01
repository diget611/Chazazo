package kh.spring.chazazo.chat.model.service;

import java.util.List;
import java.util.Map;

import kh.spring.chazazo.chat.model.dto.ChatDto;
import kh.spring.chazazo.chat.model.dto.ChatLogDto;
import kh.spring.chazazo.chat.model.dto.ChatRoomListDto;

public interface ChatService {
	
	public List<ChatRoomListDto> chatRoomList();
	public int createRoom(Map<String, String> data);
	public int hasRoom(String username);
	public String selectRoom(String username);
	public int updateChat(Map<String, String> data);
	public List<ChatLogDto> selectChatList(String roomIdx);
	public int insertChat(ChatDto chat);
	public String checkAuth(String username);
	public int countForAdmin();	
	public int countForMember(String username);

}
