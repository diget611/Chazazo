package kh.spring.chazazo.admin.chat.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.admin.chat.model.dao.AdminChatDao;
import kh.spring.chazazo.admin.chat.model.dto.AdminChatRoomRespDto;
import kh.spring.chazazo.common.Pagination;

@Service
public class AdminChatServiceImpl implements AdminChatService {
	
	@Autowired
	private AdminChatDao dao;
	
	@Override
	public List<AdminChatRoomRespDto> selectChatroomList(Pagination pagination) {
		return dao.selectChatroomList(pagination);
	}
	@Override
	public int chatroomCount() {
		return dao.chatroomCount();
	}
	
}
