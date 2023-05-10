package kh.spring.chazazo.admin.coupon.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.chazazo.admin.coupon.model.dto.AdminCouponInsertReqDto;
import kh.spring.chazazo.admin.coupon.model.dto.AdminCouponManageRespDto;
import kh.spring.chazazo.admin.coupon.model.dto.AdminCouponUpdateReqDto;
import kh.spring.chazazo.common.Pagination;

@Repository
public class AdminCouponDao {

	@Autowired
	private SqlSession sqlSession;
	
	public int couponCount() {
		return sqlSession.selectOne("couponmanage.count");
	}
	public List<AdminCouponManageRespDto> selectCouponList(Pagination pagination) {
		return sqlSession.selectList("couponmanage.selectList", pagination);
	}
	public AdminCouponManageRespDto selectCouponOne(String idx) {
		return sqlSession.selectOne("couponmanage.selectOne", idx);
	}
	public int insertCoupon(AdminCouponInsertReqDto data) {
		return sqlSession.insert("couponmanage.insert", data);
	}
	public int updateCoupon(AdminCouponUpdateReqDto data) {
		return sqlSession.update("couponmanage.update", data);
	}
	public int deleteCoupon(int idx) {
		return sqlSession.update("couponmanage.delete", idx);
	}
	
}
