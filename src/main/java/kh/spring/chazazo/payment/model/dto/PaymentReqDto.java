package kh.spring.chazazo.payment.model.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class PaymentReqDto {
	private String daycount;
	private String rentPrice;
	private String addIns;
	private String expIns;
	
}
