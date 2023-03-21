package kh.spring.chazazo.vehicle.model.dto;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Component
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class VehicleReqDto {
	// 차량 검색 결과용 dto
	
	public int idx;
	public String model;
	public int year;
	public int price;
	public String image;
	public String maker;
	
	
}
