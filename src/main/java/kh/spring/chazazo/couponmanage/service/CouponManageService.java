package kh.spring.chazazo.couponmanage.service;

import java.util.List;

import kh.spring.chazazo.couponmanage.dto.CouponManageReqDto;
import kh.spring.chazazo.couponmanage.dto.CouponManageRespDto;

public interface CouponManageService {

	public List<CouponManageRespDto> selectMycoupon(String username);
	public int insertCoupon(CouponManageReqDto dto);
	public int countCouponCode(String couponCode);
}
