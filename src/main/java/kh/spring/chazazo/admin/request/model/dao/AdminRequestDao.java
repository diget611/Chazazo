package kh.spring.chazazo.admin.request.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.admin.request.model.dto.AdminRequestOneRespDto;
import kh.spring.chazazo.admin.request.model.dto.AdminRequestRespDto;
import kh.spring.chazazo.common.Pagination;

@Repository
public class AdminRequestDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int requestCount() {
		return sqlSession.selectOne("request.count");
	}
	public List<AdminRequestRespDto> selectRequestList(Pagination pagination) {
		return sqlSession.selectList("request.selectList", pagination);
	}
	public List<AdminRequestRespDto> selectRequestList(Map<String, Integer> data) {
		return sqlSession.selectList("request.selectList", data);
	}
	public AdminRequestOneRespDto selectRequestOne(String idx) {
		return sqlSession.selectOne("request.selectOne", idx);
	}
	public int insertAnswer(Map<String, String> data) {
		return sqlSession.insert("answer.insert", data);
	}
	public int updateRequest(String idx) {
		return sqlSession.update("request.update", idx);
	}
	public int updateAnswer(Map<String, String> data) {
		return sqlSession.update("answer.update", data);
	}
	public int deleteRequest(String idx) {
		return sqlSession.delete("request.delete", idx);
	}
	public int deleteAnswer(String idx) {
		return sqlSession.delete("answer.delete", idx);
	}
	public int answerCount(String idx) {
		return sqlSession.selectOne("answer.count", idx);
	}
}
