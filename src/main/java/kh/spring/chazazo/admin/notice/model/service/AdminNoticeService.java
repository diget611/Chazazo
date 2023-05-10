package kh.spring.chazazo.admin.notice.model.service;

import java.util.List;

import kh.spring.chazazo.admin.notice.model.dto.AdminNoticeInsertReqDto;
import kh.spring.chazazo.admin.notice.model.dto.AdminNoticeOneRespDto;
import kh.spring.chazazo.admin.notice.model.dto.AdminNoticeRespDto;
import kh.spring.chazazo.admin.notice.model.dto.AdminNoticeUpdateReqDto;
import kh.spring.chazazo.common.Pagination;

public interface AdminNoticeService {
	
	public int noticeCount();
	public List<AdminNoticeRespDto> selectNoticeList(Pagination pagination);
	public AdminNoticeOneRespDto selectNoticeOne(String idx);
	public int insertNotice(AdminNoticeInsertReqDto data);
	public int deleteNotice(int idx);
	public int updateNotice(AdminNoticeUpdateReqDto data);
	
}
