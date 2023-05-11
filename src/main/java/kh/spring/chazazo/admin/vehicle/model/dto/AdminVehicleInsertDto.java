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
public class AdminVehicleInsertDto {
	
	private String model;
	private String maker;
	private int cartypeIdx;
	private int fueltypeIdx;
	private int price;
	private int year;
	private int locationIdx;
	
}
