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
	private int idx;

	private String daycount;
	private String rentPrice;
	private String addIns;
	private String expIns;
	private int caridx;
	private String insurance;
	
	private int memberIdx;
	private String name;
	private int birth;
	private int phone;
	private String mail;
	private String license;
	private int finalprice;
	private String paidtime;
	
	private int rentLocation;
	private int returnLocation;
	@JsonFormat(pattern="yyyy/MM/dd")
	private Date startDate;
	@JsonFormat(pattern="yyyy/MM/dd")
	private Date endDate;
}
