package kh.spring.chazazo.admin.coupon.model.service;

import java.util.List;

import kh.spring.chazazo.admin.coupon.model.dto.AdminCouponInsertReqDto;
import kh.spring.chazazo.admin.coupon.model.dto.AdminCouponManageRespDto;
import kh.spring.chazazo.admin.coupon.model.dto.AdminCouponUpdateReqDto;
import kh.spring.chazazo.common.Pagination;

public interface AdminCouponService {
	
	public int couponCount();
	public List<AdminCouponManageRespDto> selectCouponList(Pagination pagination);
	public AdminCouponManageRespDto selectCouponOne(String idx);
	public int insertCoupon(AdminCouponInsertReqDto data);
	public int updateCoupon(AdminCouponUpdateReqDto data);
	public int deleteCoupon(int idx);
	
}
