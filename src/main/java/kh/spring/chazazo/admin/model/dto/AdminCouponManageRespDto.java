package kh.spring.chazazo.admin.model.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class AdminCouponManageRespDto {
	
	private int idx;
	private int rate;
	private int period;
	private String name;
	
}
