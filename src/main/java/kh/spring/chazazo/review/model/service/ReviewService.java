package kh.spring.chazazo.review.model.service;

import java.util.List;

import kh.spring.chazazo.review.model.dto.ReviewDto;

public interface ReviewService {
	
	public int insertReview(ReviewDto data);
	public int update(ReviewDto dto);
	public int delete(int idx);

	public List<ReviewDto> selectList();
	public List<ReviewDto> selectOne(int vehicleIdx);
	public int insertLike(ReviewDto dto);
	public int updateReview(ReviewDto dto);
	
}
