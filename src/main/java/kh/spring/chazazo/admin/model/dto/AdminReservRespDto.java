package kh.spring.chazazo.admin.model.dto;

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
public class AdminReservRespDto {
	
	private int idx;
	private int isMember;
	private int state;
	private int finalPrice;
	private Date paidTime;
	private Date cancelDate;
	private Date startDate;
	private Date endDate;
	
}
