package kh.spring.chazazo.payment.model.dto;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;


@Component
@Data
public class PaymentReqDto {

	private int idx;
	private int state;
	private int isMember;
	private int memberIdx;
	private int vehicleIdx;
	private int insuranceIdx;
	private int couponIdx;
	private String finalPrice;
	private Date paidTime;
	private Date startDate;
	private Date endDate;
	private Date cancelDate;
	private int rentLocation;
	private int returnLocation;
	
}
