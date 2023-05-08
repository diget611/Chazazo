package kh.spring.chazazo.coupon.dto;

import java.util.Date;

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
	private int rate;
	private String name;
	private int status;
	private String couponCode;
}
