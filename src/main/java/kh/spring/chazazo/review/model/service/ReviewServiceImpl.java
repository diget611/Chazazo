package kh.spring.chazazo.review.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.review.model.dao.ReviewDao;
import kh.spring.chazazo.review.vo.ReviewVo;

@Service
public class ReviewServiceImpl implements ReviewService {


		@Autowired
		private ReviewDao dao;

		@Override
		public ReviewVo selectOne(int idx) {
			return dao.selectOne(idx);
		}
		@Override
		public List<ReviewVo> selectList() {
			return dao.selectList();
		}


		@Override
		public int insert(ReviewVo vo) {
			return dao.insert(vo);
		}

		@Override
		public int update(ReviewVo vo) {
			return dao.update(vo);
		}

		@Override
		public int delete(int idx) {
			return dao.delete(idx);
		}


	
}
