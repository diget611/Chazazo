package kh.spring.chazazo.coupon.dao;

import java.util.List;

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

	public int insertCoupon(CouponReqDto dto) {
		return sqlSession.insert("coupon.insertCoupon", dto);
	}
	
	public int totalCoupon(String username) {
		return sqlSession.selectOne(username);
	}
	
	public int insertWelcomeCoupon() {
		return sqlSession.insert("coupon.insertWelcome");
	}
}
