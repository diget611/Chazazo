package kh.spring.chazazo.admin.coupon.model.dto;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Component
@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class AdminCouponManageRespDto {
	
	private int idx;
	private int rate;
	private int period;
	private String name;
	private int status;
	private String couponCode;
	
}
