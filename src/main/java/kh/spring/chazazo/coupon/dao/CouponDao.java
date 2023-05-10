package kh.spring.chazazo.coupon.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.coupon.dto.CouponReqDto;

@Repository
public class CouponDao {
	@Autowired
	private SqlSession sqlSession;
	
	public List<CouponReqDto> selectCoupon(int idx) {
		return sqlSession.selectList("coupon.selectCoupon",idx);
	}

	public int insertCoupon(Map<String, Object> map) {
		return sqlSession.insert("coupon.insertCoupon", map);
	}
	
	public int totalCoupon(Map<String, Object> map) {
		return sqlSession.selectOne("coupon.totalCoupon",map);
	}
	
	public int insertWelcomeCoupon() {
		return sqlSession.insert("coupon.insertWelcome");
	}
	public int countCoupon(String username) {
		return sqlSession.selectOne("coupon.countCoupon", username);
	}
	
}
