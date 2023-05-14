package kh.spring.chazazo.notice.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.admin.notice.model.dto.AdminNoticeRespDto;
import kh.spring.chazazo.common.Pagination;
import kh.spring.chazazo.notice.model.dao.NoticeDao;
import kh.spring.chazazo.notice.model.dto.NoticeDto;

@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private NoticeDao dao;
	
	@Override
	public List<NoticeDto> selectNotice() {
		return dao.selectNotice();
	}

	@Override
	public List<AdminNoticeRespDto> selectNoticeList(Pagination pagination) {
		return dao.selectNoticeList(pagination);
	}

	@Override
	public int noticeCount() {
		return dao.noticeCount();
	}

	@Override
	public List<NoticeDto> selectSearch(Map<String, String> data) {
		return dao.selectSearch(data);
	}

}
