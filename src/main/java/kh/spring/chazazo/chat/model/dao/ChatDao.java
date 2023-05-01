package kh.spring.chazazo.chat.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.chat.model.dto.ChatDto;
import kh.spring.chazazo.chat.model.dto.ChatLogDto;
import kh.spring.chazazo.chat.model.dto.ChatRoomListDto;


@Repository
public class ChatDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<ChatRoomListDto> chatRoomList() {
		return sqlSession.selectList("chatroom.selectList");
	}
	
	public int createRoom(Map<String, String> data) {
		return sqlSession.insert("chatroom.insert", data);
	}
	
	public int hasRoom(String username) {
		return sqlSession.selectOne("chatroom.hasRoom", username);
	}
	
	public String selectRoom(String username) {
		return sqlSession.selectOne("chatroom.selectRoom", username);
	}
	
	public List<ChatLogDto> selectChatList(String roomIdx) {
		return sqlSession.selectList("chatlog.selectList", roomIdx);
	}
	
	public int insertChat(ChatDto chat) {
		return sqlSession.insert("chatlog.insert", chat);
	}

}
