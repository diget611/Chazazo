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
public class AdminVehicleRespDto {
	
	private int idx;
	private String model;
	private int year;
	private int price;
	private String maker;
	private String fuel;
	private String type;
	private String location;
	
}
