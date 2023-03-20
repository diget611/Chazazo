package kh.spring.chazazo.review.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.review.vo.ReviewVo;

@Repository
public class ReviewDao {

		@Autowired 
		private SqlSession sqlSession;
		
		public int insert(ReviewVo vo) {
			return sqlSession.insert("reviewMapper.insert", vo);
		}
		public int update(ReviewVo vo) {
			return sqlSession.update("reviewMapper.update", vo);
		}
		public int delete(int idx) {
			return sqlSession.delete("reviewMapper.delete", idx);
		}		
		public ReviewVo selectOne(int idx ) {
			return sqlSession.selectOne("reviewMapper.selectOne", idx);
		}
	
		public List<ReviewVo> selectList() {
			return sqlSession.selectList("reviewMapper.selectList");
		}
		public List<ReviewVo> selectList(int vehicleidx) {
			return sqlSession.selectList("reviewMapper.reviewList",vehicleidx);
		}
}

