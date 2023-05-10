package kh.spring.chazazo.coupon.service;

import java.util.List;

import kh.spring.chazazo.coupon.dto.CouponReqDto;

public interface CouponService {

	public List<CouponReqDto> selectCoupon(int idx);
	public int insertCoupon(CouponReqDto dto);
	public int totalCoupon(CouponReqDto dto);
	public int countCoupon(String username);
	public int insertWelcomeCoupon();
}
