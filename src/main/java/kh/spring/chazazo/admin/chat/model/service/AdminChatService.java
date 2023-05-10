package kh.spring.chazazo.admin.chat.model.service;

import java.util.List;

import kh.spring.chazazo.admin.chat.model.dto.AdminChatRoomRespDto;
import kh.spring.chazazo.common.Pagination;

public interface AdminChatService {
	
	public List<AdminChatRoomRespDto> selectChatroomList(Pagination pagination);
	public int chatroomCount();

}
