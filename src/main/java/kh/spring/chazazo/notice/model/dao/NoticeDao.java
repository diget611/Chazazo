package kh.spring.chazazo.notice.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.admin.notice.model.dto.AdminNoticeRespDto;
import kh.spring.chazazo.common.Pagination;
import kh.spring.chazazo.notice.model.dto.NoticeDto;

@Repository
public class NoticeDao {
	
	@Autowired
	private SqlSession session;
	
	public List<NoticeDto> selectNotice(){
		return session.selectList("notice.selectNotice");
	}

	public List<AdminNoticeRespDto> selectNoticeList(Pagination pagination) {
		return session.selectList("notice.selectList", pagination);
	}
	public int noticeCount() {
		return session.selectOne("notice.count");
	}
	
	public List<NoticeDto> selectSearch(String searchword){
		return session.selectList("notice.selectSearch", searchword);
	}
}
