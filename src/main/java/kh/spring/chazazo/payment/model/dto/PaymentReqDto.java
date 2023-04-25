package kh.spring.chazazo.payment.model.dto;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;


@Component
@Data
public class PaymentReqDto {
	
	private int ismember;
	private int memberIdx;
	private int finalprice;
	private String phoneNumber;
	private String email;
	private String license;
	private int birth;
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date paidtime;
	
	private int rentLocation;
	private int returnLocation;
	@JsonFormat(pattern="yyyy/MM/dd")
	private Date startDate;
	@JsonFormat(pattern="yyyy/MM/dd")
	private Date endDate;
	private int state;
	
	private int vehicleIdx;
	private int insuranceIdx;
	private int couponIdx;
	private Date cancelDate;
	
	private String model;
	private String name;
	
	private String rentLocationName;
	private String returnLocationName;
	private String vehicleModel;
	
	private int paymentIdx;
	private int idx;
	
	
}
