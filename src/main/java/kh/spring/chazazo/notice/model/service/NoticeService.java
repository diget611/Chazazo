package kh.spring.chazazo.notice.model.service;

import java.util.List;
import java.util.Map;

import kh.spring.chazazo.admin.notice.model.dto.AdminNoticeRespDto;
import kh.spring.chazazo.common.Pagination;
import kh.spring.chazazo.notice.model.dto.NoticeDto;

public interface NoticeService {
	
	public List<NoticeDto> selectNotice();
	public List<AdminNoticeRespDto> selectNoticeList(Pagination pagination);
	public int noticeCount();
	public List<NoticeDto> selectSearch(Map<String, String> data);
}
