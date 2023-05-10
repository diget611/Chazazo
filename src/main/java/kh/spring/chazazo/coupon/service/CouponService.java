package kh.spring.chazazo.coupon.service;

import java.util.List;
import java.util.Map;

import kh.spring.chazazo.coupon.dto.CouponReqDto;

public interface CouponService {

	public List<CouponReqDto> selectCoupon(int idx);

	
	public int insertCoupon(Map<String, Object> map);
	public int totalCoupon(Map<String, Object> map);

	

	public int countCoupon(String username);
	public int insertWelcomeCoupon();
}
