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
	public int update(ReviewDto dto) {
		return dao.update(dto);
	}

	@Override
	public int delete(int idx) {
		return dao.delete(idx);
	}



	@Override
	public List<ReviewDto> selectList() {
		return dao.selectList();
	}

	@Override
	public List<ReviewDto> selectOne(int vehicleIdx) {
		return dao.selectOne(vehicleIdx);
	}

}
