package kh.spring.chazazo.admin.vehicle.model.dto;

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
public class AdminVehicleUpdateReqDto {
	
	private int idx;
	private int price;
	private int locationIdx;
	
}
