package kh.spring.chazazo.review.model.dao;

import java.util.List;
import java.util.Map;

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

	public List<ReviewDto> selectList() {
		return sqlSession.selectList("review.selectList");
	}
	public List<ReviewDto> selectOne(int vehicleIdx) {
		return sqlSession.selectList("review.selectOne", vehicleIdx);
	}
	public ReviewDto selectReview(int idx) {
		return sqlSession.selectOne("review.selectReview", idx);
	}
	public int insertLike(ReviewDto dto) {
		return sqlSession.insert("review.inserLike", dto);
	}
	public int updateReview(ReviewDto dto) {
		return sqlSession.insert("review.updateReview", dto);
	}
	public int deleteReview(int idx) {
		return sqlSession.delete("review.deleteReview", idx);
	}
	public int insertReport(ReviewDto data) {
		return sqlSession.insert("review.insertReport", data);
	}


	public int checkResv(ReviewDto data) {
		return sqlSession.selectOne("review.checkResv", data);
	}
	
	public int updateReviewStatus(ReviewDto data) {
		return sqlSession.update("review.updateReviewStatus", data);
	}
	
	public int countReview(String username) {
		return sqlSession.selectOne("review.countReview",username);
	}
	
	

	public List<ReviewDto> selectMyReview(Map<String, Object> map) {
		return sqlSession.selectList("review.selectMyReview", map);
	}
	public int reviewCount(String username) {
		return sqlSession.selectOne("review.reviewCount", username);
	}

}
