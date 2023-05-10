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
public class AdminCouponInsertReqDto {

	private double rate;
	private int period;
	private String name;
	private String couponCode;
	
	public void setCouponCode(String couponCode) {
		this.couponCode = couponCode;
	}
	
}
