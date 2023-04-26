package kh.spring.chazazo.location.model.dto;

import java.util.List;

import org.springframework.stereotype.Component;

import kh.spring.chazazo.vehicle.model.dto.VehicleReqDto;
import lombok.Data;

@Component
@Data
public class LocationRespDto {

	private int idx;
	private String name;
	private double latitude;
	private double longitude;
	private String phoneNumber;
	private String businessHours;
	private String address;
	
	
}
