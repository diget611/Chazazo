package kh.spring.chazazo.reservation.model.dto;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.ToString;

@Component
@Data
@ToString
public class ReservationRespDto {
	
	private int idx;
	private Date reservStart;
	private Date reservEnd;
	private int reservState;
	private int isMember;
	private int insuranceIdx;
	private int vehicleIdx;
	private int memberIdx;
	private int rentLocation;
	private int returnLocation;
	private int couponIdx;

}
