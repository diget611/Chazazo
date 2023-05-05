package kh.spring.chazazo.coupon.service;

import java.util.List;

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
	
}
