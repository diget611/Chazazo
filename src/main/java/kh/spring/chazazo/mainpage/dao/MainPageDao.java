package kh.spring.chazazo.mainpage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MainPageDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int reviewCount() {
		return sqlSession.selectOne("review.count");
	}
	
	public int reservCount() {
		return sqlSession.selectOne("payment.count");
	}
	
	public int vehicleCount() {
		return sqlSession.selectOne("vehicle.count");
	}
	
	public int locationCount() {
		return sqlSession.selectOne("location.count");
	}
	
	public List<String> reviewList() { 
		return sqlSession.selectList("review.selectListForMain");
	}
}
