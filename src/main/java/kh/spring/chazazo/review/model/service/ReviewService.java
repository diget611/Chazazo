package kh.spring.chazazo.review.model.service;

import java.util.List;

import kh.spring.chazazo.review.model.dto.ReviewDto;

public interface ReviewService {
	
	public int insert(ReviewDto dto);
	public int update(ReviewDto dto);
	public int delete(int idx);
	public ReviewDto selectOne(int idx);
	public List<ReviewDto> selectList();
	public List<ReviewDto> selectList(int vehicleidx);
	
}
