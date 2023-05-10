package kh.spring.chazazo.coupon.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.coupon.dao.CouponDao;
import kh.spring.chazazo.coupon.dto.CouponReqDto;

@Service
public class CouponServiceImpl implements CouponService {


	@Autowired
	private CouponDao dao;
	
	@Override
	public List<CouponReqDto> selectCoupon(int idx) {
		return dao.selectCoupon(idx);
	}

	@Override
	public int insertCoupon(Map<String, Object> map) {
		return dao.insertCoupon(map);
	}

	@Override
	public int totalCoupon(Map<String, Object> map) {
		return dao.totalCoupon(map);
	}
	
	@Override
	public int insertWelcomeCoupon() {
		return dao.insertWelcomeCoupon();
	}

	@Override
	public int countCoupon(String username) {
		return dao.countCoupon(username);
	}

	

}
