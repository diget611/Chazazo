package kh.spring.chazazo.admin.model.dto;

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
public class AdminCouponUpdateReqDto {
	
	private int idx;
	private double rate;
	private int period;
	private String name;
	
}
