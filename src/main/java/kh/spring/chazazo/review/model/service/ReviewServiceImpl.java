package kh.spring.chazazo.review.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.review.model.dao.ReviewDao;
import kh.spring.chazazo.review.model.dto.ReviewDto;

@Service
public class ReviewServiceImpl implements ReviewService{

	@Autowired
	private ReviewDao dao;
	
	@Override
	public int insertReview(ReviewDto dto) {
		return dao.insertReview(dto);
	}

	@Override
	public List<ReviewDto> selectList() {
		return dao.selectList();
	}

	@Override
	public List<ReviewDto> selectOne(int vehicleIdx) {
		return dao.selectOne(vehicleIdx);
	}
	@Override
	public ReviewDto selectReview(int idx) {
		return dao.selectReview(idx);
	}
	@Override
	public int insertLike(ReviewDto dto) {
		return dao.insertLike(dto);
	}

	@Override
	public int updateReview(ReviewDto dto) {
		return dao.updateReview(dto);
	}

	@Override
	public int deleteReview(int idx) {
		return dao.deleteReview(idx);
	}

	//@Override
	public int insertReport(ReviewDto data) {
		return dao.insertReport(data);
	}

	
	
	@Override
	public List<ReviewDto> selectMyReview(String usesrname) {
		return dao.selectMyReview(usesrname);
	}

	@Override
	public int checkResv(ReviewDto data) {
		return dao.checkResv(data);
	}

	
	






}
