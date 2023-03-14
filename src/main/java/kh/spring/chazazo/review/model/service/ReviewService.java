package kh.spring.chazazo.review.model.service;

import java.util.List;

import kh.spring.chazazo.review.vo.ReviewVo;

public interface ReviewService {

	public ReviewVo selectOne(int Idx);;
    public List<ReviewVo> selectList();
	public int insert(ReviewVo vo);
	public int update(ReviewVo vo);
	public int delete(int idx);
	
}
