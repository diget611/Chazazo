package kh.spring.chazazo.chat.model.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.chat.model.dao.ChatDao;
import kh.spring.chazazo.chat.model.dto.ChatDto;

@Service
public class ChatServiceImpl implements ChatService{

	@Autowired
	private ChatDao dao;

	@Override
	public int createRoom(Map<String, String> data) {
		return dao.createRoom(data);
	}

	@Override
	public int hasRoom(String username) {
		return dao.hasRoom(username);
	}

	@Override
	public String selectRoom(String username) {
		return dao.selectRoom(username);
	}

	@Override
	public int insertChat(ChatDto chat) {
		return dao.insertChat(chat);
	}
	

}
