package kh.spring.chazazo.review.model.service;

import java.util.List;

import kh.spring.chazazo.review.model.dto.ReviewDto;

public interface ReviewService {
	
	public int insertReview(ReviewDto data);
	public List<ReviewDto> selectList();
	public List<ReviewDto> selectOne(int vehicleIdx);
	public int insertLike(ReviewDto dto);
	public int updateReview(ReviewDto dto);
	public int deleteReview(int idx);
	public int insertReport(ReviewDto data);
	public ReviewDto selectReview(int idx);
	
	public List<ReviewDto> selectMyReview(String username);
}
