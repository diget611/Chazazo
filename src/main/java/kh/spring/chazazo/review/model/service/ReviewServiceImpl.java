package kh.spring.chazazo.review.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

	@Override
	@Transactional
	public int insertReport(ReviewDto data) {
		int result = dao.insertReport(data);
		if(result == 1) {
			result = dao.updateReviewStatus(data);
		}
		return result;
	}

//	@Override
//	public List<ReviewDto> selectMyReview(String usesrname) {
//		return dao.selectMyReview(usesrname);
//	}

	@Override
	public int checkResv(ReviewDto data) {
		return dao.checkResv(data);
	}

	@Override
	public int countReview(String username) {
		return dao.countReview(username);
	}

	@Override
	public List<ReviewDto> selectMyReview(Map<String, Object> map) {
		return dao.selectMyReview(map);
	}

	@Override
	public int reviewCount(String username) {
		return dao.countReview(username);
	}

	
	
	
	
	@Override
	public List<ReviewDto> selectMyReview(String username) {
		// TODO Auto-generated method stub
		return null;
	}

}
