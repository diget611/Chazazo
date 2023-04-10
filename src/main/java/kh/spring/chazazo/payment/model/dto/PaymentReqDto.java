package kh.spring.chazazo.payment.model.dto;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class PaymentReqDto {
	private String daycount;
	private String rentPrice;
	private String addIns;
	private String expIns;
	private Date startDate;
	private Date endDate;
}
