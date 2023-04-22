package kh.spring.chazazo.vehicle.model.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class VehicleInfoDto {
	
	private int idx;
	private String model;
	private int year;
	private int price;
	private String image;
	private String maker;
	private int locationIdx;
	private int fueltypeIdx;
	private int cartypeIdx;
	private String name;
	private double latitude;
	private double longitude;
	private String phoneNumber;
	private String businessHours;
	private String address;
	private String fuelname;
	private String typename;
	private String[] typeList;
	private String[] fuelList;
	private String keyword;
	
}
