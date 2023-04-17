package kh.spring.chazazo.reservation.model.dto;


import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@AllArgsConstructor
@NoArgsConstructor
@Data
public class ReservationReqDto {
	
	/*
	 *  IDX NUMBER CONSTRAINT RESERVATION_IDX_PK PRIMARY KEY NOT NULL 
     , RESERV_START DATE DEFAULT SYSTIMESTAMP NOT NULL
     , RESERV_END DATE NOT NULL
     , RESERV_STATE NUMBER DEFAULT 1 CONSTRAINT RESERVATION_STATE_CK CHECK(RESERV_STATE IN (0, 1, 2)) NOT NULL
     , IS_MEMBER NUMBER DEFAULT 1 CONSTRAINT RESERVATION_IS_MEMBER_CK CHECK(IS_MEMBER IN (0, 1)) NOT NULL
     , INSURANCE_IDX NUMBER CONSTRAINT RESERVATION_INSURANCE_FK REFERENCES INSURANCE(IDX) NOT NULL
     , VEHICLE_IDX NUMBER CONSTRAINT RESERVATION_VEHICLE_FK REFERENCES VEHICLE(IDX) NOT NULL 
     , MEMBER_IDX NUMBER CONSTRAINT RESERVATION_MEMBER_FK REFERENCES MEMBER(IDX)
     , RENT_LOCATION NUMBER CONSTRAINT RESERVATION_RENT_LOCATION_FK REFERENCES LOCATION(IDX) NOT NULL
     , RETURN_LOCATION NUMBER CONSTRAINT RESERVATION_RETURN_LOCATION_FK REFERENCES LOCATION(IDX) NOT NULL
     , COUPON_IDX NUMBER CONSTRAINT RESERVATION_COUPON_FK REFERENCES COUPON(IDX)
	 * */
	
	
	private int idx;
	private Date reserv_start;
	private Date reserv_end;
	private int reserv_state;
	private int is_member;
	private int insurance_idx;
	private int vehicle_idx;
	private int rent_location;
	private int member_idx;
	private int return_location;
	private int coupon_idx;
	private String name;
	private int birth;
	private int phone;
	private String mail;
	private String startDate;
	private String endDate;

	
	
	
	
	

}
