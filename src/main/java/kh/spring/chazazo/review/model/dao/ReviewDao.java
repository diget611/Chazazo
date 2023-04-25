package kh.spring.chazazo.review.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.review.model.dto.ReviewDto;

@Repository
public class ReviewDao {
	@Autowired 
	private SqlSession sqlSession;
	
	public int insertReview(ReviewDto dto) {
		return sqlSession.insert("review.insert", dto);
	}
	public int update(ReviewDto dto) {
		return sqlSession.update("review.update", dto);
	}
	public int delete(int idx) {
		return sqlSession.delete("review.delete", idx);
	}		

	public List<ReviewDto> selectList() {
		return sqlSession.selectList("review.selectList");
	}
	public List<ReviewDto> selectOne(int vehicleIdx) {
		return sqlSession.selectList("review.selectOne", vehicleIdx);
	}
	public int insertLike(ReviewDto dto) {
		return sqlSession.insert("review.inserLike", dto);
	}
	public int updateReview(ReviewDto dto) {
		return sqlSession.insert("review.updateReview", dto);
	}
}
