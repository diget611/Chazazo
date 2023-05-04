package kh.spring.chazazo.couponmanage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.couponmanage.dto.CouponManageReqDto;
import kh.spring.chazazo.couponmanage.dto.CouponManageRespDto;

@Repository
public class CouponManageDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<CouponManageRespDto> selectMycoupon(String username){
		return sqlSession.selectList("couponmanage.couponList", username);
	}
	
	public int insertCoupon(CouponManageReqDto dto) {
		return sqlSession.insert("couponmanage.insertCoupon", dto);
	}
	
	public int selectCouponCode(String couponCode) {
		return sqlSession.selectOne("couponmanage.selectCouponCode", couponCode);
	}


}
