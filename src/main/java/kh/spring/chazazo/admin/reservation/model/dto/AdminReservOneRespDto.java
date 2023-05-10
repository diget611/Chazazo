package kh.spring.chazazo.admin.reservation.model.dto;

import java.sql.Date;

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
public class AdminReservOneRespDto {
	
	private int idx;
	private int state;
	private int isMember;
	private int finalPrice;
	private Date paidTime;
	private Date startDate;
	private Date endDate;
	private Date CancelDate;
	private String username;
	private String model;
	private String insurance;
	private String coupon;
	private String rentLocation;
	private String returnLocation;
	
}
