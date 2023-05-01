package kh.spring.chazazo.chat.model.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.chat.model.dto.ChatDto;


@Repository
public class ChatDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	/*
	public List<ChatDto> selectChatList(int roomNo) {
		return sqlSession.selectList("chat.selectList", roomNo);
	}
	
	public int insertChat(ChatDto chat) {
		return sqlSession.insert("chat.insert", chat);
	}
	*/
	
	public int createRoom(Map<String, String> data) {
		return sqlSession.insert("chatroom.insert", data);
	}
	
	public int hasRoom(String username) {
		return sqlSession.selectOne("chatroom.hasRoom", username);
	}
	
	public String selectRoom(String username) {
		return sqlSession.selectOne("chatroom.selectRoom", username);
	}
	
	public int insertChat(ChatDto chat) {
		return sqlSession.insert("chatlog.insert", chat);
	}

}
