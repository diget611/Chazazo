package kh.spring.chazazo.couponmanage.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class CouponManageReqDto {
	
	private String couponCode;
	private int idx;
	private int rate;
	private int period;
	private String name;
	private int state;
	private String memberIdx;
	
	
}
