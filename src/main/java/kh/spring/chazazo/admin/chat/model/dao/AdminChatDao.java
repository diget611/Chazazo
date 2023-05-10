package kh.spring.chazazo.admin.chat.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.admin.chat.model.dto.AdminChatRoomRespDto;
import kh.spring.chazazo.common.Pagination;

@Repository
public class AdminChatDao {

	@Autowired
	private SqlSession sqlSession;
	
	public List<AdminChatRoomRespDto> selectChatroomList(Pagination pagination) {
		return sqlSession.selectList("chatroom.selectChatroomList", pagination);
	}
	public int chatroomCount() {
		return sqlSession.selectOne("chatroom.count");
	}
	
}
