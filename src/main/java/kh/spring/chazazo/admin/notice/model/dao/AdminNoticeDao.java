package kh.spring.chazazo.admin.notice.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.admin.notice.model.dto.AdminNoticeInsertReqDto;
import kh.spring.chazazo.admin.notice.model.dto.AdminNoticeOneRespDto;
import kh.spring.chazazo.admin.notice.model.dto.AdminNoticeRespDto;
import kh.spring.chazazo.admin.notice.model.dto.AdminNoticeUpdateReqDto;
import kh.spring.chazazo.common.Pagination;

@Repository
public class AdminNoticeDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int noticeCount() {
		return sqlSession.selectOne("notice.count");
	}
	public List<AdminNoticeRespDto> selectNoticeList(Pagination pagination) {
		return sqlSession.selectList("notice.selectList", pagination);
	}
	public AdminNoticeOneRespDto selectNoticeOne(String idx) {
		return sqlSession.selectOne("notice.selectOne", idx);
	}
	public int insertNotice(AdminNoticeInsertReqDto data) {
		return sqlSession.insert("notice.insert", data);
	}
	public int updateNotice(AdminNoticeUpdateReqDto data) {
		return sqlSession.update("notice.update", data);
	}
	public int deleteNotice(int idx) {
		return sqlSession.update("notice.delete", idx);
	}

}
