package kh.spring.chazazo.inquiry.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.inquiry.model.dto.InquiryInsertReqDto;
import kh.spring.chazazo.inquiry.model.dto.InquiryRespDto;

@Repository
public class InquiryDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<InquiryRespDto> selectList(Map<String, String> data) {
		return sqlSession.selectList("inquiry.selectList", data);
	}
	
	public int insert(InquiryInsertReqDto data) {
		return sqlSession.insert("inquiry.insert", data);
	}

}
