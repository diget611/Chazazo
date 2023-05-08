package kh.spring.chazazo.coupon.service;

import java.util.List;

import kh.spring.chazazo.coupon.dto.CouponReqDto;

public interface CouponService {
	// 쿠폰 테이블 자체로 컨트롤러는 필요 없고 멤버나 결제 컨트롤러 같은데 임포트해서 쓸 듯

	public List<CouponReqDto> selectCoupon(int idx);

}
