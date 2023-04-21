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
public class PaymentInfoDto {
	
	

	
	private int idx;
	private int memberIdx;
	private int finalprice;
	
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date paidtime;
	
	private int rentLocation;
	private int returnLocation;
	@JsonFormat(pattern="yyyy/MM/dd")
	private Date startDate;
	@JsonFormat(pattern="yyyy/MM/dd")
	private Date endDate;
	
	
	private int state;
	private int isMember;
	private int vehicleIdx;
	private int insuranceIdx;
	private int couponIdx;
	private Date cancelDate;
	
	private String model;
	private int price;
	private String image;
	private String maker;
	private int locationIdx;
	private int fueltypeIdx;
	private int cartypeIdx;
	private String name;
	private double latitude;
	private double longitude;
	private String phoneNumber;
	private String businessHours;
	private String address;
	private String fuelname;
	private String typename;
	private String[] typeList;
	private String[] fuelList;
	

	
	
}
