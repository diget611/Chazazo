package kh.spring.chazazo.couponmanage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.chazazo.couponmanage.dao.CouponManageDao;
import kh.spring.chazazo.couponmanage.dto.CouponManageReqDto;
import kh.spring.chazazo.couponmanage.dto.CouponManageRespDto;

@Service
public class CouponManageServiceImpl implements CouponManageService {

	@Autowired
	private CouponManageDao dao;
	
	@Override
	public List<CouponManageRespDto> selectMycoupon(String username) {
		return dao.selectMycoupon(username);
	}

	@Override
	public int insertCoupon(CouponManageReqDto dto) {
		return dao.insertCoupon(dto);
	}

	@Override
	public int countCouponCode(String couponCode) {
		return dao.countCouponCode(couponCode);
	}

}
