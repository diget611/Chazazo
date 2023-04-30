package kh.spring.chazazo.chat.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.chat.model.dto.ChatDto;

@Repository
public class ChatDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<ChatDto> selectChatList(int roomNo) {
		return sqlSession.selectList("chat.selectList", roomNo);
	}
	
	public int insertChat(ChatDto chat) {
		return sqlSession.insert("chat.insert", chat);
	}

}
