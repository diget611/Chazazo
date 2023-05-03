package kh.spring.chazazo.location.model.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data

public class LocationReqDto {
	
	private int idx;
	private String name;
	private double latitude;
	private double longitude;
	private String phoneNumber;
	private String businessHours;
	private String address;
	
	private int locationIdx;
	private int memberIdx;
	
	
}
