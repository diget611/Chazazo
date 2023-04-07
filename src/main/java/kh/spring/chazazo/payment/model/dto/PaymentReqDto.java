package kh.spring.chazazo.payment.model.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class PaymentReqDto {
	private int daycount;
	private int rentPrice;
	private int addIns;
	private int expIns;
	
}
