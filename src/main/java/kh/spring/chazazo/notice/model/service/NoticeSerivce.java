package kh.spring.chazazo.notice.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.notice.model.vo.NoticeVo;


public interface NoticeSerivce {
	
	public int insert(NoticeVo vo);
	public int update(NoticeVo vo);
	public int delete(int idx);
	public NoticeVo selectOne(int idx);
	public List<NoticeVo> selectList();
}
