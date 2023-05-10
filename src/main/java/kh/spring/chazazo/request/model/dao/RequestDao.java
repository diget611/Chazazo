package kh.spring.chazazo.request.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.request.model.dto.RequestReqDto;
import kh.spring.chazazo.request.model.dto.RequestRespDto;

@Repository
public class RequestDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<RequestRespDto> selectListByMember(String username) {
		return sqlSession.selectList("request.selectListByMember", username);
	}
	
	public int insert(RequestReqDto data) {
		return sqlSession.insert("request.insert", data);
	}
}
