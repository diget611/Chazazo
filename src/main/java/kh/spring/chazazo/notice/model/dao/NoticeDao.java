package kh.spring.chazazo.notice.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import kh.spring.chazazo.notice.model.vo.NoticeVo;

public class NoticeDao {

	@Autowired
	private SqlSession session;
	
	public int insert(NoticeVo vo) {
		return session.insert("noticeMapper.insert", vo);
	}
	public int update(NoticeVo vo) {
		return session.update("noticeMapper.update", vo);		
	}
	
	public int delete(int idx) {
		return session.delete("noticeMapper.delete",idx);		
	}
	
	public NoticeVo selectOne(int idx) {
		return session.selectOne("noticeMapper.selectOne", idx);		
	}
	public List<NoticeVo> selectList() {
		return session.selectList("noticeMapper.selectList");		
	}
	
}
