package kh.spring.chazazo.coupon.dto;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data

public class CouponReqDto {
	
	private int idx;
	private Date startDate;
	private Date expireDate;
	private int couponIdx;
	private int memberIdx;
	private String couponCode;
	private String username;

}
