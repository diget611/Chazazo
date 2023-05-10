package kh.spring.chazazo.admin.notice.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.admin.notice.model.dao.AdminNoticeDao;
import kh.spring.chazazo.admin.notice.model.dto.AdminNoticeInsertReqDto;
import kh.spring.chazazo.admin.notice.model.dto.AdminNoticeOneRespDto;
import kh.spring.chazazo.admin.notice.model.dto.AdminNoticeRespDto;
import kh.spring.chazazo.admin.notice.model.dto.AdminNoticeUpdateReqDto;
import kh.spring.chazazo.common.Pagination;

@Service
public class AdminNoticeServiceImpl implements AdminNoticeService {
	
	@Autowired
	private AdminNoticeDao dao;
	
	@Override
	public int noticeCount() {
		return dao.noticeCount();
	}
	@Override
	public List<AdminNoticeRespDto> selectNoticeList(Pagination pagination) {
		return dao.selectNoticeList(pagination);
	}
	@Override
	public AdminNoticeOneRespDto selectNoticeOne(String idx) {
		return dao.selectNoticeOne(idx);
	}
	@Override
	public int insertNotice(AdminNoticeInsertReqDto data) {
		return dao.insertNotice(data);
	}
	@Override
	public int updateNotice(AdminNoticeUpdateReqDto data) {
		return dao.updateNotice(data);
	}
	@Override
	public int deleteNotice(int idx) {
		return dao.deleteNotice(idx);
	}

}
