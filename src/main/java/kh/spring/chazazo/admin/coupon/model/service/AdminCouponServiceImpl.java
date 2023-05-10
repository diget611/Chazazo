package kh.spring.chazazo.admin.coupon.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.admin.coupon.model.dao.AdminCouponDao;
import kh.spring.chazazo.admin.coupon.model.dto.AdminCouponInsertReqDto;
import kh.spring.chazazo.admin.coupon.model.dto.AdminCouponManageRespDto;
import kh.spring.chazazo.admin.coupon.model.dto.AdminCouponUpdateReqDto;
import kh.spring.chazazo.common.Pagination;

@Service
public class AdminCouponServiceImpl implements AdminCouponService {
	
	@Autowired
	private AdminCouponDao dao;
	
	@Override
	public int couponCount() {
		return dao.couponCount();
	}
	@Override
	public List<AdminCouponManageRespDto> selectCouponList(Pagination pagination) {
		return dao.selectCouponList(pagination);
	}
	@Override
	public AdminCouponManageRespDto selectCouponOne(String idx) {
		return dao.selectCouponOne(idx);
	}
	@Override
	public int insertCoupon(AdminCouponInsertReqDto data) {
		return dao.insertCoupon(data);
	}
	@Override
	public int updateCoupon(AdminCouponUpdateReqDto data) {
		return dao.updateCoupon(data);
	}
	@Override
	public int deleteCoupon(int idx) {
		return dao.deleteCoupon(idx);
	}
	
}
