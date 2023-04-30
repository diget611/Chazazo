package kh.spring.chazazo.chat.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.chat.model.dao.ChatDao;
import kh.spring.chazazo.chat.model.dto.ChatDto;

@Service
public class ChatServiceImpl implements ChatService{

	@Autowired
	private ChatDao dao;
	
	@Override
	public List<ChatDto> selectChatList(int roomNo) {
		return dao.selectChatList(roomNo);
	}

	@Override
	public int insertChat(ChatDto chat) {
		return dao.insertChat(chat);
	}

}
