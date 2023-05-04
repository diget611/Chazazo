package kh.spring.chazazo.couponmanage.dto;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data

public class CouponManageRespDto {
	
	private String couponCode;
	private int idx;
	private int rate;
	private int period;
	private String name;
	private int status;
	
	private Date startDate;
	private Date expireDate;
}
