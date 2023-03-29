package kh.spring.chazazo.vehicle.model.dto;

import java.util.List;

import org.springframework.stereotype.Component;

import kh.spring.chazazo.location.model.dto.LocationReqDto;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Component
@Data
public class VehicleReqDto {
	// 차량 검색 결과용 dto
	
	public int idx;
	public String model;
	public int year;
	public int price;
	public String image;
	public String maker;
	public int locationIdx;
	public int fueltypeIdx;
	public int cartypeIdx;

}
